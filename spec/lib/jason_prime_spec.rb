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
      expect(@myPrime.primes_to_upper_limit(1)).to eq(nil)
    end

    it "returns [2] when limit is 2" do
      expect(@myPrime.primes_to_upper_limit(2)).to eq([2])
    end

    it "returns [2,3] when limit is 3" do
      expect(@myPrime.primes_to_upper_limit(3)).to eq([2,3])
    end

    it "returns [2,3,5,7] when limit is 10" do
      expect(@myPrime.primes_to_upper_limit(10)).to eq([2,3,5,7])
    end

    it "returns [2,3,5,7,11,13,17,19,23,29] when limit is 30" do
      expect(@myPrime.primes_to_upper_limit(30)).to eq([2,3,5,7,11,13,17,19,23,29])
    end
  end

  describe "primes_to_nth_prime" do
    it "returns nil when n is 0" do
      expect(@myPrime.primes_to_nth_prime(0)).to eq(nil)
    end

    it "returns [2] when n is 1" do
      expect(@myPrime.primes_to_nth_prime(1)).to eq([2])
    end

    it "returns [2,3] numbers when n is 2" do
      expect(@myPrime.primes_to_nth_prime(2)).to eq([2,3])
    end

    it "returns [2,3,5,7,11,13,17,19,23,29] when n is 10" do
      expect(@myPrime.primes_to_nth_prime(10)).to eq([2,3,5,7,11,13,17,19,23,29])
    end
  end
end
