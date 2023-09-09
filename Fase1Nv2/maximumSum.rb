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





end


#Testes e implementações:

arr = [ 9, 8, 8, 5]
k = 3
puts maximizeSum(arr, k)

arr = [ -2, 0, 5, -1, 2 ]
k = 4
puts maximizeSum(arr, k)
