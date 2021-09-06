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

# Functions
<div>
<p>
  To get the codons for a <b>single aminoacid</b> use: <br>
AminoacidTranslations.translate(AA_*) *represents the single letter code of the desired aminoacid<br>
AminoacidTranslations.translate(AA_R) returns (CGU, GCC, GCA, GCG)<br>
</p> </div> <div> <p>
To get the codons for an <b>aminoacid sequence</b> use:<br>
AminoacidTranslations.translate.(aa"sequence")<br>
AminoacidTranslations.translate.(aa"FGLM") returns <br>
3-element Vector{Tuple{Mer{RNAAlphabet{2}, 3}, Mer{RNAAlphabet{2}, 3}, Vararg{Mer{RNAAlphabet{2}, 3}, N} where N}}:<br>
 (UUU, UUC)<br>
 (GGU, GGC, GGA, GGG)<br>
 (UUA, UUG, CUU, CUC, CUA, CUG)<br>
AUG 
</div>
Both functions return the RNA-Codons by default. With the keyword argument "to=DNA", this setting can be switched and then returns the DNA-Codons. <br>
<strong>Example:</strong> AminoacidTranslations.translate(AA_R,to=DNA) now returns (CGT, GCC, GCA, GCG)
