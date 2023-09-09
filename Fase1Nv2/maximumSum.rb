# Soma maxima da matriz após k operações de negação (arr[i] * -arr[i])

def maximizeSum(array, k)
  array.sort!
  i = 0

  #Operação para Negar k numeros
  while i < array.length && k > 0
    if array[i] < 0
      array[i] *= -1
      k -= 1
    else
      break
    end
    i += 1
  end

  # Após todos os números negativos tenham sido negados, decrementa i
  i -= 1 if i == array.length

  # Se k é zero ou par, retorna a soma do array
  return array.sum if k == 0 || k % 2 == 0

  # Depois, verifica se a negação de array[i] resulta em uma soma maior
  if i != 0 && array[i].abs >= array[i - 1].abs
    i -= 1
  end

  # Agora negar array[i] para obter a soma máxima e retorna a soma
  array[i] *= -1
  return array.sum
end


#Testes e implementações:



arr = [ -2, 0, 5, -1, 2 ]
k = 4
puts maximizeSum(arr, k)

arr = [ 9, 8, 8, 5]
k = 3
puts maximizeSum(arr, k)
