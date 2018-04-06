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
