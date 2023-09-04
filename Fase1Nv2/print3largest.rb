def print3largest(arr)
  if arr.length < 3
    return false
  else
    terc = -1.0/0
    segu = -1.0/0
    prim = -1.0/0
    arr.each {|number|  #Foreach sem alterar o array
    if number > prim
      terc = segu
      segu = prim
      prim = number
    elsif number > segu
      terc = segu
      segu = number
    elsif number > terc
      terc = number
    end
    }
    return {First:prim, Second:segu, Third: terc}
  end
end

input = [10, 4, 3, 50, 23, 90]
resultado = print3largest(input)
puts "\n Os três maiores elementos são: #{resultado[:First]}, #{resultado[:Second]} e #{resultado[:Third]}\n"
