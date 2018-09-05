describe 'Classes' do
    it 'be_instance_of' do #exatamente a classe
        expect(10).to be_instance_of(Integer)
    end
    it 'be_kind_of' do #pode ser classe herdada (pode ser usado be_a ou be_an)
        expect(10).to be_kind_of(Integer)
    end
    it "respond_to" do #se responde a um determinado método
        expect("ruby").to respond_to(:size)
        expect("ruby").to respond_to(:count)
    end
end