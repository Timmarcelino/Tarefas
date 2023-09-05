## Ordenação percorre da Esquerda comparando os elementos adjacentes
## e o mais alto é colocado no lado direito
## Assim o elemento Maior é movido primeiro para a extremidade Direita
## Depois encontra o segundo maior e assim por diante
## até que todos os elementos estejam ordenados.
## Esse algoritmno utilizará de recursividade para acelerar a ordenação

def bubbleSort_rec(array, n = array.length)
  return array if n <= 1

  for i in 0..(n-2)
    if array[i] > array[i+1]
      array[i], array[i+1] = array[i+1], array[i]
      puts array.inspect
    end
  end
  bubbleSort_rec(array, n-1)
end

### Testes e implementações

array = []
100.times{
  rnd = Random.new
  array << (rnd.rand(-100000..100000)/100).to_i
}

#array =  [64, 34, 25, 12, 22, 11, 90, -1, 89, 44, 42, -2, -3, -4, 15788, -15788 ]
puts "\n\n Array original -->  #{array.inspect} \n\n"
puts  "\n\n Array ordenado --> #{(bubbleSort_rec(array)).inspect} \n\n"
