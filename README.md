# AmincoacidTranslations.jl

![Lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)<!--
![Lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-stable-green.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-retired-orange.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-archived-red.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-dormant-blue.svg) -->
[![Build Status](https://travis-ci.com/Kathatinka/Amincoacid_to_RNA_Translation.jl.svg?branch=master)](https://travis-ci.com/Kathatinka/Amincoacid_to_RNA_Translation.jl)
[![codecov.io](http://codecov.io/github/Kathatinka/Amincoacid_to_RNA_Translation.jl/coverage.svg?branch=master)](http://codecov.io/github/Kathatinka/Amincoacid_to_RNA_Translation.jl?branch=master)
<!--
[![Documentation](https://img.shields.io/badge/docs-stable-blue.svg)](https://Kathatinka.github.io/Amincoacid_to_RNA_Translation.jl/stable)
[![Documentation](https://img.shields.io/badge/docs-master-blue.svg)](https://Kathatinka.github.io/Amincoacid_to_RNA_Translation.jl/dev)
-->
Getting the corresponding RNA- or DNA-Codons for single aminoacids or aminoacid sequences. For the translation the single letter code of the aminoacids is used. 
## Installation
```julia
import Pkg
Pkg.add(url="https://github.com/Kathatinka/AminoacidTranslations.jl")
```

## Functions
To get the codons for a **single aminoacid** use:
`AminoacidTranslations.translate(AA_*)` *represents the single letter code of the desired aminoacid
`AminoacidTranslations.translate(AA_R)` returns `(CGU, GCC, GCA, GCG)`
To get the codons for an **aminoacid sequence** use:
```julia<br>
AminoacidTranslations.translate.(aa"FGLM")
3-element Vector{Tuple{Mer{RNAAlphabet{2}, 3}, Mer{RNAAlphabet{2}, 3}, Vararg{Mer{RNAAlphabet{2}, 3}, N} where N}}:
 (UUU, UUC)
 (GGU, GGC, GGA, GGG)
 (UUA, UUG, CUU, CUC, CUA, CUG)
AUG 
```

Both functions return the RNA-Codons by default. With the keyword argument `to=:DNA`, this setting can be switched and then returns the DNA-Codons.

Example: 
```julia
AminoacidTranslations.translate(AA_R,to=:DNA)
(CGT, GCC, GCA, GCG)
```
