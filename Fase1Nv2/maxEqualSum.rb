=begin
  Dadas três pilhas de números positivos, a tarefa é encontrar a possível soma máxima
  igual das pilhas com a remoção dos elementos superiores permitida. As pilhas são
  representadas como uma matriz e o primeiro índice da matriz representa o elemento
  superior da pilha.
=end
require 'set'
def maxEqualSum(stack1, stack2, stack3)
  n1 = stack1.length
  n2 = stack2.length
  n3 = stack3.length

  suffix = [0] * (n3 + 1)
  st1 = Set.new
  st2 = Set.new

  sum1 = 0
  (n1 - 1).downto(0) do |i|
    sum1 += stack1[i]
    st1.add(sum1)
  end

  #puts st1.inspect

  sum2 = 0
  (n2 -1).downto(0) do |i|
    sum2 += stack2[i]
    st2.add(sum2)
  end

 # puts st2.inspect

  (n3 - 1).downto(0) do |i|
    suffix[i] = suffix[i + 1] + stack3[i]
  end

#  puts suffix.inspect

  suffix.each do |value|
    if st1.include?(value) && st2.include?(value)
      return value
    end
  end
  return 0
end


s1 = [3, 2, 1, 1, 1]
s2 = [4, 3, 2]
s3 = [2, 5, 4, 1]

puts s1.inspect
puts s2.inspect
puts s3.inspect
puts "A soma máxima igual dos vetores dados só pode ser: #{maxEqualSum(s1, s2, s3)}"
