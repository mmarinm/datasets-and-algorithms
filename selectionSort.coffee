returnSmallest = (arr)->
    smallest = arr[0]
    indexOfSmallest = null
    
    for item, i in arr
      if item <= smallest
        smallest = item
        indexOfSmallest = i
     
    return indexOfSmallest
      
selectionSort = (arr)->
    sortedArr = []
    
    while(arr.length > 0)
      indexOfSmallest = returnSmallest(arr)
      sortedArr.push(arr[indexOfSmallest])
      arr.splice(indexOfSmallest, 1)
    
    return sortedArr


sample = [3, 4, 6, 7, 1, 2, 8, 9]
console.log(selectionSort(sample))  #[1, 2, 3, 4, 5, 6, 7, 8]



sample = [3,4,6,7,1,2,8,9]
console.log selectionSort(sample)  #[1, 2, 3, 4, 5, 6, 7, 8]