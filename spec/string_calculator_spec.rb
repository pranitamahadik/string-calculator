require "spec_helper"

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    it 'should return 0 when empty string' do
      expect(calculator.add("")).to eq(0)
    end

    it 'should return number itself when it is single number' do
      expect(calculator.add("1")).to eq(1)
    end

    it 'should return sum of two comma-seprated number' do
      expect(calculator.add("1,5")).to eq(6)
    end
  end 
end
