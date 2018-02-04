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


sample = [1,2,3,4,5,6,7,8,9,10,11,22]

binarySearch(sample,3)		#2