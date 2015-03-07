class BinarySearch < Hashie::Dash
  property :size, default: 100
  property :low, default: 0

  def mid
    (low + (size - 1))/2
  end

end