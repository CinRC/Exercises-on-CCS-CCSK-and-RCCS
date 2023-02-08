---
title: "Exercise Response - 2"
---

# Exercise Response - 2


## Important Definitions
- $\lesssim$ is the symbol for simulation 
- $P \lesssim Q$ implies that if $P \to^{\alpha}P'$ then $\exists Q'$ such that $Q \to^{\alpha} Q'$ and $P'\mathcal{R}Q'$
- $P \lesssim Q$ means $Q$ simulates $P$, intuitively that $Q$ can do _everything_ $P$ can do
- $\sim$ is the symbol for bisimulation
- $P \sim Q$ implies that $P \lesssim Q$ and $Q \lesssim P$
- For all intents and purposes (from an outside perspective), if $P \sim Q$, then $P$ and $Q$ are identical


## Knowledge Test

### 1. Prove that the empty relation is a bisimulation


For $\empty \sim \empty$ to be a bisimulation, it must be true that for all $(P, Q) \in \empty$, there must be $P', \alpha$ such that $P \to^{\alpha} P'$, and $Q', \alpha$ such that $Q \to^{\alpha} Q'$. Because $P,Q \notin \empty$, there is actually nothing to prove. 

### 2. Prove that the identity relation id ($P$ id $P$ for all $P$) is a bisimulation.

Assume that we retain the identities of $P$, but create two copies: $R, S$. If there exists $Q' \in R$ such that $Q \to^{\mathcal{U}}Q'$, then it stands that there also exists $Q' \in S$ such that $Q \to^{\mathcal{U}}Q'$. Because these two processes have the same identity, then $Q' \in R$ is also a bisimulation of $Q' \in S$.

Now if we add any arbitrary attribute (state? transition?) $Z$ to $P$, and thus both $R$ and $S$, then it we can repeat the logic above to prove $R \cup Z \sim S \cup Z$.

Old explanation:

So I can understand this better, I'll rewrite this as 
* Prove that $P \sim P$, $\forall P$

To prove this, we can simply refer to the definition of bisimilarity, and note that it is innately reflexive in definition, such that $P \sim P$. Therefore, For all $P,Q$, if $P \sim Q$, then $Q \sim P$. Thus, $P \sim P$ for all $P$.

### 3. Prove that $a|a$ and $a.a$ are bisimilar


Assume that we act invoke CCS's act rule on both processes. By definition, if $a|a \to^{a} X$, and $a.a \to^{a} Y$, $a|a$ and $a.a$ are bisimilar if $X = Y$ and $X \sim Y$.

In this case, $X = a|0$ which can be reduced to $a$, and $Y = 0$, so $X=Y$. Repeating this step on $X$ and $Y$ will yield the same results.


## Sources and Materials

- https://homes.cs.washington.edu/~djg/msr_russia2012/sangiorgi.pdf
- http://pauillac.inria.fr/~leifer/teaching/mpri-concurrency-2005/c4/cours.pdf
