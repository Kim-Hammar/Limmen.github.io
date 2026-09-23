---
title: Autonomous management paradigms
updated: 2026-09-23 14:22
---

Autonomous management of networks and systems is a broad research area with a long history. Several paradigms for autonomous management have been proposed over the years, including policy-based management [1], autonomic computing [2], self-organizing networks [3], intent-based management [4], zero-touch management [5], and cognitive management [6]. While all of these paradigm share a common vision of autonomous management, they differ in the degree and scope of autonomy they target and the mechanisms to achieve it.

### Policy-based management

Policy-based management specifies the desired network behavior through policies that are defined by operators and enforced automatically. It separates the specification of policies from their enforcement. A policy typically consists of a set of rules that specify management actions to apply when certain system events occur. For example, a policy could be to start a service replica when the number of active replicas is below a threshold. A limitation of policy-based management is that the policies must be specified in advance, which requires operators to anticipate every relevant event and the appropriate response to it.

### Intent-based management

Intent-based management concerns the interface between operator and system. An intent specifies what outcome is desired, rather than how to achieve it. The system translates the intent into configurations or policies for achieving it. An intent is therefore a more abstract objective than a policy. A limitation of intent-based management is that it defines how objectives are specified but it does not prescribe an architecture or a mechanism for translating intents into actions and verifying that they are satisfied.

### Autonomic computing

Autonomic computing extends the idea of policy-based management to systems that manage themselves according to high-level management objectives. Its central abstraction is the MAPE-K loop, which is executed by an autonomic manager that controls a managed element, e.g., a server or a network device. The loop has four phases: (i) the manager monitors the element through sensors; (ii) analyzes the collected data to detect deviations from the objectives; (iii) plans actions to correct these deviations; (iv) and executes the actions through effectors.  A limitation of autonomic computing is that it defines an architecture but not the methods for analysis and planning. Moreover, the MAPE-K loop is designed to compute actions from given knowledge, not to acquire that knowledge from experience, i.e., it is not an explicit learning-based architecture.

### Self-organizing networks

Self-organizing networks apply autonomous management to communication networks through functions such as self-configuration and self-optimization. Developed mainly for radio networks, these functions automate configuration, parameter optimization, and fault handling based on network measurements and predefined objectives. A key limitation of this approach is that it is centered on preconfigured autonomous functions for radio networks, rather than providing a general framework for autonomous management. In particular, it specifies how autonomous management functions are structured and automated, while leaving the decision-making process and mechanisms for learning from experience unspecified.

### Zero-touch management

Zero-touch management aims to automate the full lifecycle of network and service management with minimal or no human intervention. It typically combines closed-loop automation and data-driven decision mechanisms to detect changes in the system, determine appropriate management actions, and execute them automatically. Compared with autonomic computing, zero-touch management places stronger emphasis on end-to-end orchestration and on coordinating management functions across heterogeneous network components and services. A limitation of zero-touch management is that it is primarily an architectural and operational vision rather than a specific decision-making method. It defines how management functions should be integrated and automated, but leaves open how decisions are derived and how the system should learn from experience.

### Cognitive management

Cognitive management extends autonomous management with mechanisms for learning from observations and past experience. A cognitive management system maintains models of the managed system and its environment, uses data and feedback to update those models, and applies them to select or adapt management actions over time. In contrast to approaches based primarily on predefined rules, cognitive management can therefore improve its decision-making as operating conditions change and new situations are encountered.

A limitation of cognitive management is that it is a broad paradigm rather than a specific architecture or learning method. It does not prescribe how knowledge should be represented, how learning should be performed, or how learned decisions should be constrained and validated before being applied to the managed system.

### Summary

In summary, no single paradigm fully specifies all aspects required of an autonomous management system. Hence, a complete autonomous management system will generally combine concepts from several paradigms rather than adhering to any one of them exclusively:

- Intent-based management addresses how management objectives are specified by expressing desired outcomes and constraints at a high level.

- Policy-based management specifies how operator-defined rules are represented and enforced, while self-organizing networks apply predefined control and optimization functions to adapt network behavior automatically.

- Autonomic computing and zero-touch management address how closed-loop management is structured. Autonomic computing focuses on the architecture of an autonomic manager and its interaction with a managed element, whereas zero-touch management extends closed-loop automation toward end-to-end services spanning multiple technologies and administrative domains.

- Cognitive management addresses how management knowledge and decision rules can be learned from experience.

## References

[1] M. Sloman, "Policy driven management for distributed systems," Journal of Network and Systems Management, vol. 2, no. 4, pp. 333–360, 1994.

[2] J. O. Kephart and D. M. Chess, "The vision of autonomic computing," Computer, vol. 36, no. 1, pp. 41–50, 2003.

[3] C. Prehofer and C. Bettstetter, "Self-organization in communication networks: principles and design paradigms," IEEE Communications Magazine, vol. 43, no. 7, pp. 78–85, 2005.

[4] A. Clemm, L. Ciavaglia, L. Z. Granville, and J. Tantsura, "RFC 9315: Intent-based networking-concepts and definitions," RFC Editor, 2022.

[5] C. Grasso, R. Raftopoulos, and G. Schembra, "Smart Zero-Touch Management of UAV-Based Edge Network," IEEE Transactions on Network and Service Management, vol. 19, no. 4, pp. 4350–4368, 2022.

[6] Mahmoud, Qusay H., "Cognitive Networks: Towards Self-Aware Networks," John Wiley \& Sons, 2007.

