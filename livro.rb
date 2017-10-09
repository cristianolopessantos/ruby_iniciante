class Livro
    attr_reader :titulo, :preco, :ano_lancamento
    def initialize(titulo, preco, ano_lancamento)
        @titulo = titulo
        @ano_lancamento = ano_lancamento
        @preco = calcula_preco(preco)
    end
    private

    def calcula_preco(base)
        if (ano_lancamento < 1999)
            base*=0.7
        else
            base*=1.0
        end
    end
end

livro_java = Livro.new("Java", 100, 1998)
livro_rails = Livro.new("Rails", 90, 2006)

puts livro_java.preco
puts livro_rails.preco