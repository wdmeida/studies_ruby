#coding: utf-8

#Ruby também tem suporte a herança simples de classes:
class Animal
	def come
		"comendo"
	end
end

class Pato < Animal
	def quack
		"Quanck"
	end
end

pato = Pato.new
puts pato.come

=begin
	Classes filhas herdam todos os métodos definidos na classe mãe.

	A tipagem em Rubu não é explícita, por isso não precisamos declarar quais são
	os tipos dos atributos. Veja este exemplo:
=end
class PatoNormal
	def faz_quack
		"Quack!"
	end
end

class PatoEstranho
	def faz_quack
		"Queck!"
	end
end

#Classe que manipulara as duas classes criadas anteriormente.
class CriadorDePatos
	def castiga(pato)
		pato.faz_quack
	end
end

pato1 = PatoNormal.new
pato2 = PatoEstranho.new

=begin
	Para o criador de patos, não interessa que objeto será passado como parâmetro.
	Para ele basta que o objeto saiba fazer quack. Esta característica da linguagem
	Rubu é conhecida como Duck Typong.
=end
c = CriadorDePatos.new
puts c.castiga(pato1)
puts c.castiga(pato2)

