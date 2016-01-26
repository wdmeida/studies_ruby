#coding:utf-8

#Cria uma classe para testar os arrays.
class Franquia

	#Cria um array no método initialize
	def initialize
		@restaurantes = []
	end

	#Adiciona os restaurantes fazendo uso do *splat 
	def adiciona(*restaurantes)
		for restaurante in restaurantes
			@restaurantes << restaurante
		end
	end

	def mostra
		@restaurantes.each do |r|
			puts r.nome
		end
	end

	#Adiciona um método a classe utilizando metaprogramação
	def expandir(restaurante)
		def restaurante.cadastrar_vips
			puts "Restaurante #{self.nome} agora com área VIP!"
		end
	end

	#Verifica os nomes de restaurantes cadastrados.
	def method_missing(name, *args)
		@restaurantes.each do |r|
			return "O restaurante #{r.nome} já foi cadastrado!" if r.nome.eql? *args
		end
		return "O restaurante #{args[0]} não foi cadastrado ainda."
	end

	#define um método com um bloco de código que será passado pelo usuário.
	def relatorio
		@restaurantes.each do |r|
			yield r
		end
	end
end

#Cria uma classe Restaurante com os dados.
class Restaurante
	#Cria um atributo acessor para a classe. Isso evita que se tenha a necessidade de criar métodos de acesso (getters e setters).
	attr_accessor :nome

	#Utiliza dados passados via hash para exibir uma mensagem ao usuário.
	def fechar_conta(dados)
		puts "Conta fechada no valor de #{dados[:valor]} e com nota #{dados[:nota]}. Comentário: #{dados[:comentario]}"
	end
end

#Cria os dois restaurantes e atribui o nome.
restaurante_um = Restaurante.new
restaurante_um.nome = "Fasano"

restaurante_dois = Restaurante.new
restaurante_dois.nome = "Fogo de Chao"

#Cria um objeto da classe Franquia, adiciona os restaurantes criados e depois exibe-os através do método mostra.
franquia = Franquia.new
franquia.adiciona restaurante_um, restaurante_dois
franquia.mostra

#Fecha a conta em um restaurante, com os dados passados através de hash.
=begin
	Em Ruby, na chamada de métodos o uso de parênteses não é obrigatório, o que é bem estranho
	para pessoas que assim como eu vem de outras linguagens como Java e Python. O uso de chaves
	também na hora de criar um hash não é obrigatório, como no exemplo abaixo, desde que o parâmetro
	passado ao método seja apenas o hash, ou este seja o último dos parâmetros passados ao método.
	Caso este seja o primeiro, então o uso das chaves é obrigatório.
=end
restaurante_um.fechar_conta valor: 50, nota: 9, comentario: 'Gostei!'

#Define o bloco de código que sera executado no relatório.
franquia.relatorio do |r|
	puts "Restaurante cadastrado: #{r.nome}"
end


#Abre a classe franquia e adiciona o método
franquia.expandir restaurante_um
restaurante_um.cadastrar_vips

#Verifica se os nomes ja foram cadastrados.
puts franquia.ja_cadastrado?("Fasano")
puts franquia.ja_cadastrado?("Boteco")