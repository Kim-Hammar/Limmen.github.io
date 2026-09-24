---
title: Autonomous management paradigms
updated: 2026-09-23 14:22
---

Autonomous management of networks and systems is a broad research area with a long history. Several paradigms for autonomous management have been proposed over the years, including policy-based management [1], autonomic computing [2], self-organizing networks [3], intent-based management [4], zero-touch management [5], and cognitive management [6]. While all of these paradigm share a common vision of autonomous management, they differ in the approach and degree of autonomy they target.

### Policy-based management

Policy-based management specifies the desired network behavior through policies that are defined by operators and enforced automatically. A policy typically consists of a set of rules that specify management actions to apply when certain system events occur. A limitation of policy-based management is that the policies must be specified in advance, which requires operators to anticipate every relevant event and the appropriate response to it.

### Intent-based management

Intent-based management concerns the interface between operator and system. An intent specifies what outcome is desired, rather than how to achieve it. The system translates the intent into configurations or policies for achieving it. An intent is therefore a higher-level concept than a policy. A limitation of intent-based management is that it defines how objectives are specified but it does not prescribe a mechanism for translating intents into actions.

### Autonomic computing

Autonomic computing extends the idea of policy-based management to systems that manage themselves according to high-level management objectives. Its central abstraction is the MAPE-K loop, which is executed by an autonomic manager that controls a managed element, e.g., a server or a network device. The loop has four phases: (i) the manager monitors the element through sensors; (ii) analyzes the collected data to detect deviations from the objectives; (iii) plans actions to correct these deviations; (iv) and executes the actions through effectors.  A limitation of autonomic computing is that it defines an architecture but not the methods for planning and learning.

### Self-organizing networks

Self-organizing networks apply autonomous management to communication networks through functions such as self-configuration and self-optimization. Developed mainly for radio networks, these functions automate configuration and management based on network measurements and predefined objectives. A key limitation of this approach is that it is centered on preconfigured autonomous functions for radio networks, rather than providing a general framework for autonomous management. In particular, it specifies how management functions are automated, while leaving the decision-making and learning process unspecified.

### Zero-touch management

Zero-touch management aims to automate the full lifecycle of network and service management with minimal or no human intervention. It typically combines closed-loop automation and data-driven decision mechanisms to detect changes in the system, determine appropriate management actions, and execute them automatically. Compared with autonomic computing, zero-touch management places stronger emphasis on end-to-end orchestration and on coordinating management functions across heterogeneous network components and services. A limitation of zero-touch management is that while it defines how management functions should be integrated and automated, it leaves open how decisions are derived and how the system should learn from experience.

### Cognitive management

Cognitive management extends autonomous management with mechanisms for learning from observations and past experience. A cognitive management system maintains models of the managed system, uses feedback to update the model, and leverages the model to select or adapt management actions over time. In contrast to approaches based on predefined rules, the cognitive management architecture involves adaptation and learning of management functions as operating conditions change. A limitation of cognitive management is that it is a broad paradigm rather than a specific architecture or learning method.

### Summary

In summary, no single paradigm fully specifies all aspects required for autonomous management. Hence, an autonomous management system needs to combine concepts from several paradigms:

- Intent-based management addresses how management objectives are specified by expressing desired outcomes and constraints at a high level.

- Policy-based management specifies how operator-defined rules are represented and enforced, while self-organizing networks apply predefined management functions to adapt network behavior automatically.

- Autonomic computing and zero-touch management address how closed-loop management is structured. 

- Cognitive management provides an architecture for learning management functions from data.

## References

[1] M. Sloman, "Policy driven management for distributed systems," Journal of Network and Systems Management, vol. 2, no. 4, pp. 333–360, 1994.

[2] J. O. Kephart and D. M. Chess, "The vision of autonomic computing," Computer, vol. 36, no. 1, pp. 41–50, 2003.

[3] C. Prehofer and C. Bettstetter, "Self-organization in communication networks: principles and design paradigms," IEEE Communications Magazine, vol. 43, no. 7, pp. 78–85, 2005.

[4] A. Clemm, L. Ciavaglia, L. Z. Granville, and J. Tantsura, "RFC 9315: Intent-based networking-concepts and definitions," RFC Editor, 2022.

[5] C. Grasso, R. Raftopoulos, and G. Schembra, "Smart Zero-Touch Management of UAV-Based Edge Network," IEEE Transactions on Network and Service Management, vol. 19, no. 4, pp. 4350–4368, 2022.

[6] Mahmoud, Qusay H., "Cognitive Networks: Towards Self-Aware Networks," John Wiley & Sons, 2007.

