#coding:utf-8

class Restaurante
	def initialize(nome)
		puts "Criando um novo restaurante: #{nome}"
		#Verifica através da notação ||= se a váriavel de classe foi inicializada.
		#Caso não tenha sido inicia com o valor informado, no caso 0.
		@@total ||= 0
		@@total = @@total + 1
		@nome = nome
	end

=begin
	Se você trabalha com java pode confundir o self com o static. Cuidado! O método
	definido como self roda apenas na classe, não funciona nas instâncias. Você pode
	testar fazendo
		Restaurante.relatorio
		restaurante_um.relatorio
	A invocação na instância dará um: NoMethodError: undefined method 'relatorio' for 
	#<Resturante:0x100137b48 @nome="Fasano",@nota=10>
=end
	class << self
		def relatorio
			puts "Foram criados #{@@total} restaurantes."
		end
	end
end

#Cria dois restaurantes e verifica se a variável de classe foi inicializada.
r = Restaurante.new('Fogo no Rabo')
d = Restaurante.new('Goziga')
Restaurante.relatorio