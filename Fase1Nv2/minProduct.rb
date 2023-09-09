##

def minProduct(arr)
  n = arr.length

  # Se houver apenas um elemento, retorne esse elemento
  return arr[0] if n == 1

  max_neg = 0
  min_pos = Float::INFINITY
  count_neg = 0
  count_zero = 0
  prod = 1

  for i in 0...n
    if arr[i] == 0
      count_zero += 1
      next
    end

    if arr[i] < 0
      count_neg += 1
      max_neg = [max_neg, arr[i]].min
    end

    if arr[i] > 0
      min_pos = [min_pos, arr[i]].min
    end

    prod *= arr[i]
  end

  # Caso 1: Todos os elementos são zeros ou há apenas zeros no array
  return 0 if count_zero == n || (count_neg == 0 && count_zero > 0)

  # Caso 2: Não há números negativos
  return min_pos if count_neg == 0

  # Caso 3: Há números negativos
  if count_neg.even?
    prod /= max_neg
  end

  return prod.to_i
end


array = [ -1, -1, -2, 4, 3 ]
puts minProduct(array)

array = [ -1, 0 ]
puts minProduct(array)

array = [ 2, -3, 1, 0, -5 ]
puts minProduct(array)
