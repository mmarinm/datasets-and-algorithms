decToBin = (n)->
    bin = []
    while n > 0
        bin.push(n % 2)
        n = Math.floor(n / 2)

    return bin.reverse()

console.log decToBin(37)