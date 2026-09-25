---
title: Autonomous management paradigms
updated: 2026-09-23 14:22
---

Autonomous management of networks and systems is a broad research area with a long history. Several paradigms for autonomous management have been proposed over the years, including policy-based management [1], autonomic computing [2], self-organizing networks [3], intent-based management [4], zero-touch management [5], and cognitive management [6]. While these paradigms share a common vision, they differ in the approach and degree of autonomy they target. For example, policy-based management automates management tasks given pre-specified management policies, whereas cognitive management autonomously takes actions to achieve higher-level management objectives. Hence, policy-based management targets a lower level of autonomy than cognitive management. However, policy-based management may be used as a building block in cognitive management, i.e., the paradigms are complementary and overlapping. For example, management policies may govern autonomic or cognitive control loops, which in turn may be implemented through lower-level policies, as detailed below.

### Policy-based management

Policy-based management specifies the desired network behavior through policies that are defined by operators and enforced automatically. A policy typically consists of a set of rules that specify management actions to apply when system events occur. A limitation of policy-based management is that the policies must be specified in advance, which requires operators to anticipate every relevant event and the appropriate response to it. Hence, policy-based management on its own is a paradigm for *automation* of management tasks rather *autonomous* management.

### Intent-based management

Intent-based management concerns the interface between operator and system. An intent specifies what outcome is desired, rather than how to achieve it. The system translates the intent into configurations or policies for achieving it. An intent is therefore a higher-level concept than a policy. As a consequence, intent-based management is a form of autonomous management (in contrast to policy-based management). However, a limitation of intent-based management is that it does not prescribe a mechanism for translating intents into actions. In other words, intent-based management specifies the interface of an autonomous management system, but not its architecture.

### Autonomic management

Autonomic management extends the idea of policy-based management and intent-based management to provide a complete architecture for autonomous management. It is inspired by the autonomic nervous system (i.e., the reflexes of a human body), which automatically regulates internal body processes like heart rate and blood pressure. The central abstraction of autonomic management is the MAPE-K loop, which is executed by an autonomic manager that controls a managed element, e.g., a server or a network device. The loop has four phases: (i) the manager monitors the element through sensors; (ii) analyzes the collected data to detect deviations from the objectives; (iii) plans actions to correct these deviations; (iv) and executes the actions through effectors. A limitation of autonomic management is that it is mostly suited for autonomous management systems where all control policies and feedback loops can be preprogrammed (similar to the autonomic nervous system), i.e., it does not explicitly define mechanisms for learning from experience and adapting to unforeseen circumstances and operating conditions.

### Cognitive management

Similar to autonomic management, cognitive management provides a complete architecture for autonomous management. Cognitive management is inspired by the human brain and unlike autonomic management, it is centered around cognitive abilities such as learning and reasoning. As a consequence, cognitive management can adapt to unforeseen situations and learn from experience, i.e., it does not require all control policies and feedback loops to be preprogrammed. A cognitive management system typically maintains models of the managed system, uses feedback to update the model, and leverages the model to select or adapt management actions over time. 

### Self-organizing networks

Self-organizing networks are a telecommunications-specific paradigm for automating network-management functions, particularly self-configuration, self-optimization, and self-healing. Self-organizing network functions may, for example, configure new network elements, maintain neighbour relations, optimize mobility, load, coverage, or capacity, and respond to failures. Consequently, self-organizing networks do not define a single level of autonomy. It is best understood as a domain-specific realization of autonomous management paradigms. It is typically based on predefined control policies and feedback loops, but can also be enhanced with cognitive learning and reasoning.

### Zero-touch management

Zero-touch management aims to automate the complete network and service management lifecycle with little or no human intervention. Zero-touch management emphasizes end-to-end coordination across management domains, technologies, and management layers. Unlike autonomic or cognitive management, zero-touch management does not prescribe a particular mechanism for making decisions. A zero-touch system may combine policies, intents, autonomic control, self-organizing network functions, and cognitive mechanisms.

### Summary

In summary, no single paradigm fully specifies all aspects required for autonomous management. Hence, an autonomous management system needs to combine concepts from several paradigms.

## References

[1] M. Sloman, "Policy driven management for distributed systems," Journal of Network and Systems Management, vol. 2, no. 4, pp. 333–360, 1994.

[2] J. O. Kephart and D. M. Chess, "The vision of autonomic computing," Computer, vol. 36, no. 1, pp. 41–50, 2003.

[3] C. Prehofer and C. Bettstetter, "Self-organization in communication networks: principles and design paradigms," IEEE Communications Magazine, vol. 43, no. 7, pp. 78–85, 2005.

[4] A. Clemm, L. Ciavaglia, L. Z. Granville, and J. Tantsura, "RFC 9315: Intent-based networking-concepts and definitions," RFC Editor, 2022.

[5] C. Grasso, R. Raftopoulos, and G. Schembra, "Smart Zero-Touch Management of UAV-Based Edge Network," IEEE Transactions on Network and Service Management, vol. 19, no. 4, pp. 4350–4368, 2022.

[6] Mahmoud, Qusay H., "Cognitive Networks: Towards Self-Aware Networks," John Wiley & Sons, 2007.

