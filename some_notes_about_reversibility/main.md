---
title: "Exercises - Bonus"
---

# λ-calculus

The syntax of λ-calculus is in general given in [Backus–Naur form](https://en.wikipedia.org/wiki/Backus%E2%80%93Naur_form):

$$t, s ::= x ~\|~ t @ s  ~\|~ λx.t$$

meaning that:

- λ-terms will be denoted $t$ and $s$,
- a variable $x$ is a λ-term,
- the result of applying a λ-term $t$ to another λ-term $s$ is a λ-term^[The "application symbol" $@$ is often omitted.],
- the result of abstracting a variable $x$ from a term $t$ is a λ-term.

In this definition, $x$ is more of a meta-variable: $y$, $z$, $w$, … as well as $λy.t$, $λz.t$, …, are valid λ-terms. This is enforced by α-conversion, which let e.g., $λx.x =_{α} λy.y$ since those terms are "essentially the same" (in this case, they both capture the identity function, denoted $\id$).

We follow those conventions

- Outermost parentheses are omitted, so $(t)$ is $t$.
- Applications associate to the left; thus, $t @ s @ u$ means $(t@s)@u$.
- The body of a lambda abstraction (the part after the dot) extends as far to the right as possible. In particular, $λx.t@u$ means $λx.(t@u)$, and not $(λx.t)@u$ .
- Multiple lambda abstractions can be contracted; thus $λxyz.t$ will abbreviate $λx.λy.λz.t$.

The best places to learn more about this are B. Pierce's textbook [@Pierce2002, pp. 51--73], and if you want to become an expert, Barendregts's books [@barendregt84; @barendregt97handbook; @Barendregt2023].

Exercise (inspired by [@selinger2013lecture, Exercise 3]):
~ 
    #. Write the following terms with as few parenthesis as possible, without changing the meaning or structure of the terms:
        - $(λx.(λy.(λz.((x@z)@(y@z)))))$,
        - $(((a@b)@(c@d))@((e@f)@(g@h)))$,
        - $(λx.((λy.(y@x))@(λv.v)@z)@u)@(λw.w)$,
        
    #. Restore all the dropped parentheses in the following terms, without changing the meaning or structure of the terms:
        - $x@x@x@x$,
        - $λx.x@λy.y$,
        - $λx.(x@λy.y@x@x)@x$

Read [@selinger2013lecture{}, Section 2.4] for a gentle introduction to $\beta$-reduction and one example.

Definition
~ 
    We let true and false be $\tru = \lambda x y . x$ and $\fls = \lambda x y . y$.

Exercise
~ 
    Write all the possible $\beta$-reductions from $\fls @ \fls @ (\fls @ \tru)$ to $\id$.

# References
