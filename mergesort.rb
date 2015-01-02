module Sort
	class Mergesort
		def initialize(arry)
			@opts = 0
      p "Input array: #{arry}, size is #{arry.length} elements"
			start = Time.now
      result = split(arry)
      stop = Time.now
			p "Sorted array: #{result}"
			puts "Result took #{(stop - start) * 1000} milliseconds, #{@opts} operations"
		end

		def split (arry)
			if arry.length == 1
				arry
			else
				arry.length%2 == 0 ? size = arry.length/2 : size = arry.length/2 + 1
				list = arry.each_slice(size).to_a
				## uncomment next two lines to see the splitting
				# print "#{list[0]}, #{list[1]}"
				# puts
				merge(split(list[0]),split(list[1]))
			end
		end

		def merge(lista, listb)
			answer = []
			while (lista.length > 0 || listb.length > 0) do
				@opts = @opts + 1
        if (lista.length == 0)
					answer = answer + listb
					listb = []
				elsif (listb.length == 0)
					answer = answer + lista
					lista = []
				elsif (lista[0].to_i <= listb[0].to_i)
					answer << lista[0]
					lista.delete_at(0)
				else
					answer << listb[0]
					listb.delete_at(0)	
				end				
      end
 			answer
		end
	end
end

m = Sort::Mergesort.new([2,33,4,55,63,21,55,67,86,43,98,62,87,91,1,22,11,9,6,114,110,412,62])