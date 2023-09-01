### Encontrar a data futura mais próxima
require 'date'

def nextClosestDate(arr, query)
  formatDate = "%d/%m/%Y"
  newArr = []
  arr.each{|data|
    newArr << Date.strptime(data, formatDate)
  }
  newQuery = []
  query.each{|data|
    newQuery << Date.strptime(data, formatDate)
  }
  newArr.sort
  newArr.reverse

  resposta = []

  newQuery.each{|data|
    newArr.each{|dataf|
    if dataf > data do
        futuro = dataf
    else
        futuro = -1
    end
    }
    resposta << futuro
  }

  resposta.collect{|i| puts i.strftime(formatDate)}
end






#entradas:
arr = ['22/4/1233', '1/3/633', '23/5/56645', '4/12/233']
puts arr.inspect
query = ["23/3/4345", "12/3/2"]
puts query.inspect

nextClosestDate(arr, query)

formatDate = "%d/%m/%Y"

data1 = "31/08/2024"
data2 = "30/08/2023"

day1 = Date.strptime(data1, formatDate)
puts day1
day2 = Date.strptime(data2, formatDate)

puts (day1 - day2).class
