### Encontrar a data futura mais próxima
require 'date'

def nextClosestDate(arr, query)
  formatDate = "%d/%m/%Y"
  newArr = []
  arr.each{|data|
    newArr << Date.strptime(data, formatDate)
  }
  newArr.sort
  newQuery = []
  query.each{|data|
    newQuery << Date.strptime(data, formatDate)
  }
  resposta = []

  for data in newQuery
    futuro = -1
    for dataf in newArr
       if dataf > data
         futuro = dataf
         break
       end
    end
    resposta << futuro
  end

  puts resposta
  #resposta.each { |i| puts i.strftime(formatDate) }
end

#entradas:
arr = ['22/4/1233', '1/3/633', '23/5/56645', '4/12/233']
puts arr.inspect
#query = ["23/3/4345", "12/3/2"]
query = ["4/4/34234234"]
puts query.inspect
nextClosestDate(arr, query)

