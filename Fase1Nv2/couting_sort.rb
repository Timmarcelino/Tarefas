#todos os elementos do array que vamos ordenar são inteiros positivos
#não há repetição de elementos no array que vamos ordenar;

def coutingSort(array)
  k = array.max # Maior valor do array

  ctArray = Array.new(k+ 1)   #Array auxiliar
  for item in array
    ctArray[item] += 1
  end

  for i in 1..(ctArray.length - 1)
    ctArray[i] += ctArray[i - 1]
  end

  resposta = Array.new(array.length)

  for itemn in array do
    resposta[ctArray[item]-1] = item
    ctArray[item] -= 1
  end

  return resposta
end

### Testes e implementações

array = [6, 3, 1, 7, 2, 4, 8, 5, 0]
#10.times{
#  rnd = Random.new
#  array << (rnd.rand(-100..100)).to_i
#}
puts  "\n\n Array ordenado --> #{(coutingSort(array)).inspect} \n\n"
