using Documenter, Amincoacid_to_RNA_Translation

makedocs(
    modules = [Amincoacid_to_RNA_Translation],
    format = Documenter.HTML(; prettyurls = get(ENV, "CI", nothing) == "true"),
    authors = "Kathatinka",
    sitename = "Amincoacid_to_RNA_Translation.jl",
    pages = Any["index.md"]
    # strict = true,
    # clean = true,
    # checkdocs = :exports,
)

deploydocs(
    repo = "github.com/Kathatinka/Amincoacid_to_RNA_Translation.jl.git",
    push_preview = true
)
