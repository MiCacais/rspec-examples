describe 'All' do #testa todos os elementos do array
    it { expect([1, 5, 7]).to all( (be_odd).and be_an(Integer) ) }
    it { expect(['ruby', 'rails']).to all( be_a(String).and include('r') ) }
end