def binarySearch(array, valor)  #Necessario o vetor estar ordenado
  r = (array.length).to_i - 1
  l = 0


  while l <= r
    mid = (l + (r -l)/2).to_i
    if array[mid] == valor
      return mid
    elsif array[mid] < valor
      l = mid + 1
    else
      r = mid - 1
    end
  end
  return -1
end


#Implementação e testes:

arr = [2, 5, 8, 12, 16, 23, 38, 56, 72, 91] # Importante o array estar ordenado
valor = 23
puts " \n\n O elemento procurado está na posição: #{binarySearch(arr, valor)}\n\n"
