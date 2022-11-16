using BadApples
using Documenter

DocMeta.setdocmeta!(BadApples, :DocTestSetup, :(using BadApples); recursive=true)

makedocs(;
    modules=[BadApples],
    authors="rex <1073853456@qq.com> and contributors",
    repo="https://github.com/RexWzh/BadApples.jl/blob/{commit}{path}#{line}",
    sitename="BadApples.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://RexWzh.github.io/BadApples.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/RexWzh/BadApples.jl",
    devbranch="main",
)
