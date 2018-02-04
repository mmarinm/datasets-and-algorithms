class Queu
  constructor: ()->
    @.collection = []

  print: ()->
    console.log(@.collection)
    
  enqueu: (item)->
    return @.collection.push(item)
    
  dequeu: ()->
    return  @.collection.shift()

  front: ()->
     return @.collection[0]
    
  size: ()->
    return @.collection.length

  isEmpty: ()->
    return @collection.length is 0
  
MyQueu = new Queu()

MyQueu.enqueu(3)
MyQueu.enqueu(2)
MyQueu.enqueu(1)
MyQueu.print()
MyQueu.dequeu()
MyQueu.print()
console.log MyQueu.front()
console.log MyQueu.size()
console.log MyQueu.isEmpty()
MyQueu.dequeu()
MyQueu.dequeu()
console.log MyQueu.isEmpty()