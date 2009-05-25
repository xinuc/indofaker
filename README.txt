= indofaker

* http://github.com/xinuc/indofaker

== DESCRIPTION:

Indonesian Faker, cause "good" fakes are important here :).
see http://faker.rubyforge.org/

== FEATURES/PROBLEMS:

* Indonesian name
* Indonesian address
* Indonesian phone number

== SYNOPSIS:

use <code>require 'indofaker'</code> instead of <code>require 'faker'</code>

  irb(main):001:0> require 'rubygems'
  => true
  irb(main):002:0> require 'indofaker'
  => true
  irb(main):003:0> Faker::Name.first_name
  => "Riry"
  irb(main):007:0> Faker::Name.last_name
  => "Hanifah"
  irb(main):012:0> Faker::Name.name
  => "Hj. Rifal Sutaprawira S.H"
  irb(main):023:0> Faker::Address.city
  => "Cigandaria"
  irb(main):029:0> Faker::Address.street_name
  => "Jl. Apel Sari"
  irb(main):031:0> Faker::Address.street_address
  => "Kelurahan Kesemek Permai No. 475"
  irb(main):032:0> Faker::Address.street_address(true)
  => "Jalan Cempedak No. 60 RT 67, RW 70"
  irb(main):033:0> Faker::Address.province
  => "Sulawesi Selatan"
  irb(main):034:0> Faker::Address.zip_code
  => "68775"
  irb(main):039:0> Faker::Address.full_address
  => "Jl Runduma No. 73T RT 67, RW 36, Kabupaten Jamblang, 47870, Sumatera Utara"
  irb(main):041:0> Faker::Internet.email
  => "januar@oentung.or.id"
  irb(main):045:0> Faker::Internet.free_email
  => "inardy.tanamas@yahoo.com"
  irb(main):046:0> Faker::PhoneNumber.phone_number
  => "+62843614640402"

== REQUIREMENTS:

* faker
* hoe

== INSTALL:

install faker & hoe gem if you haven't

  sudo gem install hoe
  sudo gem install faker

install xinuc-indofaker from github.com

  sudo gem install xinuc-indofaker --source=http://gems.github.com

== LICENSE:

Copyright (c) 2009 Nugroho Herucahyono

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
