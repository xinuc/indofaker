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
        %w(Kota Kabupaten).rand
      end

      def city_suffix
        %w(Pusat Baru Lama Timur Barat Selatan Utara).rand
      end

      def city
        [
          '%s%s %s' % [city_prefix_nospace, ampas.downcase, city_suffix],
          '%s%s' % [city_prefix_nospace, ampas.downcase],
          '%s %s %s' % [city_prefix, ampas, city_suffix],
          '%s %s %s' % [city_prefix, ampas, city_suffix],
          '%s %s' % [city_prefix, ampas],
          '%s %s' % [ampas, city_suffix]
        ].rand
      end

      def street_prefix
        %w(Jl. Jalan Jl Desa Kompleks Perumahan Kelurahan).rand
      end
      def street_suffix
        %w(Raya Indah Baru Lama Timur Barat Selatan Utara Permai Asri Tengah Pusat Sari Tenggara Atas Bawah).rand
      end

      def fruit
        %w(Anggur Apel Alpukat Belimbing Benda Binjai Bisbul Burahol Cabai Cempedak Ceplukan Ceremai Ceri Coklat Delima Duku Durian Enau Gandaria Gowok Jamblang Jambu Mawar Jeruk Kapulasan Kawista Kecapi Kedondong Kelapa Kemang Kepel Kersen Kesemek Kiwi Kokosan Kurma Lai Langsat Lemon Lengkeng Nanas Nangka Pepaya Persik Pisang Salak SawoSemangka Sirsak Siwalan Srikaya Stroberi Sukun Terap Terong Tomat Waluh).rand
      end

      def island
        %w(Abang Aceh Adi Adonara Aiduma Air Aleabahi Alimantan Alor Ambelau Ambon Anak Anano Anda Angin Ariagai Armadures Aru Atau Aur Ayer Ayu Babar Babi Bacan Bagian Bahubulu Bakau Bakealu Bakong Bali Balu Banggai Bangka Bangkaru Banta Banten Bapang Barat Batam Batang Batanta Batu Batuala Batulumbung Batunderang Bawean Bawulu Belitung Bengdarat Bengkalis Bengkoang Bengkulu Benuwa Bero Besar Besi Biaha Biak Biaro Biawak Bidadari Bilang-bilangan Binongko Bintan Bisa Boana Bojo Bokori Bonerate Breueh Brothers Buang Buaya Bugi Bukide Bulan Bulu Bunaken Bunyu Buru Burung Buton Buwan Candikian Cangkir Cemara Cempedak Cendekian Ceningan Cilik Daerah Dagasuli Dai Dalam Damalawa Damar Dan Dangar-besar Daram Darussalam Derawan Dki Dolak Dompo Dumarchen Edam Ende Enggano Enu Fam Flores Fordate Gag Gam Ganteng Gebe Gede Gelam Geleang Genting Gersik Geser Gili Giri Gola Gorong Gorontalo Gosong Gosonglaga Gundul Halmahera Handeuleum Harapan Hari Haruk Hasil Hinako Hoga Inggelang Irian Istimewa Jakarta Jambi Jampea Jarongan Jatisari Jawa Jemaja Jernih Jin Jna Kabaena Kabaruan Kadapang Kadatua Kahatola Kaholifano Kahyangan Kai Kaimeer Kakaban Kalambau Kalangbau Kalao Kalaotoa Kaledupa Kali Kalimantan Kamalusu Kamanisan Kambangan Kangean Kapala Kapota Karakelang Karamain Karame Karang Karanmanjat Karas Karimata Karimun Karimunjawa Kasiruta Kasiui Katang Katela Kawi-kawi Kawio Kayee Kayoa Kayu Kayuadi Kean Kecil Kelapa Kelemar Kelor Kembar Kemujan Kisar Kmoran Kobror Kofiau Kola Komodo Kotok Krakal Krakatau Kubur Kuil Kumbang Kundur Kur Labangke Labasina Labobo Lagong Laki Lakor Lampung Langee Larat Lasia Laut Laut Legundi Lembaogan Lembe Lemo Lemukutan Lentea Lepar Leti Liang Lifamatola Lingga Liong Lipang Liran Lombien Lombok Lua Luang Madi Madura Maginti Maikoor Makassar Makian Malamala Maloang Maluku Mamanuk Manadotua Manai Manawoka Mandioli Mangole Maniang Manipa Mantehage Manuk Mapia Mapor Mare Marongan Masalembu Masaloka Masela Masokut Maswaar Matahari Matak Meares Medang Mega Mekonane Mencawakan Menjangan Mentawai Menui Menyawakan Merak Miangas Midai Misol Moa Moaor Mojo Molu Mondoliko Moresa Morotai Moyo Mrican Muar Muara Mubur Mules Muna Musala Nanas Nanggroe Nasi Nasik Natuna Ngali Nias Num Numfor Nunukan Nusa Nusadua Nuswotar Nyamuk Obi Obilatu Onrust Otangale Pabelokan Padamarang Padang Pagai Pahepa Pakse Paleng Paliat Palue Pamagaran Pamana Pamujan Panaitan Panembangan Panggang Pangururan Panjang Pantar Pantara Papa Papua Parang Pari Pasaran Pasi Pasige Patudaka Pejantan Pelandan Pelangi Pelapis Pemarung Penambulan Penasi Pengibu Pengki Penida Penike Peniki Penjuring Peucang Peunasu Pinang Pinggir Pini Piramida Pisang Poat Pongok Puteri Raiba Rakal Rakata Raki Rakit Rambut Rangku Rangsang Raya Rempang Reusam Riau Rinca Romang Rondo Room Rote Ruang Rumberpon Runduma Rupat Rusa Sabira Sabuda Sagori Sakambing Saktu Salaut Salawati Salibabu Salira Salue Sambu Sanana Sandin Sangalaki Sangeang Sangiang Sangihe Sangir Sapanjang Saparua Saponda Sawu Sayafi Sayang Sbuku Sebatik Sebesi Sebuku Selaru Selatan Selayar Selur Semai Semama Sembilan Semua Semujur Sepa Sera Seram Serangan Serasa Seribu Sermata Sertung Serua Seruni Serutu Seumut Siau Siberut Siduamata Simeuleuceut Simeulue Singkep Sintok Siompu Solor Subi Sula Sulawesi Sumatera Sumatra Sumba Sumbawa Supiori Surunggading Tabuan Tabuang Tahulandang Taikabo Taliabo Talisei Tambako Tambangan Tambelan Tampurung Tanabala Tanah Tanahmasa Tanakeke Tanet Tanimbar Tanjung Tanjungbaju Tapah Tapat Tarakan Tarempa Tayandu Tehang Telaga Telo Teluk Temaju Temiyang Tengah Tengar Tenggara Tepekog Terbang Terentang Ternate The Theo Tidore Tidung Timau Timor Timpaus Timur Timurbira Tinopo Tioor Tiworo Tobea Togian Tokong Tomia Trumon Tuangku Tubalai Tujuh Tukang Tulo Ujir Uma Untung Uta Utara Waigeo Waitonga Wakde Wakiwolu Walir Wangi-wangi War Watubela Wayang Weh Wetan Wetar Witau Wowoni Wuliaru Yamdena Yamna Yapen Yogyakarta).rand
      end

      def ampas
        [fruit, island].rand
      end

      def street_name
        [
          Proc.new { [street_prefix, ampas].join(' ') },
          Proc.new { [street_prefix, ampas, street_suffix].join(' ') }
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