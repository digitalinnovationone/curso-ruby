
def my_method
    yield if block_given?
end
  
my_method { puts "Bloco sendo executado!" }
my_method do
    puts "Bloco sendo executado!"
end
  

say_hello = Proc.new { puts "Olá, mundo!" }
say_hello.call


def execute_proc(p)
    p.call
end
  
my_proc = Proc.new { puts "Executando o proc!" }
execute_proc(my_proc)
  

# Criando um Proc que aceita dois parâmetros
multiply = Proc.new do |a, b|
    a * b if a && b
end

# multiply = lambda do |a, b|
#     a * b if a && b
# end
  
# Chamando o Proc com dois argumentos
result = multiply.call() # ou multiply[6, 7]
result = multiply.call(6, 7) # ou multiply[6, 7]
puts result # => 42


say_goodbye = lambda { puts "Tchau, mundo!" }
say_goodbye.call


say_goodbye = -> { puts "Tchau, mundo!" }
say_goodbye.call


# Criando um lambda que aceita dois parâmetros
adder = lambda do |a, b|
    a + b
end

# Alternativamente, usando a sintaxe de "flecha":
# adder = ->(a, b) { a + b }

# sum = adder.call()

# Chamando o lambda com dois argumentos
sum = adder.call(5, 8) # ou adder[5, 8]
puts sum # => 13
  

  