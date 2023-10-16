class Email
    attr_accessor :to, :from, :subject, :body

    def send
        # TODA A IMPLEMTAÇÃO DA GEM DE ENVIO DE EMAIL
        puts "Estou enviando o email para #{to} ... "
    end

    private_class_method :new

    def self.instancia
        # @@instancia = self.new if @@instancia == nil
        @@instancia ||= self.new
        @@instancia
    end
end

Email.instancia.to = "teste@teste.com"
Email.instancia.send
puts Email.instancia

email = Email.instancia
Email.instancia.to = "testes@teste.com"
Email.instancia.send
puts Email.instancia