graph = {
    start: { a:5, b:2 }
    b: { a:8, d:7 }
    a: { c:4, d:2 }
    c: { d:6, fin:3 }
    d: { fin:1 }
}

graph2 = {
    start: { a:10 }
    a: { b:20 }
    b: { fin:30, c:1 }
    c: { a:1 }
}

graph3 = {
    start: { a:2, b:2 }
    b: { a:2 }
    a: { c:2, fin:2 }
    c: { b:-1, fin:2 }
}

findCheapeastNode = (costs, processed)->
    cheapestCost = Infinity
    cheapestNode = null
    for node of costs
        cost = costs[node]
        if cost < cheapestCost and not processed.includes(node)
            cheapestCost = cost
            cheapestNode = node
    return cheapestNode
            
findPath = (graph)->
    costs = graph[Object.keys(graph)[0]]
    processed = []
    parents = {}
    
    node = findCheapeastNode(costs, processed)
    while node
        cost = costs[node]
        neighbours = graph[node]
        for key of neighbours
            newCost = cost + neighbours[key]
            if costs[key] > newCost or not costs[key]
                costs[key] = newCost
                parents[key] = node
        processed.push(node)
        node = findCheapeastNode(costs, processed)
    return costs

console.log findPath(graph)
console.log findPath(graph2)
console.log findPath(graph3)