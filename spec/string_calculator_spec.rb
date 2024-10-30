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

    it 'should return sum of two comma-seprated numbers' do
      expect(calculator.add("1,5")).to eq(6)
    end

    it 'should return sum of multiple comma-seprated numbers' do
      expect(calculator.add("1,2,3,4")).to eq(10)
    end

    it 'should return sum of numbers with new lines as delimiters' do
      expect(calculator.add("1\n2,3")).to eq(6)
    end
  end 
end
