def rotateArray(array, k)
  n = array.length
  if k < n && k > 0
    element = array.slice!(-k, k) # .slice! : Remove e retorna os elementos removidos
    return  element + array       # O operador + retorna um novo array concatenado (união) dos dois arrays
  else
    return array
  end
end
input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 3
puts input.inspect # .inspect: Retorna a nova String formada pela chamada do método
puts rotateArray(input, k).inspect
