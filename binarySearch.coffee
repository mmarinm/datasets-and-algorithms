binarySearch = (arr, item)->
	low = 0
	high = arr.length - 1
	
	while low <= high
		mid = Math.floor((low + high)/2)
		guess = arr[mid]
		
		if guess < item
			low = mid + 1
		else if guess > item
			high = mid - 1
		else
			return mid
	
	return -1

sample = [1,2,3,4,5,6,7,8,9,10,11,22]

console.log binarySearch(sample, 3)		#2
console.log binarySearch(sample, 22)		#11
console.log binarySearch(sample, 1)		#0
console.log binarySearch(sample, 55)		#-1
console.log binarySearch(sample, -55)		#-1