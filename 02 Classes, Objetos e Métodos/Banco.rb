#coding:utf-8

#Cria a classe banco
class Banco
	#Define o inicializador (contrutor)
	def initialize(contas)
		@contas = contas
	end

	#Verifica o saldo disponível em conta.
	def status
		saldo = 0
		for conta in @contas
			saldo += conta
			#Verifica se foi passado algum bloco para ser executado.
			if block_given?
				yield(saldo)
			end
		end
		saldo
	end
end

#Cria um objeto da classe conta e inicializa os valores.
banco = Banco.new([300,600,100])

#Passa o bloco de código que deseja executar na função, no caso a impressão do saldo parcial.
banco.status do |saldo|
	puts saldo
end

#4.21 Desafio blocos