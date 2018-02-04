class MySet
	constructor: ()->
		@.collection = []
	
	exist: (element)->
		@.collection.indexOf(element) > -1
	
	
	values: ()-> @.collection
	
	
	add: (element)->
		if !@.exist(element)
			@.collection.push element
			return true
		return false
	
	
	remove: (element)->
		if @.exist(element)
			index = @.collection.indexOf(element)
			collection.splice(index, 1)
			return true
		return false
	
	
	size: ()->
		return @.collection.length
	
	
	intersects: (otherSet)->
		intersectSet = new MySet()
		firstSet = @.values()
		
		firstSet.forEach (val)->
			if otherSet.exist(val)
				intersectSet.add(val)
		
		return intersectSet
	 
 
	union: (otherSet)->
		unionSet = new MySet()
		firstSet = @.values()
		secondSet = otherSet.values()
		
		firstSet.forEach (val)->
			unionSet.add(val)

		secondSet.forEach (val)->
			unionSet.add(val)
			
		return unionSet.values()
	
	difference: (otherSet)->
		differenceSet = new MySet()
		firstSet = @.values()
		
		firstSet.forEach (val)->
			if !otherSet.exist(val)
				differenceSet.add(val)
				
		return differenceSet
	
	
	subset: (otherSet)->
		firstSet = @.values()
		firstSet.every (val)-> otherSet.exist(val)
		
setA = new MySet()  
setB = new MySet()
setA.add("a");
setA.add("b")
setA.add("z")
setB.add("b");  
setB.add("c");  
setB.add("a");  
setB.add("d");
console.log(setA.union(setB));
console.log(setA.subset(setB));
console.log(setA.intersects(setB).values());
console.log(setA.difference(setB).values());

