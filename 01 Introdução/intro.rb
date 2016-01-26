=begin
	
Em ruby para se descobrir o tipo de uma variavel,
utiliza-se o .class após a variavel. Exemplo:

idade = 27

puts idade.class
Fixnum #Tipo de dado para inteiros do Ruby.

Strings em ruby, diferentemente do Java são mutáveis.

	mensagem = "Bom dia, "
	=> "Bom dia, "
	mensagem << " tudo bem?"
	=> "Bom dia, tudo bem?"
	puts mensagem
	"Bom dia, tudo bem?"
	=> nil #Operador similar ao null para mostrar que a expressão não possui retorno.

	<< Concatena Strings na mesma instância.
	+ Contatena em instâncias diferentes, ou seja, gera novas Strings.

	O método capitalize retorna uma String com a primeira letra em maiúscula.
	Ele não modifica o valor da variável.
	Para que a mudança seja definitiva na String, adiciona-se ! ao final do método.
	Exemplo:
	
		nome = "fasano"
		puts nome.capitalize! #Fasano
		puts nome #Fasano

	O caracter ! é chamado de bang e deve ser usado com moderação.
=end
