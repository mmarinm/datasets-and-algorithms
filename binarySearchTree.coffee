class Node
	constructor: (data, left=null, right=null)->
		@data = data
		@left = left
		@right = right

    
class BST
	constructor: ()->
		@root = null
  
	add: (data)->
		node = @root
		
		if node is null
			@root = new Node(data)
    	
		else
			searchTree = (node)->
				if data < node.data	
					
					if node.left isnt null
						searchTree(node.left)
					
					else					
						node.left = new Node(data)
						return
					
				else if data > node.data
					if node.right isnt null
						searchTree(node.right)
					else 
						node.right = new Node(data)
						return
				else
					return null
			
			searchTree(@root)
  
	findMin: ()->
		current = @root
		while current.left isnt null
			current = current.left
		
		return current.data

    
	findMax: ()-> 
		current = @root
		while current.right isnt null
			current = current.right
		
		return current.data
  
	
	isPresent: (data)->
		current = @root
		while current
			if data is current.data
				return true
			
			if data < current.data
				current = current.left
			else
				current = current.right
		return false


	remove: (data)->
		removeNode = (node, data)->
			if not node
				return null

			if data is node.data
        
        		# if node has no children
				if node.left is null and node.right is null
					return null

				# if node has no left child
				if node.left is null
					return node.right

				# if node has no right child          
				if node.right is null
					return node.left
		        
        		# node has 2 children
				tempNode = node.right
				while tempNode.left isnt null
					tempNode = node.left

				node.data = tempNode.data
				node.right = removeNode(node.right, tempNode.data)      
      
			else if data < node.data
				node.left = removeNode(node.left, data)
				return node

			else
				node.right = removeNode(node.right, data)
				return node

		removeNode(@root, data)


bst = new BST()

bst.add(9)
bst.add(4)
bst.add(17)
bst.add(3)
bst.add(6)
bst.add(22)
bst.add(5)
bst.add(7)
bst.add(20)
bst.remove(6)

console.log bst.findMin()
console.log bst.findMax()
console.log bst.isPresent(6)
            