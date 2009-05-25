module Faker
  class Address
    class << self
      def zip_code
        Faker.numerify('#####')
      end

      def city_prefix_nospace
        %w(Ci Karang Wono).rand
      end
      
      def city_prefix
        %w(Kota).rand
      end

      def city_suffix
        %w(Pusat Baru Lama Timur Barat Selatan Utara).rand
      end

      def city
        [
          '%s%s %s' % [city_prefix_nospace, Name.first_name.downcase, city_suffix],
          '%s%s' % [city_prefix_nospace, Name.first_name.downcase],
          '%s %s %s' % [city_prefix, Name.first_name, city_suffix],
          '%s %s' % [city_prefix, Name.first_name],
          '%s%s' % [Name.first_name, city_suffix],
          '%s%s' % [Name.last_name, city_suffix],
        ].rand
      end

      def street_prefix
        %w(Jl. Jalan Jl Desa Kompleks Perumahan Kelurahan).rand
      end
      def street_suffix
        %w(Raya Indah Baru Lama Timur Barat Selatan Utara Permai Asri Tengah Pusat Sari Tenggara Atas Bawah).rand
      end

      def fruit
        %w(Apel Jambu Pepaya).rand
      end

      def street_name
        [
          Proc.new { [street_prefix, fruit].join(' ') },
          Proc.new { [fruit, street_suffix].join(' ') },
          Proc.new { [street_prefix, fruit, street_suffix].join(' ') }
        ].rand.call
      end

      def street_address(include_secondary = false)
        Faker.letterify_upcase(Faker.numerify(['%s No. ##' % street_name,'%s No. ##?' % street_name,'%s No. ###' % street_name].rand)) + (include_secondary ? ' ' + secondary_address : '')
      end

      def secondary_address
        [Faker.numerify('RT ##, RW ##'), Faker.letterify_upcase('Blok ?')].rand
      end

      def province
       "Nanggroe Aceh Darussalam,Sumatera Utara,Sumatera Barat,Riau,Jambi,Sumatera Selatan,Bengkulu,Lampung,Kepulauan Bangka Belitung,Kepulauan Riau,DKI Jakarta,Jawa Barat,Jawa Tengah,Yogyakarta,Jawa Timur,Banten,Bali,Nusa Tenggara Barat,Nusa Tenggara Timur,Kalimantan Barat,Kalimantan Tengah,Kalimantan Selatan,Kalimantan Timur,Sulawesi Utara,Sulawesi Tengah,Sulawesi Selatan,Sulawesi Tenggara,Gorontalo,Sulawesi Barat,Maluku,Maluku Utara,Papua Barat,Papua".split(",").rand
      end

      def full_address
        [street_address(true), city, zip_code,province].join ' '
      end

    end
  end
end