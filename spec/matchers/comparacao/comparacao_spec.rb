describe 'Matchers de comparação' do
    xit '#equal - Testa se é o mesmo objeto' do
    
        x = "ruby"
        y = "ruby"

        #expect(x).not_to equal("gem")
        expect(x).to equal(y)
    end
end