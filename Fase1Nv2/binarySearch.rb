def binarySearch(array, valor)  #Necessario o vetor estar ordenado
  r = array.length
  l = 0

  while l <= r
    mid = (r/2).to_i
    if array[mid] == valor
      return mid
    elsif array[mid] < valor
      l = mid + 1
    else
      r = mid - 1
    end
  end
end
