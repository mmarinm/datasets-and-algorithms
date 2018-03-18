binToDec = (n)->
    binToArray = String(n).split('').reverse()
    decimal = 0

    for num, index in binToArray
        if parseInt(num) isnt 0
            decimal += Math.pow(2, index)
    return decimal


binToDec(100101)