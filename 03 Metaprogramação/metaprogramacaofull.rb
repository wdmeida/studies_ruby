=begin
	Metaprogramação é a capacidade de gerar/alterar código em tempo de
	execução. Note que isso é muito diferente de um gerador de código comum,
	onde geramos um código fixo, que deveria ser editado na mão e a aplicação
	só rodaria esse código posteriormente.

	Levando o dinamismo de Ruby ao extremo, podemos criar métodos que definem 
	métodos em outros objetos:
=end
class Aluno
	# não sabe nada
end

class Professor
	def ensina(aluno)
		def aluno.escreve
			"Sei escrever!"
		end
	end
end

juca = Aluno.new
puts juca.respond_to? :escreve

professor = Professor.new
professor.ensina juca
puts juca.escreve

=begin
	A criação de métodos acessores é uma tarefa muito comum no desenvolvimento
	orientado a objetos. Os métodos são sempre muito parecidos e os desenvolvedores
	costumam usar recursos de geração de códigos das IDEs para automatizar esta tarefa.

	Podemos criar código Ruby que escreve código Rubu (métodos). Aproveitando essa
	possibilidade do Rubu, existem alguns métodos de classe importantes que servem apenas 
		para criar alguns outros métodos nos seus objetos.
=end

class Pessoa
	attr_accessor :nome
end

p = Pessoa.new
p.nome = "Joaquim"
puts p.nome

=begin
	A chamada do método de classe attr_accessor, define os métodos
	nome e nome= na classe Pessoa.

	A técnica de código gerando código é conhecida como metaprogramação,
	ou metaprogramming, como já definimos.

	Outro exemplo interessante de metaprogramação é como definimos a visibilidade
	dos métodos em Ruby. Por padrão, todos os métodos definidos em uma classe são
	públicos, ou seja, podem ser chamados por qualquer um.

	Não existe nenhuma palavra reservada (keyword) da linguagem para mudar a visibilidade.
	Isto é feito com um método de classe. Toda classe possui os métodos private, public e
	protected, que são métodos que alteram outros métodos, mudando a sua visibilidade (código
	alterando código == metaprogramação).

	Como visto, por padrão todos os métodos são publicos. O método de classe private altera a
	visibilidade de todos os métodos definidos após ter sido chamado:

class Pessoa
	private

	def vai_ao_banheiro
		# ...
	end
end

	Todos os métodos após a chamada de private são privados. Isso pode lembrar um pouco C++, que
	define regiões de visibilidade dentro de uma classe (seção pública, privada, ...). Um método
	privado em Ruby só pode ser chamado de self e o self deve ser implícito. Em outras palavras,
	não podemos colocar o self explicitamente para métodos privados, como em self.vai_ao_banheiro.

	Caso seja necessário, o método public faz com que os métodos em seguida voltem a ser públicos:

class Pessoa
	
	private
	def vai_ao_banheiro
		#...
	end

	public
	def sou_um_metodo_publico
		#...
	end
end

	O último modificador de visibilidade é o protected. Métodos protected
	só podem ser chamados em self (implícito ou explícito). Por isso, o protected
	do Ruby acaba sendo semelhante ao protected do Java e C++, que permitem a
		chamada do método na própria classe e em classes filhas.

=end

