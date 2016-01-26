#coding:utf-8

#if
nota = 10

if nota > 7
	puts "Boa nota!"
else
	puts "Nota ruim!"
end

#for
for i in (1..3)
	x = i
	puts i
end
puts x

puts /rio/ =~ "são paulo" # nil
puts /paulo/ =~ "são paulo" # 4

#Verifica através do operador ||= se uma variável ja foi preenchida.
#Caso não estiver, atribui um valor a ela.
restaurante ||= "Fogo de Chao"
puts restaurante