class Array

  def bubble_sort
    return self if self.size <= 1 # an array of size 1 is already sorted
    swapped = true
    while swapped do
      swapped = false
      1.upto(self.size-1) do |i|
        if self[i-1] > self[i]
          self[i-1], self[i] = self[i], self[i-1] #this swaps them
          swapped = true #remember there was a swap
        end
      end    
    end
    self
  end

  def quick_sort
    return self if self.length <= 1
    pivot = self.shift
    less = []
    greater = []
    self.each do |num|
      if num <= pivot
        less << num
      else
        greater << num
      end
    end
    return less.quick_sort + [pivot] + greater.quick_sort
  end

end