---
title: "Exercises - 1"
---

# Forward-Only CCS

#. Usually, we simplify the notation by assuming some convention [@Degano2003]. We don't write "trailing $0$", so that $a.0$ is the same as $a$, and:

    > We assume that the operators have decreasing binding power, in the following order: $\backslash a, a., |, +$.
    
    Explain the meaning of this (slightly modified) quote, and write down the parenthesised version of a couple of terms without parenthesises.
    For instance, is $a + b | c$ the same as $(a + b) | c$, or the same as $a + (b | c)$?
    
    
#. In forward-only CCS, list all the different reductions that $c.(\overline{a} | (b. a | d ))$ can perform to reach $0 | (0 | 0)$.

#. (Inspired from [@Milner1989]) Assuming that $a \neq b$, write the derivation of the transitions:
    
    \begin{align*}
    (a.P + b.0) | \overline{a}.Q  & →^{a} P | \overline{a}.Q \\
    (a.P + b.0) | \overline{a}.Q  & →^{\overline{a}} (a.P + b.0) | Q \\
    (a.P + b.0) | a.Q & →^{b} 0 | a.Q \\
    ((a.P + b.0) | a.Q)\backslash a &  →^{b} (0 | a.Q) \backslash a\\
    (a.P | Q) \backslash b | (\overline{a}.Q' \backslash c) & →^{\tau} (P |Q) \backslash b | (Q' \backslash c)
    \end{align*}

# CCSK

#. Write the term you would obtain in CCSK for each of the transition listed in the last exercise of the previous section.

#. Write all of the forward and backward transitions that the following processes can perform:

    - $a[k].b | \overline{b}$
    - $(b[k].\overline{c} + a) | (c + \overline{b})$
    - $(a[k].c[k']) | (\overline{a}[k] . d)$

# Vending Machine

Next page is presented the "canonical example" from [@Milner1989, p. 23] (the $V$ at the right of the equation are here to trigger recursion: you can replace them with $0$'s if you prefer).
Complete the two exercises, and explain intuitively why $1p.1p.big.collect.V + 1p.little.collect.V$ could be an ok way of answering exercise 4 in a reversible system, and why this process would not fulfill the requirement of exercise 4 in a non-reversible set-up.

# Implementation

Please, have a look at

- <http://www.jot.fm/issues/issue_2005_03/article5.pdf>
- <https://pseuco.com/#/landing>
- <http://caal.cs.aau.dk/>
- <https://github.com/ComputerScience-Projects/Calculus-of-Communicating-Systems>
- <https://github.com/CoffeeStraw/CCS_Prolog>

And help me in narrowing down the implementations from which you would like to start (knowing that restricting an implementation of $\pi$-calculus to CCS is extra work, but doable).


![The vending machine example\label{fig:vm}](img/vending.png)
\ 
