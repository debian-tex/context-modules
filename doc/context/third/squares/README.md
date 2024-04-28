# squares

This module only provides two commands:

1. `\magicsquare` typesets a magic square.
2. `\latinsquare` typesets a Latin square.

Both `\magicsquare` and `\latinsquare` understand the same set of
parameters:

```tex
\setupmagicsquare
  [size=2em,
   align={middle,lohi},
   renderingsetup=none,
   n=5] % and \setupTABLE parameters...
```

Magic and Latin squares are typesets via natural tables, i.e., by using a
`\bTABLE` ... `\eTABLE` environment. I'd rather use `setups`, but it'd
clash with another key already taken by `\setupTABLE`.

Currently only two rendering setups are available: `none` (it does
nothing), and `color` (cells colorfully painted across the HSV hue range).
I promise more setups will be available soon, though.

You might be more impatient and want to define your own. So, this is how:

```tex
\unprotect
\startsetups[\????magicsquare:\c!renderingsetup:mysetup]
% Idk, something like this?
% \setupTABLE[r][odd][background=color,backgroundcolor=red]
% For natural table tuning, see https://wiki.contextgarden.net/TABLE
% etc.
\stopsetups
\protect

\magicsquare[n=7,renderingsetup=mysetup]
```

_Caveat emptor_: this module is only for ConTeXt LMTX. I no longer use
ConTeXt MKIV, so no support is provided, sorry. Moreover, I'm using
cutting-edge features, such as new macro extensions. An updated
distribution is recommended.
