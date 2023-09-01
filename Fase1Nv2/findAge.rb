require 'date'

def findAge(dataNasc, data)
  formatDate = "%d/%m/%Y"
  nasc = Date.strptime(dataNasc, formatDate)
  dataInformada = Date.strptime(data, formatDate)
  hoje = Date.today

  #age1 = dataInformada - nasc
  age1 = hoje - nasc

  anos = age1.to_i / 365
  meses = (age1.to_i % 365 ) /12

  puts age1.to_i
  puts age1.to_i / 365
  puts  (age1.to_i % 365)
  puts (age1.to_i % 365) / 30

end

#Entrada de dados

diaN = 23
mesN = 01
anoN = 1981

diaI = 23
mesI = 01
anoI = 2023

dataNascimento = diaN.to_s + '/' + mesN.to_s + '/' + anoN.to_s
dataInserida = diaI.to_s + '/' + mesI.to_s + '/' + anoI.to_s

findAge(dataNascimento, dataInserida)
