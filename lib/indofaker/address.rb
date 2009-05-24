module Faker
  class Address
    class << self
      def zip_code
        Faker.numerify('#####')
      end

      def city_prefix
        %w(North East West South New Lake Port).rand
      end

      def city_suffix
        %w(town ton land ville berg burgh borough bury view port mouth stad furt chester mouth fort haven side shire).rand
      end

      def city
        #        [
        #          '%s %s%s' % [city_prefix, Name.first_name, city_suffix],
        #          '%s %s' % [city_prefix, Name.first_name],
        #          '%s%s' % [Name.first_name, city_suffix],
        #          '%s%s' % [Name.last_name, city_suffix],
        #        ].rand
        "Bandung"
      end

      def street_suffix
        %w(Alley Avenue Branch Bridge Brook Brooks Burg Burgs Bypass Camp Canyon Cape Causeway Center Centers Circle Circles Cliff Cliffs Club Common Corner Corners Course Court Courts Cove Coves Creek Crescent Crest Crossing Crossroad Curve Dale Dam Divide Drive Drive Drives Estate Estates Expressway Extension Extensions Fall Falls Ferry Field Fields Flat Flats Ford Fords Forest Forge Forges Fork Forks Fort Freeway Garden Gardens Gateway Glen Glens Green Greens Grove Groves Harbor Harbors Haven Heights Highway Hill Hills Hollow Inlet Inlet Island Island Islands Islands Isle Isle Junction Junctions Key Keys Knoll Knolls Lake Lakes Land Landing Lane Light Lights Loaf Lock Locks Locks Lodge Lodge Loop Mall Manor Manors Meadow Meadows Mews Mill Mills Mission Mission Motorway Mount Mountain Mountain Mountains Mountains Neck Orchard Oval Overpass Park Parks Parkway Parkways Pass Passage Path Pike Pine Pines Place Plain Plains Plains Plaza Plaza Point Points Port Port Ports Ports Prairie Prairie Radial Ramp Ranch Rapid Rapids Rest Ridge Ridges River Road Road Roads Roads Route Row Rue Run Shoal Shoals Shore Shores Skyway Spring Springs Springs Spur Spurs Square Square Squares Squares Station Station Stravenue Stravenue Stream Stream Street Street Streets Summit Summit Terrace Throughway Trace Track Trafficway Trail Trail Tunnel Tunnel Turnpike Turnpike Underpass Union Unions Valley Valleys Via Viaduct View Views Village Village  Villages Ville Vista Vista Walk Walks Wall Way Ways Well Wells).rand
      end

      def street_name
        [
          Proc.new { [Name.last_name, street_suffix].join(' ') },
          Proc.new { [Name.first_name, street_suffix].join(' ') }
        ].rand.call
      end

      def street_address(include_secondary = false)
        Faker.numerify([
            '##### %s' % street_name,
            '#### %s' % street_name,
            '### %s' % street_name
          ].rand + (include_secondary ? ' ' + secondary_address : ''))
      end

      def province
       "Nanggroe Aceh Darussalam,Sumatera Utara,Sumatera Barat,Riau,Jambi,Sumatera Selatan,Bengkulu,Lampung,Kepulauan Bangka Belitung,Kepulauan Riau,DKI Jakarta,Jawa Barat,Jawa Tengah,Yogyakarta,Jawa Timur,Banten,Bali,Nusa Tenggara Barat,Nusa Tenggara Timur,Kalimantan Barat,Kalimantan Tengah,Kalimantan Selatan,Kalimantan Timur,Sulawesi Utara,Sulawesi Tengah,Sulawesi Selatan,Sulawesi Tenggara,Gorontalo,Sulawesi Barat,Maluku,Maluku Utara,Papua Barat,Papua".split(",").rand
      end

    end
  end
end