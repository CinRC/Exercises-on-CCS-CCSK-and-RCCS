---
title: "Exercises - 3"
---

# Forward-Only CCS

A binary relation $\mathcal{R}$ on CCS processes is a _simulation_ if for all $P$, $Q$ such that $P \mathcal{R} Q$^[Which is a notation for "$P$ and $Q$ are in the relationship $\mathcal{R}$", or "$(P, Q) \in \mathcal{R}$".] and for every $\alpha$, $P'$ such that $P \to^{\alpha} P'$, there exists $Q'$ such that  $Q \to^{\alpha} Q'$ and $P' \mathcal{R} Q'$.
It is a _bisimulation_ if furthermore for every $\alpha$, $Q'$ such that $Q \to^{\alpha} Q'$, there exists $P'$ such that  $P \to^{\alpha} P'$ and $P' \mathcal{R} Q'$.

Please not that the $\alpha$ on the label of the transitions _needs to be the same_: intuitively, this means "if $P$ can do $\alpha$, then $Q$ also can do it, and they are still in this relation".
The *bi*simulation part of the definition stresses that we should not worry about "who is leading the game", i.e. if it is $Q$ that should match what $P$ is doing, or the opposite.

#. Prove that the empty relation is a bisimulation.
#. Prove that the identity relation $\textrm{id}$ ($P \textrm{id} P$ for all $P$) is a bisimulation.
<!--
#. Prove that any bisimulation $\mathcal{R}$ will be such that $(P \mid Q) \mathcal{R} R$ iff $(Q \mid P) \mathcal{R} R$.^[And once you proved it, wonder if that contradicts the fact that you just proved that the identity was a bisimulation.]
-->

One generally writes that "$P$ and $Q$ _are_ bisimilar" if there exists a bisimulation $\mathcal{R}$ such that $P \mathcal{R} Q$.

#. Prove that $a | a$ and $a.a$ are bisimilar.
#. Prove that $b | a$ and $a.b$ are _not_ bisimilar.
#. Prove that $a + a$ and $a$ are bisimilar.
#. Prove that $a + b$ and $a | b$ are _not_ bisimilar.
#. Prove that $a.b + b.a$ and $a | b$ are bisimilar.
#. Prove that for any $P$ and $Q$, $P | Q$ and $Q | P$ are bisimilar.
#. Prove that for any $P$, $P + 0$  and $P$ are bisimilar.

The following is inspired from [this sheet](http://didattica.cs.unicam.it/old/lib/exe/fetch.php?media=didattica:magistrale:rtpsv:ay_1617:ex_and_solutions_bisim_hml_weak_fixpoint.pdf).
For each of the following processes decide whether they are bisimilar and, if not, justify why not:

#. $b.a + b$ and $b.(a + b)$
#. $a.(b.c + b.d )$ and $a.b.c + a.b.d$
#. $(a | b ) + c.a$ and $a | (b + c )$

Last but not least, check whenever $2p.big.collect + 1p.1p.big.collect + 1p.little.collect$ and $2p.big.collect + 1p.(1p.big.collect + little.collect)$ are bisimilar.

# CCSK

Writing $⇝$ the backward transition, a "forward-reverse simulation" [@Lanese2021] is a relation $\mathcal{R}$ on CCSK terms such that whenever $X \mathcal{R} Y$, 

- $X$ and $Y$ have the same set of keys,
- for all $X'$, $\alpha$, $m$ if $X \to^{\alpha[m]} X'$, then there exists $Y'$ such that $Y \to^{\alpha[m]} Y'$ and $X' \mathcal{R} Y'$,
- for all $X'$, $\alpha$, $m$ if $X ⇝^{\alpha[m]} X'$, then there exists $Y'$ such that $Y ⇝^{\alpha[m]} Y'$ and $X' \mathcal{R} Y'$.

From there, the forward-reverse *bi*simulation is defined as usual.

We similarly write that $X$ and $Y$ _are_ bisimilar if there exists a forward-reverse bisimulation between them.

#. Prove that $a[k] + b$ and $a[k].b$ are _not_ bisimilar.
#. Prove that $a[k] . (b + c)$ and $a[k].b + c$ are _not_ bisimilar.
#. Prove that $a[k] | b[k']$ and $a[k].b[k']$ are _not_ bisimilar.
#. Decide whenever $(a.a) | b$ and $(a | a) | b$ are bisimilar. 
#. Decide whenever $a.(b + b)$ and $(a.b) + (a.b)$ are bisimilar.
#. Check whenever $2p.big.collect + 1p.1p.big.collect + 1p.little.collect$ and $2p.big.collect + 1p.(1p.big.collect + little.collect)$ (this time, seen as reversible processes) are bisimilar.

# Discussion

Observe that forcing both terms to have _exactly_ the same keys is not really meaningful: it seems strange to decide that $a[k] | \bar{a}[k]$ and $a[k'] | \bar{a}[k']$, for $k \neq k'$, are not bisimilar.
Two different solutions to that issue have been explored:

- One can either add a rule to rename "bound" keys, e.g. keys that occur in complementary names [@Lanese2021], so that $a[k] | \bar{a}[k]$ and $a[k'] | \bar{a}[k']$ would be considered to be "the same term" (up to renaming, of course),
- One can change the definition of bisimulation for reversible calculus, so that only a bijection (and not the identity) between the keys is needed [@Aubert2020b].

The second solution let e.g. terms like $a[k]$ and $a[k']$ be bisimilar while the first one won't let them.
However, for that second solution, some care is needed so that the bijection is not "changed overnight": you can try to see with $(a | (b+c))+(a | b)+((a+c) | b)$ and $(a | (b + c)) + ((a + c) | b)$ that they would be bisimilar if the keys can change while the relation is being constructed, but they are not if the bijection needs to be "preserved".

# References
