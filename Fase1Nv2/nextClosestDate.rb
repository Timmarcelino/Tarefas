### Encontrar a data futura mais próxima
require 'date'

def nextClosestDate(arr, query)

  puts arr.inspect
  newArr = []
  arr.each{|data|
    newArr.add
  }


  arr = arr.sort
  puts arr.inspect
  arr.reverse
  puts arr.inspect

end


## Primeiro Ordenar in reverso.
## Comparar cada query para localizar a data futura mais proxima
#Date.strptime('03-02-2001', '%d-%m-%Y')



#entradas:
arr = ['22/4/1233', '1/3/633', '23/5/56645', '4/12/233']
#query = [“23/3/4345”, “12/3/2”]

nextClosestDate(arr, 2)

formatDate = "%d/%m/%Y"

data1 = "31/08/2024"
data2 = "30/08/2023"

day1 = Date.strptime(data1, formatDate)
day2 = Date.strptime(data2, formatDate)

puts (day1 - day2).class
