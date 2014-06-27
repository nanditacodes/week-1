require './helper.rb'


class SimpleContact

  include Helper

  attr_accessor :last_name, :first_name, :email, :phone, :error_codes

  def initialize (first_name, last_name, email, phone)

    @error_codes = []

    @first_name, @last_name = first_name, last_name

    if(!is_valid(email, TYPE_INPUT_EMAIL))
      @error_codes << :error_in_email
    end

    if (!is_valid(phone, TYPE_INPUT_PHONE))
      @error_codes << :error_in_phone
    end

    if error_codes.length == 0
      @email, @phone = email, phone
    end
  end


  def send_greeting
    puts ""
    puts "Hello #{@first_name} #{@last_name}"
  end

end

class Client < SimpleContact
  def initialize (first_name, last_name, email, phone)
    super
    handle_error_code(@error_codes)
  end


  def send_greeting
    super
    if (error_codes.length == 0)
      puts "Thank you for your business!"
    end
    puts "---------------------"
  end
end



class Family < SimpleContact
  def initialize (first_name, last_name, email, phone)
    super
  end

  def send_greeting
    super
    handle_error_code(@error_codes)
    if (error_codes.length == 0)
      puts "see you this weekend!"
    end
    puts "---------------------"
  end

end

my_contact1 = Family.new('Jane', 'Doe', 'nan.raj@gmail.cm','5552344567')
my_contact1.send_greeting()

my_contact2 = Client.new('John', 'Doe', 'john.doe@gmail.net','45634556565')
my_contact2.send_greeting()
