#coding: utf-8

#Módulos podem ser usados como namespaces:

module Caelum
	module Validadores
		class ValidadorDeCpf
			#...
		end

		class ValidadorDeRg
			#...
		end
	end
end

validador = Caelum::Validadores::ValidadorDeCpf.new

#Também podem ser usados como mixins, conjunto de métoos a ser incluso em outras classes.

module Comentavel
	def comentarios
		@comentarios ||= []
	end

	def recebe_comentario(comentario)
		self.comentarios << comentario
	end
end

class Revista 
	include Comentavel
	# ...
end

revista = Revista.new
revista.recebe_comentario("Muito ruim!")
puts revista.comentarios