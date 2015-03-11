class SearchController < ApplicationController

  def binary_search
  end

  def binary_results
    binary_initialize(params[:size].to_i, params[:needle].to_i)
  end

  def simple_search
  end

  def simple_results
    simple_initialize(params[:size].to_i, params[:needle].to_i)
  end

  private
    def binary_initialize(list_size, magic_number)
      start = Time.now

      @list_size = list_size
      @guesses = 0
      @high = list_size
      @low = 0
      guess_count = binary_find(magic_number)

      stop = Time.now
      @message = "list of size #{list_size}, searching for #{magic_number}. Number of guesses to find:
                        #{guess_count}, took #{(stop - start) * 1000} milliseconds"
    end

    def binary_find(magic_number)
      @guesses = @guesses + 1
      mid = (@high + @low) /2
      if mid == magic_number
        return @guesses
      elsif mid > magic_number
        @high = mid - 1
        binary_find(magic_number)
      else
        @low = mid + 1
        binary_find(magic_number)
      end
    end

    def simple_initialize(list_size, magic_number)
      @size = list_size.to_i
      start = Time.now
      guess_count = simple_find(magic_number)
      stop = Time.now
      @message = "list of size #{list_size}, searching for #{magic_number}. Number of guesses to find:
                        #{guess_count}, took #{(stop - start) * 1000} milliseconds"
    end

    def simple_find(magic_number)
      count = 0
      (0..@size).each do |x|
        count = count + 1
        if x == magic_number
          return count
        end
      end
    end
end

