require_relative "models/cliente"
require_relative "models/fornecedor"
require 'terminal-table'

# cliente = Models::Cliente.new
# cliente.nome = "Danilo - #{Time.now.to_i}"
# cliente.telefone = "(11)1111-1111"
# cliente.cpf = Time.now.to_i

# # puts cliente.methods - Class.methods

# cliente.incluir

# clientes = Models::Cliente.todos

# rows = clientes.map do |cliente|
#     [cliente.id, cliente.nome, cliente.telefone, cliente.cpf]
# end

# table = Terminal::Table.new(
#     :headings => ['ID', 'Nome', 'Telefone', 'CPF'], 
#     :rows => rows
# )

# puts table

puts "-----------------"

fornecedor = Models::Fornecedor.new
fornecedor.nome = "Empresa DIO ORM - #{Time.now.to_i}"
fornecedor.telefone = "(11)1111-1111"
fornecedor.cnpj = Time.now.to_i
fornecedor.endereco = "Rua #{Time.now.to_i} - Cidade - UF"
fornecedor.incluir

fornecedores = Models::Fornecedor.todos

rows = fornecedores.map do |fornecedor|
    [fornecedor.id, fornecedor.nome, fornecedor.telefone, fornecedor.cnpj, fornecedor.endereco]
end

table = Terminal::Table.new(
    :headings => ['ID', 'Nome', 'Telefone', 'CNPJ', 'Endereço'], 
    :rows => rows
)

puts table