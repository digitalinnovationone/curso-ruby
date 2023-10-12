require 'byebug'

begin
    # Código que pode lançar uma exceção
    # 1 / 0

    # Somando tipos direferentes
    # 1 + "d"
    1 + "1".to_i # correto
rescue ZeroDivisionError
    puts "Você tentou dividir por zero!"
rescue TypeError
    puts "Você somar dados errados"
rescue Exception => e
    debugger
    puts "Aconteceu um erro"
else
    puts "Nenhuma exceção foi lançada."
ensure
    puts "Esse bloco é sempre executado."
end
  
raise "Idade inválida!" # solta uma exceção, como se fosse o throw do Node