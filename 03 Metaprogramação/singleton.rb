#coding:utf-8
#Uma classe normal em ruby seria.

class Pessoa
	def fala
		puts 'Oi'
	end
end

#Podemos instanciar e invocar o método normalmente
p = Pessoa.new
p.fala #Imprime oi.

=begin
	Entretanto,também é possível definir métodos apenas para 
	esse objeto p, pois tudo em ruby, até mesmo as classes,
	são objetos, fazendo:		
=end

def p.anda
	puts 'andando'
end

=begin
	O método anda é chamado de singleton method do objeto p.
	Um singleton method vive em uma singleton class. Todo objeto
	em ruby possui 2 classes:
		A classe a qual foi instanciado
		Sua singleton class
	A singleton class é exclusiva para guardar os métodos desse objeto,
	sem compartilhar com outras instâncias da mesma classe.	
=end

#Existe uma notação especial para definir uma singleton class:

class << Menino
	def anda
		puts 'andando'
	end
end

=begin
	Definindo o código dessa forma temos o mesmo que no exemplo anteriror,
	porém definindo o método anda explicitamente na singleton class. É possível
	ainda definrir tudo na mesma classe:

	class Pessoa
		class << self
			def anda
				puts 'andando'
			end
		end
	end

	Mais uma vez o método foi definido apenas para o objeto, no caso, o objeto Pessoa,
	podendo ser executado com:

	Pessoa.anda
=end