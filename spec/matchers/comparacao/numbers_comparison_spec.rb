describe 'Matchers de Comparação' do
    it '>' do
        expect(5).to be > 1
    end
    it '>=' do
        expect(5).to be >= 2
        expect(5).to be >= 5
    end
    it '<' do
        expect(5).to be < 10
    end
    it '<=' do
        expect(5).to be <= 12
        expect(5).to be <= 5
    end
    it 'be between inclusive' do
        expect(5).to be_between(2, 7).inclusive
        expect(2).to be_between(2, 7).inclusive
        expect(7).to be_between(2, 7).inclusive
    end
    it 'be between exclusive' do
        expect(5).to be_between(2, 7).exclusive
        expect(3).to be_between(2, 7).exclusive
        expect(6).to be_between(2, 7).exclusive
    end
    it 'match' do
        expect("fulano@com.br").to match("..@..")
    end
    it 'start with' do
        expect("Fulano de Tal").to start_with("Fulano")
    end
    it 'start with number' do
        expect([1, 2, 3]).to start_with(1)
    end
    it 'end with' do
        expect("Fulano de Tal").to end_with("Tal")
    end
end