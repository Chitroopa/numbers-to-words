class Fixnum
  define_method(:number_to_word) do
    number_word = {
      0=>"zero", 1=>"one", 2=>"two", 3=>"three" , 4=>"four", 5=>"five",
      6=>"six", 7=>"seven", 8=>"eight" , 9=>"nine", 10=>"ten",
      11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen",
      16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"nineteen",
      20=>"twenty", 30=>"thirty", 40=>"fourty", 50=>"fifty",
      60=>"sixty", 70=>"seventy", 80=>"eighty", 90=>"ninety" , 100=>"hundred", 1000=>"thousand"
    }
    divisibles = [1000,100,10]
    result_array =[]
    number_length = self.to_s().length()
    if number_word.include?(self)
      result_array.push(number_word.fetch(self))
    # end
    #   reminder = self.%(10)
    #   quotient = self./(10).floor()
    # divisibles.each_with_index() do |divisor, index, |
    #
    # end

    elsif self.<=(99)
      reminder = self.%(10)
      quotient = (self./(10).floor()).*(10)
      result_array.push(number_word.fetch(quotient).concat(" ").concat(number_word.fetch(reminder)))
    elsif self.<=(999)
      reminder = self.%(100)
      quotient = self./(100)
      result_array.push(number_word.fetch(quotient).concat(" hundred "))
      if reminder > 0
        new_reminder = reminder.%(10)
        quotient = (reminder./(10).floor()).*(10)
        result_array.push("and ".concat(number_word.fetch(quotient).concat(" ").concat(number_word.fetch(new_reminder))))
      end
    end
    result_array.join()
  end
end
