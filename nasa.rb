#desarrollado por brayan valdebenito
'HTTParty'
require 'uri'
require 'net/https'
require 'openssl'
require 'json'
require_relative 'html_builder'
#get con ruby vainilla, quedando como funcion
def get_api
    # url base 
    url = URI("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=10&api_key=XDYqviunvXprkLDY44hNeWnLBA1gXgvRgpqp5odz")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(url)
    response = http.request(request)
    JSON.parse(response.read_body)
end


#get con httparty
def get_gem
    base_uri 'https://api.nasa.gov'
end
# puts get_api()

metodo = get_api()
fotos  = get_api()['photos']
puts id = get_api()['photos'][1]['id']
# fotos = metodo['photos']

File.open('index.html','w') do |f|
    f.puts head
    # photos_count = fotos.size
    # f.puts "<p> Cantidad de fotos :#{photos_count}</p> "
    f.puts "<div class='row row-cols-1 row-cols-md-4 row-cols-xl-4 g-4 container '>"

    fotos.each do|photo|
        f.puts card(photo['img_src'],photo['id'])
    end
    f.puts "</div>"
    f.puts footer
end
