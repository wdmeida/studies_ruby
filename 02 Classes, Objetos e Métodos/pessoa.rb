#coding:utf-8
#define a classe
class Pessoa

=begin
	#Cria um método initialize, analago a um construtor.
	def initialize(nome)
		puts "Criando nova Pessoa"
		@nome = nome
	end
	#define um método
	def muda_nome(novo_nome)
		#Atributos da classe devem ser precedidos por @.
		@nome = novo_nome
	end

	def diz_nome
		"meu nome é #{@nome}"
	end
=end

	def nome # acessor (getter)
		@nome
	end

	def nome=(novo_nome) #(setter)
		@nome = novo_nome
	end
end

pessoa = Pessoa.new
pessoa.nome=("José")
puts pessoa.nome

#Parou no 4.12