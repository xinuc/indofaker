module Faker
  class Internet
    class << self
      def free_email(name = nil)
        [ user_name(name), %w(gmail.com yahoo.com hotmail.com yahoo.co.id).rand ].join('@')
      end

      def domain_suffix
        %w(co.id or.id org web.id net com info name).rand
      end
    end
  end
end