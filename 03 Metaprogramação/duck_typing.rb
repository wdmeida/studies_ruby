#coding: utf-8

class Franquia
	def info
		puts "Restaurante faz parte da franquia"
	end
end

#Cria uma classe que é uma subclasse de Franquia (< herda de).
class Restaurante < Franquia
	#Sobrescreve o método info da classe mãe.
	def info
		super
		puts "Restaurante Fasano"
	end
end

#Recebe a franquia e invoca o método info
def informa(franquia)
	franquia.info
end

#cria um objeto e exibe suas informações
restaurante = Restaurante.new

#Em ruby não é necessário utilizar pareteses nos atributos a serem passados a um método.
informa restaurante
