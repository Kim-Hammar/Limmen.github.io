---
title: A brief history of autonomous network and systems management
updated: 2026-08-12 14:33
---

Autonomous management of networks and systems has been pursued for several decades, beginning with policy-based management in the 1990s [1] and evolving through a succession of paradigms, including autonomic management (e.g., [2]), self-organizing networks (e.g., [3]), intent-based management (e.g., [4]), and zero-touch management (e.g., [5]). Beyond these general paradigms, many architectures and frameworks for autonomous management have been proposed over the years. Examples include the MAPE-K architecture by IBM [6], the GANA architecture by ETSI [7], the Confucius framework by Meta [8], and the COMPA architecture by Ericsson [9].

From a methodological perspective, many of these frameworks builds on ideas from model-predictive control (see e.g., Borrelli et al. [10]), adaptive control (see e.g., Åström and Wittenmark [11]), and reinforcement learning (see e.g., Bertsekas [12]), all of which are well-developed research areas with a long history. However, these areas have traditionally focused on physical or simulated control systems, whereas autonomous management emphasizes networked computing systems. This distinction introduces new challenges because such systems exhibit properties that make them difficult to model with standard control-system assumptions, such as partial observability (due to limited monitoring coverage), non-stationarity (as operating conditions evolve over time), and discrete-time behavior (due to system metrics being sampled at fixed intervals). Moreover, these systems often have strict service requirements, which makes classical reinforcement learning methods impractical.


## References

[1] M. Sloman, "Policy driven management for distributed systems," Journal of Network and Systems Management, vol. 2, no. 4, pp. 333–360, 1994.

[2] J. O. Kephart and D. M. Chess, "The vision of autonomic computing," Computer, vol. 36, no. 1, pp. 41–50, 2003.

[3] C. Prehofer and C. Bettstetter, "Self-organization in communication networks: principles and design paradigms," IEEE Communications Magazine, vol. 43, no. 7, pp. 78–85, 2005.

[4] A. Clemm, L. Ciavaglia, L. Z. Granville, and J. Tantsura, "RFC 9315: Intent-based networking-concepts and definitions," RFC Editor, 2022.

[5] C. Grasso, R. Raftopoulos, and G. Schembra, "Smart Zero-Touch Management of UAV-Based Edge Network," IEEE Transactions on Network and Service Management, vol. 19, no. 4, pp. 4350–4368, 2022.

[6] IBM, "An Architectural Blueprint for Autonomic Computing," IBM, Tech. Rep., Jun. 2005.

[7] T. Ben Meriem, R. Chaparadza, B. Radier, S. Soulhi, J.-A. Lozano-López, and A. Prakash, "GANA—Generic Autonomic Networking Architecture: Reference Model for Autonomic Networking, Cognitive Networking and Self-Management of Networks and Services," European Telecommunications Standards Institute, ETSI White Paper no. 16, Oct. 2016.

[8] Z. Wang, S. Lin, G. Yan, S. Ghorbani, M. Yu, J. Zhou, N. Hu, L. Baruah, S. Peters, S. Kamath, J. Yang, and Y. Zhang, "Intent-Driven Network Management with Multi-Agent LLMs: The Confucius Framework," in Proceedings of the ACM SIGCOMM 2025 Conference, pp. 347–362, 2025.

[9] L. Angelin, H. Basilier, T. Cagenius, I. Mas, G. Rune, B. Varga, and E. Westerberg, "Architecture Evolution for Automation and Network Programmability," Ericsson Review, no. 3, pp. 2–10, Nov. 2014.

[10] F. Borrelli, A. Bemporad, and M. Morari, Predictive Control for Linear and Hybrid Systems, Cambridge University Press, 2017.

[11] K. J. Åström and B. Wittenmark, Adaptive Control, 2nd ed., Addison-Wesley, 1995.

[12] D. P. Bertsekas, Rollout, Policy Iteration, and Distributed Reinforcement Learning, Athena Scientific, 2021.