returnSmallest = (arr)->
  smallest = arr[0]
  arr.forEach (item)->
    if item < smallest
      smallest = item
  return smallest
      
selectionSort = (arr)->
  sortedArr = []
  for i in arr
   sortedArr.push(returnSmallest(arr))

sample = [3,4,6,7,1,2,8,9]

console.log selectionSort(sample)  #[1, 2, 3, 4, 5, 6, 7, 8]