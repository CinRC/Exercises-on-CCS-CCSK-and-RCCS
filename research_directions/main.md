---
title: "Research Directions"
---

# Foreword

_In addition to what is presented in the [funded proposal](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2242786)_ (available upon request), or at least refining it, are the following possible research directions.
Please, refer to [the notes about reversibility](https://github.com/CinRC/Exercises-on-CCS-CCSK-and-RCCS/tree/master/some_notes_about_reversibility) for a more general introduction as to why reversible computation is of interest.

# A Reversible Machine for $\lambda$-calculus

## In a nutshell

As [Ugo Dal Lago](https://udallago.github.io/) observed in a [public message](https://mathstodon.xyz/@ugodallago/109524427430117768), there is no "reversible" machine capable of executing $λ$-terms. 
The goal of this direction is to develop such a model of computation, using a recent non-deterministic machine [@Biernacka2022], to obtain machines capable of undoing their reductions of $λ$-terms (and possibly of $π$-calculus terms) for the first time.
  
# In more details
 
The question to investigate is: is it possible to "revert" a fundamental model of computation, namely the $λ$-calculus [@Pierce2002]?

Answering positively this question requires to 

#. Define a reversible abstract model of computation $M$:
    #. Define a forward execution, i.e., rules expressing that the model $M$ in a state $s$ will reduce the $λ$-terms $u$ to $u'$ and move to state $s'$ in one forward step :$(M, s, u) → (M, s', u')$,
    #. Define a backward execution, i.e., rules expressing that the model $M$ in a state $s$ will reduce the $λ$-terms $u$ to $u'$ and move to state $s'$ in one backward step :$(M, s, u) ⇝ (M, s', u')$,

#. Ensure that the model is "correct":
    #. By showing that it can correctly execute forward and backward some simple examples,
    #. By proving properties such as the loop lemma, i.e., $(M, s, u) → (M, s', u') ⬌ (M, s', u') ⇝ (M, s, u)$,
    #. By comparing it to existing reversible functional languages [@Gluck2023],
    #. By exploring if there are additional features and properties revealed by this model that were not previously accessible.
    
Possible interesting results include:

#. Defining a machine that can implement multiple strategies by simply fidgeting with the backward mechanism,
#. Obtaining efficient machine, as it could explore $\lambda$-terms non-deterministically (that is, starting with multiple strategies at the same time, and terminating as soon as one obtained a normal term), 
#. Obtaining a simpler model than the original one [@Biernacka2022, Section 2], since it will be "manually" refined,
#. Extending the machine to execute other languages in a reversible manner (typically, HOCore [@Maksimovic2015]).

What to read?
~ 
  A good starting point will be [Logan Beatty's slide](https://spots.augusta.edu/caubert/2024_Medic_Visit/Logan_Beatty_Presentation.pdf) that he used to explain our research project during [Dr. Medić’s Visit](https://spots.augusta.edu/caubert/2024_Medic_Visit/).
  A good understanding of non-deterministic abstract machines [@Biernacka2022, Section 2] is required, and some existing notes are stored in [a private repository](https://github.com/CinRC/reversible-lambda).

Possible collaborators:
~  
    - Nate Schwartz and Logan Beatty, two undergraduate students that worked on this model,
    - [Claudio Antares Mezzina](https://sites.google.com/view/claudio-mezzina),
    - [Jorge A. Pérez](https://www.jperez.nl/)
    
# A Reversible Applied $\pi$-calculus

# A Better Understanding of (H)HPB

- as dependence,
- complexity,
- prove that it maps BS.

# Replication, Recursion and Iteration

[@aubert2023d]

causal consistent encoding

# (Parallel) Random-Access Machine

Link with memory cells (guarded and locations).

# References
