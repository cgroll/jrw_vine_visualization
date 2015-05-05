% JRW 2015
%		R-Vines: conditioning sets
% Christian Groll


# Copulas: introduction and motivation

## 

**Definition:** Copula

A $d$-dimensional copula $C$ is a multivariate distribution on
$[0,1]^{d}$ with **uniformly distributed** marginals.

## Sklar's theorem [@rv_sklar_1959_fonctions]

Any continuous multivariate distribution can be **decomposed** into a
copula and marginal distributions:

![](../pics/22sklar_decomp_dens2.png)

## Sklar's theorem II

Combining any **copula** with any continuous **marginal
distributions** leads to a valid joint distribution:

![](../pics/creatingNewDistr.png)

## General problem

**Quantity of interest**

\begin{equation*}
\bf{Z}=g(\bf{X}),\quad \bf{X}=(X_{1},\ldots, X_{d})
\end{equation*}

. . .

- $X_{i}$ are random variables
- *g* some kind of aggregation

. . .

$\Rightarrow$ both **marginal distributions** and the **dependence**
structure is important


## Benefit

- allow fancy dependence structures between $X_{i}$ and $X_{j}$

![](../pics/equal_margins_diff_dep.png)

## Main benefit

- allow usage of arbitrary marginal distributions $F_{X_{i}}$

## Pair copula construction

- flexible extension to multi-dimensional setting

. . .

- using **bivariate copulas** as building blocks for
  higher-dimensional distributions

. . .

- vines: graphical structure to organize different density
  decompositions (Bedford and Cooke)


## Hard to grasp?
how is decomposition chosen? heuristics

unintuitive: linking conditional copulas

## References
