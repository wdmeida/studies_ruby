=begin
class Pessoa
	#dados da classe
end

#Se classes são objetos, podemos definir métodos de classe como em qualquer objeto.
def Pessoa.pessoas_no_mundo
	100
end

puts Pessoa.pessoas_no_mundo

Há um idiomismo para definir os métodos de classe dentro
da própria definição da classe, onde self aponta para o
pŕoprio objeto classe.
=end

class Pessoa
	def self.pessoas_no_mundo
		100
	end
end