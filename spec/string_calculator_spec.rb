require "spec_helper"

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe '#add' do
    it 'should return 0 when empty string' do
      expect(calculator.add("")).to eq(0)
    end
  end 
end
