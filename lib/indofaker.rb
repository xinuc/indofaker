require "rubygems"
require "faker"

require "indofaker/address"
require "indofaker/internet"
require "indofaker/name"
require "indofaker/phone_number"

module Faker
  def self.letterify_upcase(letter_string)
    letter_string.gsub(/\?/) { ('A'..'Z').to_a.rand }
  end
end