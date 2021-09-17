#desarrollado por brayan valdebenito
require 'uri'
require 'net/https'
require 'openssl'
require 'json'
require_relative 'htmlBuilder'

def request
    url = URI("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=10&api_key=XDYqviunvXprkLDY44hNeWnLBA1gXgvRgpqp5odz")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(url)
    response = http.request(request)
    JSON.parse(response.read_body)
end

metodo = request()
puts metodo.class

fotos = metodo['photos']

File.open('build_web_page.html','w') do |f|
    f.puts head
    photos_count = fotos.size
    f.puts "<p> Cantidad de fotos :#{photos_count}</p> "
    f.puts "<ul>"
    fotos.each do|foto|
    f.puts "<li><img src = '#{foto['img_src']}' width='400' height= '400' class='img-fluid rounded'></li>"
    f.puts "</ul>"
    end
    f.puts footer
end
