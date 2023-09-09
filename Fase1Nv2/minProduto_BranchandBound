#Abordagem simplificada de branch and bound

def min_product_subset(arr)
  n = arr.length
  selected_indices = []

  def calculate_product(arr, selected_indices)
    product = 1
    selected_indices.each do |index|
      product *= arr[index]
    end
    product
  end

  def branch_and_bound(arr, selected_indices, min_product)
    n = arr.length

    if selected_indices.length == n
      # Condição de parada: todos os elementos selecionados
      return min_product
    end

    current_product = calculate_product(arr, selected_indices)

    if current_product < min_product
      min_product = current_product
    else
      return min_product  # Poda
    end

    for i in (selected_indices.empty? ? 0 : selected_indices.last + 1)...n
      selected_indices.push(i)
      min_product = branch_and_bound(arr, selected_indices, min_product)
      selected_indices.pop
    end

    min_product
  end

  min_product = branch_and_bound(arr, selected_indices, Float::INFINITY)
  min_product
end

# Exemplo de uso:
array = [ -1, -1, -2, 4, 3 ]
puts min_product_subset(array)

array = [ -1, 0 ]
puts min_product_subset(array)

array = [ 2, -3, 1, 0, -5 ]
puts min_product_subset(array)
