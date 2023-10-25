class Exemplo
    def um_metodo
        puts "Oláaaaa"
    end
end

class Exemplo
    def um_metodo_novo
        puts "Oláaaaa novo"
    end
end

a = Exemplo.new;
a.um_metodo
a.um_metodo_novo



class String
    def novo_metodo
        puts "novo_metodo da string"
    end

    def maiusculo
        self.upcase
    end
    def minusculo
        self.downcase
    end
end
s = "======== olá turma ======"
s.novo_metodo
"".novo_metodo

class Integer
    def novo_metodo
        puts "novo_metodo da inteiro"
    end
end

1.novo_metodo
2.novo_metodo


Como programação muda a vida de pessoas
como-programacao-muda-a-vida-de-pessoas

puts "danilo".maiusculo
puts "DANILO SANTOS".minusculo