require 'pessoa'

describe 'Atributos' do
    xit 'have_atributes' do
        pessoa = Pessoa.new
        expect(pessoa).to have_atributes()
    end
end