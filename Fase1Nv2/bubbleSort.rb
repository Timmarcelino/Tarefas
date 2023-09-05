## Ordenação percorre da Esquerda comparando os elementos adjacentes
## e o mais alto é colocado no lado direito
## Assim o elemento Maior é movido primeiro para a extremidade Direita
## Depois encontra o segundo maior e assim por diante
## até que todos os elementos estejam ordenados.

def bubbleSort(arr)
  n = arr.length.to_i - 1
  temp = 0
  for i in 0..n do
    swap = false
    for j in 0..(n-i-1) do
      if arr[j] > arr[j+1]
        temp = arr[j]
        arr[j] = arr[j+1]
        arr[j+1] = temp
        swap = true
        puts arr.inspect
      end
    end
    if swap == false
      return arr
      break
    end
  end
end

### Testes e implementações

array = [64, 34, 25, 12, 22, 11, 90, -1, 89, 44, 42, -2, -3, -4, 15788, -15788 ]
puts "\n\n Array original -->  #{array.inspect} \n\n"
puts  "\n\n Array ordenado --> #{(bubbleSort(array)).inspect} \n\n"
