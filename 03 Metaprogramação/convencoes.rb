=begin
	Em Ruby, métodos que retornam booleanos costumam terminar com ?, para que
	pareçam perguntas aos objetos.
=end

texto = "nao sou vazio"
puts texto.empty?

=begin
	Métodos que tem efeito colateral (alteram o estado do objeto, ou que costumem
	lançar exceções) geralmente terminam com ! (bang):

		conta.cancela!	
=end

=begin
	A comparação entre objetos é feita através do método == (sim, é um método!).
	A versão original do método apenas verifica se as referências são iguais, ou seja,
	se apontam para os mesmos objetos. Podemos reescrever este comportamento e dizer
	como comparar dois objetos.
=end
class Pessoa
	#Reescreve o método == utilizando o comparação com o atributo desejado, (ex, cpf).
	def ==(outra)
		self.cpf == outra.cpf
	end
end

=begin
	Na definição de métodos, procure sempre usar parênteses. Para a cahamda de métodos,
	não há convenção, prefira o que for mais legível.

	Nomes de variáveis em Rubu são sempre minúsculos e separados por _ (undercore). 
	Variáveis com nomes maiúsculos são sempre constantes. Para nomes de classes, 
	utilize as regras de CamelCase, afinal, nomes de classes são apenas constantes.
=end