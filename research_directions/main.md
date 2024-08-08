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
Gains include a better understanding of relation to reversible functional programming language, more generality in the machine, and possibly efficient reduction strategies.
  
## In more details
 
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
#. Obtaining a simpler model than the original one [@Biernacka2022{}, Section 2], since it will be "manually" refined,
#. Extending the machine to execute other languages in a reversible manner (typically, HOCore [@Maksimovic2015]).

What to read first?
~ 
  A good starting point will be [Logan Beatty's slide](https://spots.augusta.edu/caubert/2024_Medic_Visit/Logan_Beatty_Presentation.pdf) that he used to explain our research project during [Dr. Medić’s Visit](https://spots.augusta.edu/caubert/2024_Medic_Visit/).
  A good understanding of non-deterministic abstract machines [@Biernacka2022{}, Section 2] is required, and some existing notes are stored in [a private repository](https://github.com/CinRC/reversible-lambda).

Possible collaborators:
~  
    - Nate Schwartz and Logan Beatty, two undergraduate students that worked on this model,
    - [Claudio Antares Mezzina](https://sites.google.com/view/claudio-mezzina),
    - [Jorge A. Pérez](https://www.jperez.nl/)
    
# A Reversible Applied $\pi$-calculus

## In a nutshell

There has been multiple proposals for reversible $\pi$-calculus and its semantics [@Tiezzi2015;@Graversen2022;@Cristescu2015;@Cristescu2013;@Lanese2016] but, to my knowledge, applied $\pi$-calculus [@Ryan2011,@Abadi2018,@Aubert2022e] has never been reversed.
The goal of this direction is to introduce such a model, to compare it to existing reversible $\pi$-calculi, and to reason about its application to the audit of (reversible) security protocols.

## In more details

The applied $\pi$-calculus is an important starting point to develop audit tools such as ProVerif [@Blanchet2016;@proverif], used to verify protocols used in production.
Its semantics has recently been refined into a cleaner model [@Aubert2022e;@Aubert2023f;@Aubert2022k], where dependence is easier to track and expected properties (typically, the "diamond" lemmas) proven to hold.
The goal of this research project would be to reverse its semantics and to compare it to existing models of reversible, name-passing, computation.
In particular, assessing whether the criteria from [@Cristescu2013] are met, and whether name extrusion (with disjunctive causality) [@Aubert2022e{}, p. 9] is handled in a nicer way than in [@Crafa2012].
Next, determining how reversible calculi could be used to design secure protocols could be of interest.
Typically, is there an elegant way of backtracking from a transaction if certain conditions are not met?
Can a secret be retrieved?
Can an adversarial context be "forced" to prove that it will comply to backtracking orders?
This may require to also study context with different computational powers [@Aubert2022a], to model adversary not willing to abide by the semantics.s

What to read first?
~ 
  The "modern" take on applied $\pi$-calculus is nicely explained in [@Aubert2022e], but the reversible semantics of $\pi$-calculi are spread through the literature and will be harder to identify. 
  Nevertheless, my understanding is that the early model [@Cristescu2015] is still relevant.

Possible collaborators:
~  
    - [Ross Horne](https://personal.cis.strath.ac.uk/ross.horne/),
    - [Semen Yurkov](https://marblesurf.github.io/)

# A Better Understanding of (H)HPB

- as dependence,
- complexity,
- prove that it maps BS.

# Replication, Recursion and Iteration

## In a nutshell

Recursion, replication and iteration have been precisely compared in the context of CCS [@Palamidessi2005;@Busi2009].
However, to the best of my knowledge [@aubert2023d], no satisfactory definition of replication has even been given for reversible calculi.
The goal of this direction is to define all three forms of infinite behaviour and compare them precisely.

causal consistent encoding

# Choice

# Axiomatic Approach -- Verified


# (Parallel) Random-Access Machine

Link with memory cells (guarded and locations).

# References
