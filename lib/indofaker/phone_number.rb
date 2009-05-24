module Faker
  class PhoneNumber
    class << self
      def phone_number
        Faker.numerify(formats.rand)
      end

      def formats
        ['+628##########','+628###########','08##########','08###########','(0##)#######','+62-##-######','(0###)#######','(02##)#######','(02#)#######','0##-#######','0###-#######','(02#)####### x###','(0###)####### x###','0##-####### x###',]
      end
    end
  end
end