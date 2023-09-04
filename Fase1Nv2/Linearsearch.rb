def search(arr, valor)
  i = 0
  for element in arr
    i += 1
    if element == valor
      return i
    end
  end
end
