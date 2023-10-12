puts "Digite um número"
numero1 = gets.to_i

# puts "Digite um número"
# numero2 = gets.to_i

# puts "Digite um número"
# numero3 = gets.to_i


# puts "Deu certo" if (numero1 == numero2) || (numero2 > numero3)
# puts "Deu certo" if (numero1 == numero2) && (numero2 > numero3)

# if numero1 == 1
#     puts "Parabéns você acertou o número desejado (1)"
# end

# puts "Parabéns você acertou o número desejado (1)" if numero1 == 1

# if ( numero1 == 1) 
#     puts "Parabéns você acertou o número desejado (1)"; 
# else
#     puts "Não é um número desejado"; 
# end

# if ( numero1 == 1) 
#     puts "Parabéns você acertou o número desejado (1)"; 
# elsif numero1 == 2
#     puts "Parabéns você acertou o outro número desejado (2)"; 
# else
#     puts "Não é um número desejado"; 
# end

# unless numero1 == 1
#     puts "O que você digitou não é o numero 1 é o numero1: #{numero1}"
# else
#     puts 'Você digitou o numero1 correto: ' + numero1.to_s
# end



case numero1
when 1
    puts "Achou o numero: #{numero1}"
when 2
    puts "Achou o segundo numero: #{numero1}"
else
    puts "Você não acertou: #{numero1}"
end