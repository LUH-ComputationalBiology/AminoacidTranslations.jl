module AminoacidTranslations

using BioSequences

include("codon_usage.jl")

ReverseCodonTable = Dict(AA_A => (RNACodon("GCU"),RNACodon("GCC"),RNACodon("GCA"),RNACodon("GCG")), AA_R => (RNACodon("CGU"),RNACodon("GCC"),RNACodon("GCA"),RNACodon("GCG")), AA_N =>(RNACodon("AAU"),RNACodon("AAC")), AA_D => (RNACodon("GAU"),RNACodon("GAC")),AA_C =>(RNACodon("UGU"),RNACodon("UGC")), AA_Q=>(RNACodon("CAA"),RNACodon("CAG")), AA_E=>(RNACodon("GAA"),RNACodon("GAG")), AA_G=>(RNACodon("GGU"),RNACodon("GGC"),RNACodon("GGA"),RNACodon("GGG")),AA_H=>(RNACodon("CAU"),RNACodon("CAC")),AA_I=>(RNACodon("AUU"),RNACodon("AUC"),RNACodon("AUA")),AA_L=>(RNACodon("UUA"),RNACodon("UUG"),RNACodon("CUU"),RNACodon("CUC"),RNACodon("CUA"),RNACodon("CUG")), AA_K=>(RNACodon("AAA"),RNACodon("AAG")), AA_M=>(RNACodon("AUG")),AA_F=>(RNACodon("UUU"),RNACodon("UUC")),AA_P=>(RNACodon("CCU"),RNACodon("CCC"),RNACodon("CCA"),RNACodon("CCG")),AA_S=>(RNACodon("UCU"),RNACodon("UCC"),RNACodon("UCA"),RNACodon("UCG"),RNACodon("AGU"),RNACodon("AGC")),AA_T=>(RNACodon("ACU"),RNACodon("ACC"),RNACodon("ACA"),RNACodon("ACG")), AA_W=>(RNACodon("UGG")), AA_Y=>(RNACodon("UAU"),RNACodon("UAC")), AA_V=>(RNACodon("GUU"),RNACodon("GUC"),RNACodon("GUA"),RNACodon("GUG")))

ReverseCodonTableDNA = Dict(AA_A => (DNACodon("GCT"),DNACodon("GCC"),DNACodon("GCA"),DNACodon("GCG")), AA_R => (DNACodon("CGT"),DNACodon("GCC"),DNACodon("GCA"),DNACodon("GCG")), AA_N =>(DNACodon("AAT"),DNACodon("AAC")), AA_D => (DNACodon("GAT"),DNACodon("GAC")),AA_C =>(DNACodon("TGT"),DNACodon("TGC")), AA_Q=>(DNACodon("CAA"),DNACodon("CAG")), AA_E=>(DNACodon("GAA"),DNACodon("GAG")), AA_G=>(DNACodon("GGT"),DNACodon("GGC"),DNACodon("GGA"),DNACodon("GGG")),AA_H=>(DNACodon("CAT"),DNACodon("CAC")),AA_I=>(DNACodon("ATT"),DNACodon("ATC"),DNACodon("ATA")),AA_L=>(DNACodon("TTA"),DNACodon("TTG"),DNACodon("CTT"),DNACodon("CTC"),DNACodon("CTA"),DNACodon("CTG")), AA_K=>(DNACodon("AAA"),DNACodon("AAG")), AA_M=>(DNACodon("ATG")),AA_F=>(DNACodon("TTT"),DNACodon("TTC")),AA_P=>(DNACodon("CCT"),DNACodon("CCC"),DNACodon("CCA"),DNACodon("CCG")),AA_S=>(DNACodon("TCT"),DNACodon("TCC"),DNACodon("TCA"),DNACodon("TCG"),DNACodon("AGT"),DNACodon("AGC")),AA_T=>(DNACodon("ACT"),DNACodon("ACC"),DNACodon("ACA"),DNACodon("ACG")), AA_W=>(DNACodon("TGG")), AA_Y=>(DNACodon("TAT"),DNACodon("TAC")), AA_V=>(DNACodon("GTT"),DNACodon("GTC"),DNACodon("GTA"),DNACodon("GTG")))

function translate(aminoacid; to=RNA)
	if to==DNA
		ReverseCodonTableDNA[aminoacid]
       else
		ReverseCodonTable[aminoacid]
       end
end

end # module
