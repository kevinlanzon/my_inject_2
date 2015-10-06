class Array

  def my_inject(num=nil)
    num ||= self.first
    self[1..-1].each do |elem|
      num = yield(num,elem)
    end
    num
  end
end