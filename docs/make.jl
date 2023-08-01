using RepositoryMigrationKit
using Documenter

DocMeta.setdocmeta!(RepositoryMigrationKit, :DocTestSetup, :(using RepositoryMigrationKit); recursive=true)

makedocs(;
    modules=[RepositoryMigrationKit],
    authors="singularitti <singularitti@outlook.com> and contributors",
    repo="https://github.com/singularitti/RepositoryMigrationKit.jl/blob/{commit}{path}#{line}",
    sitename="RepositoryMigrationKit.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://singularitti.github.io/RepositoryMigrationKit.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/singularitti/RepositoryMigrationKit.jl",
    devbranch="main",
)
