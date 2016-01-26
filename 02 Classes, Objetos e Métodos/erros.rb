#coding:utf-8

=begin
print "Digite um número:"
numero = gets.to_i
#O erro é capturado em rescue caso não seja digitado um valor válido
begin
	resultado = 100 / numero
rescue 
	puts "Número digitado inválido!"
	exit
end

puts "100/#{numero} é #{resultado} "


#Exceptions podem ser lançadas com o comando raise.
def verifica_idade(idade)
	unless idade > 18
		raise ArgumentErros,
		"Você precisa ser maior de idade para jogar jogos violentos."
	end
end

begin
	verifica_idade(17)
	puts "Pode iniciar o jogo."
rescue
	puts "Você não pode jogar este jogo."
end



#É possível utilizar sua própria exception criando uma classe e estendendo de Exception.
class IdadeInsuficienteException < Exception
end

def verifica_idade(idade)
	raise IdadeInsuficienteException, "Você precisa ser maior de idade..."
end

begin
	verifica_idade(13)
rescue IdadeInsuficienteException => e
	puts "Foi lançada a exception: #{e}"
end

	Ruby possui também throw e catch que podem ser utilizados com símbolos
	e a sintaxe lembra a de Erlang, onde catch é uma função que, se ocorrer 
	algum throw com aquele label, retorna o valor do throw atrelado.
=end

def pesquisa_banco(nome)
	if nome.size < 10
		throw :nome_invalido, "Nome inválido, digite novamente"
	end

	#executa a pesquisa
	"cliente #{nome}"
end

def executa_pesquisa(nome)
	catch :nome_invalido do
		cliente = pesquisa_banco(nome)
		return cliente
	end
end

puts executa_pesquisa("ana")

puts executa_pesquisa("Wagner Almeida")