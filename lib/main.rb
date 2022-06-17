
class Array

    def my_each
      for element in self
        yield element
      end
    end
    
    def my_all?
      result = true
      for element in self
        result = yield element
        break if result == false
      end
      result
    end
  
    def my_count
      count = 0
      if block_given?
        for element in self
          block_is_true = yield element
          count += 1 if block_is_true
        end
      else
        count = self.length()
      end
      count
    end
  
    def my_map
      result = []
      for element in self 
        result.push yield element
      end
      result
    end
  
    def my_any?
      result = false
      for element in self
        result = yield element
        break if result == true
      end
      result
    end
  
    def my_each_with_index
      index = 0
      for element in self
        yield element, index
        index += 1
      end
    end
  
    def my_none?
      result = ''
      for element in self
        result = yield element
        if result
          result = false
          break
        elsif result == false
          result = true
        end
      end
      result
    end
  
    def my_inject(initial_value)
      for element in self
        initial_value = yield initial_value, element
      end
      initial_value
    end
  
    def my_select
      arr = []
      for element in self
        arr.push(element) if yield element
      end
      arr
    end
  end