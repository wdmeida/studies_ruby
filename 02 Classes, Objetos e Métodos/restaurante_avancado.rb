#coding:utf-8

#Cria uma classe
class Restaurante
#Define um atributo acessor para a classe.	
attr_accessor :nota

	#Cria um método initialize para o objeto (analogo ao construtor)
	def initialize(nome)
		puts "Criando um novo restaurante: #{nome}"
		#Atribui o nome recebido a uma variável de instância para que fique guardado
		@nome = nome
	end

=begin
	#propriedades
	def nota=(nota) #Setter
		@nota = nota
	end

	def nota #Getter
		@nota
	end
=end
	#declaração do método
	def qualifica(msg="Obrigado")
		puts "A nota do restaurante #{@nome} foi #{@nota}. #{msg}"
	end
end

#Instancia os objetos
restaurante_um = Restaurante.new("Fasano")
restaurante_dois = Restaurante.new("Fogo de Chao")

#Atribui a nota aos restaurantes
restaurante_um.nota = 10
restaurante_dois.nota = 1

#chamada do método
restaurante_um.qualifica
restaurante_dois.qualifica("Comida ruim.")