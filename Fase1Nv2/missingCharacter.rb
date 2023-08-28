alfabeto = ('a'..'z').to_a
print 'Digite uma frase: '
frase = gets.chomp
letras_presentes = frase.downcase.scan(/[a-z]/).uniq
letras_faltantes = alfabeto - letras_presentes

puts "A Frase digitada é: #{frase}!\n"

if letras_faltantes.empty?
  puts "A frase é um pangrama!"
else
  puts " Faltam as letras: #{letras_faltantes.join(', ')}"
end
