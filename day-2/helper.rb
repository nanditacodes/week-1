module Helper

 TYPE_FAMILY = "family"
 TYPE_CLIENT = "client"

 TYPE_INPUT_EMAIL = 1
 TYPE_INPUT_PHONE = 2

  def handle_error_code(error_codes)
    if (error_codes.length > 0)
      error_codes.each do |error|
        if error == :error_in_email
          puts "Email is invalid; must contain .com or .net. Try again."
        elsif (error == :error_in_phone)
          puts "Phone number is invalid; must contain only digits. Try again."
        end
      end

    end

  end





  def is_valid(input, type)
    ret_val = false
    case type
     when TYPE_INPUT_EMAIL
       # At present just check for .com and .net
       if ( input =~ /.com/  || input =~ /.net/)
         ret_val = true
       end
     when TYPE_INPUT_PHONE
       # At present just check that they are all digits
       if ( input =~ /^\d+$/)
         ret_val = true
       end
     end
   end


end
