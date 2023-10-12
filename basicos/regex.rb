# puts "Digite um numero de telefone válido"
# telefone = gets.to_s


# # PascalCase
# # camelCase
# # snake_case (underscore)

escreve_em_verde = "\e[32m"
escreve_em_vermelho = "\e[31m"
reset = "\e[0m"

# if telefone =~ /^\(\d{2}\) 9\d{4}-\d{4}$/
#     puts "#{escreve_em_verde}O telefone digitado é válido #{telefone} #{reset}"
# else
#     puts "#{escreve_em_vermelho}O telefone digitado é inválido #{telefone} #{reset}"
# end


puts "Digite o nome e sobrenome válido"
nome_completo = gets.to_s

require 'byebug'
debugger

if nome_completo =~ /[W|w]alter .*?[S|s]antos/
    puts "#{escreve_em_verde}Válido #{nome_completo}"
else
    puts "#{escreve_em_vermelho}Inválido #{nome_completo}"
end
