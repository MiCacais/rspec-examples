require 'calculator'

describe Calculator, "test about the calculator class" do

    subject(:calc) {described_class.new()}

    context '#div' do
        it 'divided by zero' do
            expect{calc.div(3, 0)}.to raise_error(ZeroDivisionError)
            expect{calc.div(3, 0)}.to raise_error("divided by 0")
            expect{calc.div(3, 0)}.to raise_error(ZeroDivisionError, "divided by 0")
            expect{calc.div(3, 0)}.to raise_error(/divided/)
        end
    end

    context '#sum' do
        it 'with positive numbers' do
            result = calc.sum(5, 7)
            expect(result).to equal(12)
            expect(result).not_to eq(11)
        end
        specify 'with negative and positive numbers' do
            result = calc.sum(-5, 7)
            expect(result).to equal(2)
        end
        it 'with negative numbers' do
            result = calc.sum(-5, -7)
            expect(result).to eq(-12)
        end
    end
end