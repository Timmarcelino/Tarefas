def search(arr, valor)
  i = 0
  located = false
  for element in arr
    i += 1
    if element == valor
      located = true
      return i
    end
  end
  if located == false
    return -1
  end
end

#Implementação e teste:

array = [2, 5, 8, 12, 16, 23, 38, 56, 72, 91]
findValor = 23

puts " \n\n O elemento procurado está na posição: #{search(array, findValor)}\n\n"
