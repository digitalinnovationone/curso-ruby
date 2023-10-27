require_relative './models/produto'
require_relative './models/fornecedor'
require 'terminal-table'

p = Produto.new

puts "=== metodos e atributos de instancia ==="
puts p.methods - Class.methods
puts "=== metodos e atributos de classe ==="
puts Produto.methods - Class.methods

p.nome = "Abacaxi"
puts p.inspect

produtos = Produto.todos

table = Terminal::Table.new do |t|
  t.headings = ['ID', 'Nome', 'Descrição', 'Preço', 'Estoque', 'Fornecedor ID']
  
  # Preencha a tabela com os dados dos produtos
  produtos.each do |produto|
    t << [
      produto.id,
      produto.nome,
      produto.descricao,
      "%.2f" % produto.preco,  # Formata o preço para 2 casas decimais
      produto.estoque,
      produto.fornecedor_id
    ]
  end
end

# Imprime a tabela no console
puts table



puts "\n\n\n\n\n"


fornecedores = Fornecedor.todos

table = Terminal::Table.new do |t|
  t.headings = ['ID', 'Nome', 'CNPJ']
  
  # Preencha a tabela com os dados dos produtos
  fornecedores.each do |fornecedor|
    t << [
      fornecedor.id,
      fornecedor.nome,
      fornecedor.cnpj
    ]
  end
end

# Imprime a tabela no console
puts table
