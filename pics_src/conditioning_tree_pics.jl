using Copulas

picsPath = "/home/chris/research/projects/jrw_vine_visualization/pics/"

## create vine through RVine matrix
x = Copulas.RVMatrix([4 0 0 0 0 0 0;
     7 5 0 0 0 0 0;
     6 7 1 0 0 0 0;
     5 6 7 7 0 0 0;
     1 1 6 2 6 0 0;
     2 3 3 3 2 2 0;
     3 2 2 6 3 3 3])

## convert to Vine
vn = convert(Copulas.Vine, x)

## extract second tree only
secondTree = Copulas.CTreeParRef(Copulas.dg(vn)[:, 2])

## plain tree
Copulas.viz(secondTree)
Copulas.render(secondTree, "svg", string(picsPath, "plainTree"))

## show path
Copulas.viz(secondTree, emph1=[3, 6], emphFillColor1="lightskyblue",
            emph2=[7], emphFillColor2="lawngreen")

Copulas.render(secondTree, "svg", string(picsPath, "pathAndNode"),
               emph1=[3, 6], emphFillColor1="lightskyblue",
               emph2=[7], emphFillColor2="lawngreen")

## conditional distribution accessible
Copulas.viz(secondTree, emph1 = [3, 6])
Copulas.render(secondTree, "svg", string(picsPath, "accessible"),
               emph1 = [3, 6])

## simulation possible
Copulas.viz(secondTree, emph1 = [3, 7])
Copulas.render(secondTree, "svg", string(picsPath, "simPossible"),
               emph1 = [3, 7])

## requires integration
Copulas.viz(secondTree, emph1 = [1, 5])
Copulas.render(secondTree, "svg", string(picsPath, "integRequ"),
               emph1 = [1, 5])
