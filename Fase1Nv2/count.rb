input = '#GeeKs01 fOr@gEEks07'
upper = 0
lower = 0
number = 0
special = 0

if input.length > 0
  for e in input.chars do
    if e.ord >= 65 and e.ord <=90
      upper += 1
    elsif e.ord >= 97 and e.ord <=122
      lower += 1
    elsif e.ord >= 48 and e.ord <=57
      number += 1
    else
      special += 1
    end
  end
end

puts "\n Maiúsculas =  #{upper}\n Minúsculas = #{lower}\n números = #{number}\n caracteres especiais = #{special}\n"
