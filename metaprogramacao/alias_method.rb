class Fornecedor
  def como_estou_hoje?
    puts "Estou muito bem e trabalhando com entregas para meus clientes"
  end
end

Fornecedor.class_eval do
  alias_method :original_como_estou_hoje?, :como_estou_hoje?

  def como_estou_hoje?
    puts "Poxa hoje não estamos muito bem, acabamos de bater o caminhão"
  end
end

f = Fornecedor.new

f.como_estou_hoje?
f.original_como_estou_hoje?
