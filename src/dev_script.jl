using JFinM_Charts

## create symbolic link to d3 library
cd("../")
d3SymLink()
cd("src")

## load vine data from disk
vineDataPath =
    "/home/chris/research/julia/JFinM_Charts/d3_charts/dev/finalVine.csv"

## read in data
vineTrees = readcsv(vineDataPath, Int)

## construct vine
vn = Vine(vnTrees)

chrt = JFinM_Charts.VineGraph()

type Node
    name::String
    children::Array{Node, 1}
end

n1 = Node("First", [])
n2 = Node("Second", [])
n3 = Node("Root", [n1, n2])

## node:
## - index
## - name
## - children
## - layer
## - value

## transform nodes with properties and vine structure to tree data
## how are nodes with their properties usually stored?!

## two types of JSON representations:
## - {name: n1, children: [...]}
## - {n1: [...]}

## hash table:
## - either Dict, with selectable properties
## - or Array, with selectable rows

lookup["Brazil"].region # access field of associative data
lookup[:Brazil, :region] # access column of DataFrame
## are missing values allowed?
## flexibility: store nodes and links simultaneously?
## better compatibility to JSON?
