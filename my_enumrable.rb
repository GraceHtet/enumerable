module MyEnumerable
  def all?
    each { |x| return false unless yield(x) }
    true
  end

  def any?
    each { |x| return true if yield(x) }
    false
  end

  def filter
    new_arr = []
    each { |x| new_arr << x if yield(x) }
    new_arr
  end
end
