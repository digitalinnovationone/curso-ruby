class Cliente
end

# injetar metodos de classe (staticos)
Cliente.instance_eval do
    def greet
      "Hello, #{self}!"
    end

    def outro
        "outro - #{self}!"
    end
end
  
puts Cliente.outro
puts Cliente.greet
  