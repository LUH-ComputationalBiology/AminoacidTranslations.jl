using HTTP: HTTP, get
using Gumbo: parsehtml
using DataFrames

"""
Fetches the codon usage table of species from http://www.kazusa.or.jp/codon/.
`species` is the ID of the species according to TODO.
`aa` speficies the genetic code with the values corresponding to:
    1: Standard
    2: Vertebrate Mitochondrial
    3: Yeast Mitochondrial
    4: Mold, Protozoan, Coelenterate Mitochondrial and Mycoplasma/Spiroplasma
    5: Invertebrate Mitochondrial
    6: Ciliate Macronuclear and Dasycladacean
    9: Echinoderm Mitochondrial
    10: ALternative Ciliate Macronuclear
    11: Eubacterial
    12: Alternative Yeast
    13: Ascidian Mitochondrial
    14: Flatworm Mitochondrial
    15: Blepharisma Nuclear Code

Returns a DataFrame containing aminoacids, their codons and codon-fraction, but no stop codons
"""
function get_codon_usage(; species = 9606, aa=1)
    r = HTTP.get("http://www.kazusa.or.jp/codon/cgi-bin/showcodon.cgi?species=$species&aa=$aa&style=N")
    table_string = parsehtml(String(r.body)).root[2][7][1].text
    df = DataFrame()
    for match in eachmatch(r"[AUGC]{3} [A-Z] \d\.\d\d [\d\s]\d\.\d", table_string)
        entries = split(match.match)
        push!(df,
            (Codon = RNACodon(entries[1]), AminoAcid = AminoAcid(only(entries[2])), fraction = parse(Float64, entries[3]))
        )
    end
    return df
end