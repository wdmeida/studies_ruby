=begin
	Para manipular arquivos de texto existe a classe
	File, que permite manipulá-los de maneira bastante
	simples, utilizando blocos:
	
=end

print "Escreva um texto: "
texto = gets
File.open("caelum.txt","w") do |f|
	f << texto
end

=begin
#Para imprimir o conteúdo basta:
Dir.entries("caelum").each do |file_name|
	idea = File.read(file_name)
	puts idea
end
=end

#Podemos lidar de maneira similar com requisições http.
require 'net/http'
Net::HTTP::start('www.caelum.com.br', 80) do |http|
	print(http.get('/').body)
end