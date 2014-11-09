require "spec_helper"
require "jason_prime"

describe JasonPrime do
  before :each do
    @myPrime = JasonPrime.new
  end

  describe "initialize" do
    it "should not be nil" do
      expect(@myPrime).not_to be_nil
    end
  end

  describe "primes_to_upper_limit" do
    it "returns nil when limit is less than 2" do
      expected_result = nil
      expect(@myPrime.primes_to_upper_limit(1)).to eq(expected_result)
    end

    it "returns [2] when limit is 2" do
      expected_result = [2]
      expect(@myPrime.primes_to_upper_limit(2)).to eq(expected_result)
    end

    it "returns [2,3] when limit is 3" do
      expected_result = [2,3]
      expect(@myPrime.primes_to_upper_limit(3)).to eq(expected_result)
    end

    it "returns 2,3,5,7 when limit is 10" do
      expected_result = [2,3,5,7]
      expect(@myPrime.primes_to_upper_limit(10)).to eq(expected_result)
    end
  end

  describe "primes_to_nth_prime" do
    it "returns nil when n is 0"
    it "returns [2] when n is 1"
    it "returns [2,3] numbers when n is 2"
    it "returns [2,3,5,7,11,13,17,19,23,29] when n is 10"
  end
end
