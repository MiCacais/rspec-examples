RSpec::Matchers.define_negated_matcher :be_not_within, :be_within

describe 'be_within' do
    it { expect(12.5).to be_within(0.5).of(12) } #delta 0.5 para cima e 0.5 para baixo
    it { expect(11.4).to be_not_within(0.5).of(12) }
end