class Array

  def my_inject
    sum = 0
    self.each { |i| sum += i }
    sum
  end
end
