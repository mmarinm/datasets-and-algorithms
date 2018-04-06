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
