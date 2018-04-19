require 'byebug'
# Within this file I will be practicing writing my own versions of ruby Array
#methods
class Array

  #Each method
  def my_each(&blc)
    self.length.times do |el|
      blc.call(self[el])
    end
    self
  end

  #Select
  def my_select(&blc)
    result_arr = []
    self.my_each do |el|
      if blc.call(el) == true
        result_arr << el
      end
    end
    result_arr
  end

  #Reject
  def my_reject(&blc)
    result_arr = []
    self.my_each do |el|
      if blc.call(el) == false
        result_arr << el
      end
    end
    result_arr
  end

  #Any
  def my_any(&blc)
    self.my_each do |el|
      if blc.call(el) == true
        return true
      end
    end
    false
  end

  #All
  def my_all(&blc)
    self.my_each do |el|
      if blc.call(el) == false
        return false
      end
    end
    true
  end
  #Flatten
  def my_flatten
    result_arr = []
    self.my_each do |el|
      if el.is_a?(Array)
        result_arr.concat(el.my_flatten)
      else
        result_arr << el
      end
    end
    result_arr
  end

  #Zip
  # def my_zip(*arr)
  #   result_arr = []
  #   self.my_each do |el|
  #
    # end

  #Rotate
  def my_rotate(num = 1)
    offset = num % self.length
    self.drop(offset) + self.take(offset)
  end

  #JOIN
  def my_join(str = "")
    result_str = ""
    self.each_with_index do |el, i|
      result_str << el.to_s
      break if i == self.length - 1
      result_str << str
    end
    result_str
  end
  # Reverse
  def my_reverse
    result_arr = []
    self.my_each do |el|
      result_arr.unshift(el)
    end
    result_arr
  end
end
