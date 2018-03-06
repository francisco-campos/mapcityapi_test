require 'rails_helper'
require 'calculate'

RSpec.describe Calculate, type: :class do
  calc = Calculate.new

  context 'return fibonacci' do
    it 'correct fibonacci' do
      expect(calc.calc_fibonacci(5)).to be(5)
    end

    it 'correct sequence fibonacci' do
      expect(calc.sequence_fibonacci(5).length).to be > 5
    end
  end

  context 'return is prime number' do
    it 'return prime 5' do
      expect(calc.is_prime(5)).to be(true)
    end
  end

  context 'return factorial' do
    it 'factorial of 5' do
      expect(calc.factorial(5)).to be(120)
    end
  end


end
