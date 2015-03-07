class SearchController < ApplicationController

  def binary_search
    @bin = BinarySearch.new
  end

  def binary_results
    search_initialize(params[:size].to_i, params[:needle].to_i)
  end

  def simple_search

  end

  private
    def search_initialize(list_size, magic_number)
      @start = Time.now

      @list_size = list_size
      @guesses = 0
      @high = list_size
      @low = 0
      guess_count = find(magic_number)

      @stop = Time.now
      @message = "list of size #{list_size}, searching for #{magic_number}. Number of guesses to find:
                        #{guess_count}, took #{(@stop - @start) * 1000} milliseconds"
    end

    def find(magic_number)
      @guesses = @guesses + 1
      mid = (@high + @low) /2
      if mid == magic_number
        return @guesses
      elsif mid > magic_number
        @high = mid - 1
        find(magic_number)
      else
        @low = mid + 1
        find(magic_number)
      end
    end
end
