def funcao_sem_parametros
    puts "Olá estou em uma função"
end

funcao_sem_parametros

def funcao_com_parametro(nome)
    puts "Você passou o nome #{nome} na função"
end

funcao_com_parametro("Walter")
funcao_com_parametro "Walter"

def funcao_com_parametros(nome, idade)
    puts "Você passou o nome #{nome} com a idade #{idade} na função"
end

funcao_com_parametros "Liah", 1
funcao_com_parametros("Liah", 1)

def funcao_com_parametro_e_valor_padrao(nome = "Lana")
    puts "Você passou o nome #{nome} na função com nome padrão Lana"
end

funcao_com_parametro_e_valor_padrao
funcao_com_parametro_e_valor_padrao("Sheila")

def funcao_com_parametro_array(array = [])
    puts "Função com array - " + array.inspect
end

funcao_com_parametro_array
funcao_com_parametro_array([1,2,3])
funcao_com_parametro_array [4,5,6]

def funcao_com_parametro_hash(hash = {})
    puts "Função com hash - " + hash.inspect
end

funcao_com_parametro_hash
funcao_com_parametro_hash({nome: "teste"})
funcao_com_parametro_hash({nome: "teste", idade: 23})

def funcao_com_any_parametros(*parametros)
    puts "funcao_com_any_parametros - " + parametros.inspect
end

funcao_com_any_parametros
funcao_com_any_parametros 1,2,4
funcao_com_any_parametros("1", 2.5, 4)

def soma(a, b)
    return a + b # return opcional
end

def soma_sem_return(a, b)
    a + b # ultima ação de uma função ruby é o seu retorno
end

x = soma(1,2)
y = soma_sem_return(1,2)

puts "o resultado de x=#{x} o resultado de y=#{y}"

def soma_onde_retorna_resultado_maior_cinco(a, b)
    c = a + b
    return 10 if c > 5

    c * 20
end
  
puts "O resultado é: " + soma_onde_retorna_resultado_maior_cinco(1,2).to_s
puts "O resultado é: " + soma_onde_retorna_resultado_maior_cinco(5,2).to_s

def metodo_com_bloco
    yield if block_given?
end
  
metodo_com_bloco

metodo_com_bloco { puts "Bloco sendo executado!" }
metodo_com_bloco do 
    puts "Bloco 1 sendo executado!" 
    puts "Bloco 2 sendo executado!" 
    puts "Bloco 3 sendo executado!" 
    puts "Bloco 4 sendo executado!" 
    puts "Bloco 5 sendo executado!" 
end
