#todos os elementos do array que vamos ordenar são inteiros positivos
#não há repetição de elementos no array que vamos ordenar;

def coutingSort(array)
  n = array.length
  k = array.max # Maior valor do array

  ctArray = Array.new(k, 0)   #Array auxiliar com zeros

  array.each { |i| ctArray[i-1] += 1 }  # Frequencia de cada elemento

  (1...k).each {|i| ctArray[i] += ctArray[i-1]}  #Atualização para posição correta

  output = Array.new(n)

  (n-1).downto(0) do |i|  # Inserir os elementos ordenados em Output
    output[ctArray[array[i]-1]-1]= array[i]
    ctArray[array[i]-1] -= 1
  end

  return output

end

### Testes e implementações

array = [1, 9, 1, 3, 4, 7, 6, 7]
#10.times{
#  rnd = Random.new
#  array << (rnd.rand(-100..100)).to_i
#}
puts  "\n\n Array ordenado --> #{(coutingSort(array)).inspect} \n\n"
