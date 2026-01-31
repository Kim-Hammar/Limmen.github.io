---
title: Digest of my PhD thesis
updated: 2026-01-31 19:09
---

Below is a short digest of my PhD thesis. The full thesis is available for download [here](https://kth.diva-portal.org/smash/record.jsf?dswid=7585&faces-redirect=true&language=en&searchType=SIMPLE&query=&af=%5B%5D&aq=%5B%5B%5D%5D&aq2=%5B%5B%5D%5D&aqe=%5B%5D&pid=diva2%3A1912164&noOfRows=50&sortOrder=author_sort_asc&sortOrder2=title_sort_asc&onlyFullText=false&sf=all).

## Abstract

Timely and effective incident response is key to managing the growing frequency of cyberattacks. However, identifying the right response actions for complex systems is a major technical challenge. Framing incident response as an automatic (optimal) control problem is a promising approach to address this challenge but introduces new challenges. Chief among them is bridging the gap between theoretical optimality and operational performance. Current response systems with theoretical guarantees have only been validated analytically or in simulation, leaving their practical utility unproven.

This thesis tackles the aforementioned challenges by developing a practical framework for optimal incident response. It encompasses two systems. First, it includes an emulation system that replicates key components of the target system. We use this system to gather measurements and logs, based on which we identify a game-theoretic model. Second, it includes a simulation system where game-theoretic response strategies are optimized through stochastic approximation to meet a given security objective. These strategies are then evaluated and refined in the emulation system to close the gap between theoretical and operational performance. We prove structural properties of optimal response strategies and derive efficient algorithms for computing them. This enables us to demonstrate optimal incident response against real network intrusions on an IT infrastructure.

## Introduction

Incident response refers to the coordinated actions taken to contain, mitigate, and recover from cyberattacks. Today, incident response is largely a manual process carried out by security operators. While this approach can be effective, it is often slow, labor-intensive, and requires significant skills. For example, a recent study reports that organizations take an average of 73 days to respond and recover from an incident. Reducing this delay requires better decision-support tools to assist operators during incident handling. Currently, the standard approach to assisting operators relies on *response playbooks*, which comprise predefined rules for handling specific incidents. However, playbooks still rely on security experts for configuration and are therefore difficult to keep aligned with evolving threats and system architectures. 

A promising solution to this limitation is to frame incident response as an optimal control problem, which enables the automatic computation of optimal responses based on system measurements. Such framing facilitates a rigorous treatment of incident response where trade-offs between different security objectives can be studied through mathematical models. Prior research demonstrates the advantages of this approach in analytical and simulated settings. However, its feasibility for operational use has yet to be proven.

Addressing this limitation is the purpose of this thesis. We do so from three directions: via mathematical modeling, via experimental evaluation, and via systems engineering. Our main contribution is a practical framework for *optimal incident response* in IT systems. This framework is grounded in engineering principles for self-adaptive systems and has a rich mathematical foundation, which we systematically develop throughout the thesis. It draws on the theories of stochastic approximation, control, causality, and games. We prove theoretically and experimentally that our framework is superior to present solutions on several instances of the incident response problem, including responses against intrusions in enterprise networks, Byzantine failures in distributed systems, and advanced persistent threats in cloud infrastructures. Our key experimental finding is that the most important factor for scalable and optimal incident response is to *exploit structure*, both structure in theoretical models (e.g., optimal substructure) and structure of the IT system (e.g., network topology). The former enables efficient computation of optimal responses and the latter is key to managing the complexity of IT systems.

In summary, this thesis makes the following contributions:

**1. Scalable algorithms for optimal incident response.**

We design and implement seven scalable algorithms for computing optimal response strategies, for which we prove convergence. They build on techniques from stochastic approximation, game theory, reinforcement learning, linear and dynamic programming, and causality. We demonstrate that these algorithms outperform state-of-the-art methods in the scenarios we study.


**2. Mathematical formulations of incident response.**

We introduce six novel mathematical models of incident response. With these models, we show that a) optimal stopping is a suitable framework for deriving the optimal times to take response actions; b) partially observed stochastic games effectively model the incident response use case; and c) the Berk-Nash equilibrium allows capturing model misspecification in security games.


