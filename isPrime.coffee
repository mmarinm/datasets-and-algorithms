isPrime = (n)->
    prime = true
    
    if n <= 1
        return false

    if n >= 2
        for i in [2..n]
            if n % i is 0 and i isnt n
                prime = false
    return prime
        
console.log [1,2,3,4,5,6,7,8,9,10,11].map isPrime

