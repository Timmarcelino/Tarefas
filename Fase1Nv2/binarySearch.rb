def binarySearch(array, valor)  #Necessario o vetor estar ordenado
  r = array.length
  l = 0

  while l <= r
    mid = ((l + (r -1))/2).to_i
    if array[mid] == valor
      return mid
    elsif array[mid] < valor
      l = mid + 1
    else
      r = mid - 1
    end
  end
end


#Implementação e testes:

arr = [2, 5, 8, 12, 16, 23, 38, 56, 72, 91]
valor = 23

puts " \n\n O elemento procurado está na posição: #{binarySearch(arr, valor)}\n\n"
