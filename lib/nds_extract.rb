$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
 director_index = 0
 total  = {}
 
 while director_index < nds.length do 
   director = directors_database[director_index]
   total[director] = 0 
   movie_index = 0 
   
   
   while movie_index < nds[director][:movies].length do 
     total[director] += nds[director][:movies][movie_index][:worldwide_gross]
     movie_index += 1
   end
 
   director_index += 1
 end
 
   totals
end
