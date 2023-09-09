=begin
  Dadas três pilhas de números positivos, a tarefa é encontrar a possível soma máxima
  igual das pilhas com a remoção dos elementos superiores permitida. As pilhas são
  representadas como uma matriz e o primeiro índice da matriz representa o elemento
  superior da pilha.
=end

def maxEqualSum(stack1, stack2, stack3)

  stacks = [stack1, stack2, stack3]
  stacks.each do |stack|   #Realizo a ordenação e inverto para que as primeiras posições tenham os maiores valores.
    stack.sort!.reverse!
  end

  sum1 = stack1.sum
  sum2 = stack2.sum
  sum3 = stack3.sum

  puts "S1: #{sum1}, S2: #{sum2}, S3: #{sum3}"

  if sum1 == sum2 && sum2 == sum3 && sum3 == 0
    return 0
  end

  loop = true

  while(loop) do
    if sum1 == sum2 && sum2 == sum3
      loop = false
      return sum1
    elsif sum1 > sum2 && sum1 > sum3
      stack1.delete_at(0)
      sum1 = stack1.sum
      puts "Stack1 : #{stack1.inspect}"
    elsif sum2 > sum1 && sum2 > sum3
      stack2.delete_at(0)
      sum2 = stack2.sum
      puts "Stack2 : #{stack2.inspect}"
    elsif sum3 > sum1 && sum3 > sum2
      stack3.delete_at(0)
      sum3 = stack3.sum
      puts "Stack3 : #{stack3.inspect}"
    end

    if stack1.length == 1
      return sum1
    elsif stack2.length == 1
      return sum2
    elsif stack3.length == 1
      return sum3
    end
    puts "S1: #{sum1}, S2: #{sum2}, S3: #{sum3}"
  end
end


s1 = [3, 2, 1, 1, 1]
s2 = [4, 3, 2]
s3 = [ 2, 5, 4, 1]

puts maxEqualSum(s1, s2, s3)
