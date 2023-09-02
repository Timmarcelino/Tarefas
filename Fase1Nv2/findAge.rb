require 'date'

def findAge(dataNasc, data)
  formatDate = "%d/%m/%Y"
  nasc = Date.strptime(dataNasc, formatDate)
  dataInformada = Date.strptime(data, formatDate)
  #hoje = Date.today


  anos = (dataInformada - nasc).to_i / 365

  #Se o dia já tiver passado então é o hoje - dia do nascimento
  if nasc.mday > dataInformada.mday
    dias = (dataInformada - Date.new((dataInformada -31).year, (dataInformada-31).mon, nasc.mday)).to_i
    if nasc.mon > dataInformada.mon
      meses = (12 - nasc.mon) + dataInformada.mon
    else
      meses = dataInformada.mon - nasc.mon
    end
  else
    dias = dataInformada.mday - nasc.mday
    if nasc.mon > dataInformada.mon
      meses = (12 - nasc.mon) + dataInformada.mon + 1
    else
      meses = dataInformada.mon - nasc.mon + 1
    end
  end

  puts nasc.strftime(formatDate)
  puts dataInformada.strftime(formatDate)
  puts "#{anos} anos, #{meses} meses e #{dias} dias desde o nascumento"

end

#Entrada de dados

diaN = '23'
mesN = '01'
anoN = '1981'

diaI = '02'
mesI = '09'
anoI = '2023'

dataNascimento = diaN.to_i.to_s + '/' + mesN.to_i.to_s + '/' + anoN.to_i.to_s
dataInserida = diaI.to_i.to_s + '/' + mesI.to_i.to_s + '/' + anoI.to_i.to_s

findAge(dataNascimento, dataInserida)
