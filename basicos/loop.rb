require 'byebug'

=begin
===========================
loop

É o loop mais simples e executa um bloco de código indefinidamente até que seja explicitamente interrompido.
===========================
=end

# loop do
#     puts "Isso será impresso até que o loop seja interrompido."
#     puts "Digite 1 para sair"
#     sair = gets.to_i
#     debugger
#     break if sair == 1
# end
  

=begin
===========================
while

O loop while executa o bloco de código enquanto a condição especificada for verdadeira.
===========================
=end
# count = 0
# while count < 5 do
#     debugger
#     puts count
#     count += 1
# end


=begin
===========================
until

É o oposto do while. O loop é executado até que a condição especificada seja verdadeira.
===========================
=end
# count = 0
# until count == 5 do
#   puts count
#   count += 1
# end


=begin 
===========================
for

O loop for é utilizado para iterar sobre um intervalo ou coleção.
===========================
=end
# for i in 0..4 do
#     puts i
# end


=begin 
===========================
.times

É um método de números inteiros que executa um bloco de código um determinado número de vezes.
===========================
=end
# 5.times do |i|
#     puts i
# end
# 5.times { |i| puts i }


=begin 
===========================
.each

É um método iterador para coleções, como arrays e hashes.
===========================
=end
# [1, 2, 3, 4, 5].each do |num|
#     puts num
# end

# [{nome: 'teste'}, {nome: 'teste2'}].each do |item|
#     item.each do |key, value|
#         puts key
#         puts value
#     end
#     puts "---------"
# end



=begin 
===========================
.upto e .downto

São métodos iteradores que permitem que você aumente ou diminua um valor.
===========================
=end
# 1.upto(5) do |i|
#     puts i
# end

# puts "---------"
  
# 5.downto(1) do |i|
#     puts i
# end

=begin 
===========================
next

next pula para a próxima iteração do loop
===========================
=end
# (1..5).each do |i|
#     next if i.even?
#     puts i
# end




=begin 
===========================
redo

repete a iteração atual do loop.
===========================
=end
# (1..5).each do |i|
#     puts i
#     redo if i.even?
# end



=begin 
===========================
break

Utilizado para encerrar um loop.
===========================
=end

(1..5).each do |i|
    break if i.even?
    puts i
end