**3. Proving structural properties of response strategies.**
We develop mathematical tools for incident response and prove structural properties of optimal response strategies, such as decomposability and threshold structure. These results enable scalable computation and efficient implementation of optimal strategies in operational systems.


**4. General framework for optimal incident response.**

We design a general framework for optimal incident response; see Fig. 1. Additionally, we present the **C**yber **S**ecurity **L**earning **E**nvironment (CSLE), an open-source platform that implements our framework. Unlike previous simulation-based solutions, our framework provides practical insights beyond a specific response scenario. The source-code is available [here](https://github.com/Kim-Hammar/csle).

![Fig. 1](/assets/thesis_digest_1.png "Architectural overview of our framework for automated, optimal, and adaptive incident response in IT systems.")

*Fig. 1: Architectural overview of our framework for automated, optimal, and adaptive incident response in IT systems.*

## The Incident Response Problem

Incident response involves selecting a sequence of actions that restores a networked system to a secure and operational state after a cyberattack. When selecting these actions, a key challenge is that the information about the attack is often limited to partial indicators of compromise, such as logs and alerts. Examples of response actions include network flow control, patching vulnerabilities, and updating access controls.

Figure~2 illustrates the phases of incident response. Following the attack are detection and response time intervals, which represent the time to detect the attack and form a response, respectively. These phases are followed by a *recovery time* interval T, during which response actions are deployed. The objective is to keep this interval as short as possible to limit the cost of the incident. For example, in the event of a ransomware attack, a delay of a few minutes in containing the attack may allow the malware to encrypt systems or spread laterally.

![Fig. 2](/assets/thesis_digest_2.png "Phases and performance metrics of the incident response problem.")

*Fig. 2: Phases and performance metrics of the incident response problem.*

### Formalizing the Incident Response Problem

Before presenting our framework, we start by formulating incident response as a game-theoretic problem. To accomplish this formulation, we need a vocabulary in which to talk about the systems and actors involved. To this end, we refer to the operator of the target system as the *defender*, and we refer to an entity aiming to attack the system as the *attacker. Both interact with the system by taking *actions* (e.g., attacks and responses), which affect the system's *state* (e.g., the system's security and service status). When selecting these actions, the defender and the attacker use measurements from the system (e.g., log files and security alerts), which we refer to as *observations*. A function that maps a sequence of observations to an action is called a *strategy*, and a strategy that is most advantageous according to some objective is *optimal*.

Mathematically, the response problem can be stated as

$$
\sup_{\pi_{D} \in \Pi_{D}}\inf_{\pi_{A} \in \Pi_{A}} \text{ } \mathbb{E}_{\pi_{D}, \pi_{A}}[J(\pi_{D}, \pi_{A}) \mid \mathbf{b}_1], \\
\text{subject to }\text{ } s_1 \sim \mathbf{b}_1, \\
s_{t+1} \sim f(\cdot \mid s_{t}, a_t^{(D)}, a_t^{(A)}), \text{ } \forall t \geq 1,\\
o_t \sim z(\cdot \mid s_t), \text{ } \forall t \geq 2,\\
\mathbf{b}_{t+1} = B(\mathbf{b}_{t}, a_t^{(D)}, o_{t+1},\pi_{A}), \text{ } \forall t \geq 1, \\
a_t^{(D)} \sim \pi_{D}(\cdot \mid \mathbf{b}_t),  \text{ } \forall t \geq 1, \\
a_t^{(A)} \sim \pi_{A}(\cdot \mid \mathbf{b}_t, s_t), \text{ } \forall t \geq 1,
$$

where $s_t$ is the game state at time $t$, which is hidden from the defender; $o_t$ is the observation; $a^{k}_t$ is the action of player $k$; $\pi_{k}$ is the strategy of player $k$; $\mathbf{b}_t$ is the defender's belief state, i.e., a probability distribution over game states; $B$ is a belief estimator; $z$ is the observation function; $f$ is the transition function; and $J$ is an objective functional that the defender tries to maximize and the attacker tries to minimize.