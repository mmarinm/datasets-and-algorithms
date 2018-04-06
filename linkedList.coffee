class Node
    constructor: (element) ->
        @element = element
        @next = null

class LinkedList
    constructor: ()->
        @length = 0
        @head = null
    
    size: ()-> @length

    head: ()-> @head

    add: (element)->
        node = new Node(element)

        if not @head then @head = node
        else
            currentNode = @head
            while currentNode.next
                currentNode = currentNode.next

            currentNode.next = node
        @length++

    remove: (element)->
        if @head.element is element
            @head = @head.next
            @length--

        else
            currentNode = @head
            prevNode = null
            
            while currentNode.element isnt element
                prevNode = currentNode
                currentNode = currentNode.next

            prevNode.next = currentNode.next
            @length--

    isEmpty: ()-> @length is 0


    indexOf: (element)->
        currentNode = @head
        index = -1

        while currentNode
            index++
            if currentNode.element is element then return index
            currentNode = currentNode.next

        return -1

    
    elementAt: (index)->
        currentNode = @head
        count = 0
        while count < index
            count++
            currentNode = currentNode.next
        
        currentNode.element


    addAt: (index, element)->
        node = new Node(element)

        currentNode = @head
        prevNode = null
        currentIndex = 0

        if index > @length then return false

        if index is 0
            node.next = currentNode
            @head = node
        else
            while currentIndex < index
                currentIndex++
                prevNode = currentNode
                currentNode = currentNode.next
            
            prevNode.next = node
            node.next = currentNode

    print: ()->
        currentNode = @head

        while currentNode
            console.log currentNode.element
            currentNode = currentNode.next


mylist = new LinkedList()

mylist.add(1)
mylist.add(2)
mylist.add(3)
mylist.add(4)
mylist.print()
console.log '-------------------'
console.log mylist.size()
console.log '-------------------'
mylist.remove(3)
mylist.print()
console.log '-------------------'
console.log mylist.size()
console.log '-------------------'
console.log mylist.indexOf(2)
console.log mylist.indexOf(99)
console.log '-------------------'
console.log mylist.elementAt(1)
console.log '-------------------'
console.log '-------------------'
mylist.addAt(0, 8)
mylist.print()
mylist.addAt(2, 10)
mylist.print()
mylist.addAt(10, 100)
mylist.print()
console.log '-------------------'
