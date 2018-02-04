class Stack
  constructor: ()->
    @.count = 0
    @.stack = {}
  
  push: (item)->
    @.count += 1
    @.stack[@.count] = item
  
  pop: ()->
    delete @.stack[@.count]
    
  
  peek: ()-> console.log @.stack
    

MyStack = new Stack();

MyStack.push('mmm')
MyStack.peek()
MyStack.push('2601')
MyStack.peek()
MyStack.pop()
MyStack.peek()
MyStack.push('26012')
MyStack.push('26013')
MyStack.push('26014')
MyStack.peek()
MyStack.pop()
MyStack.peek()


