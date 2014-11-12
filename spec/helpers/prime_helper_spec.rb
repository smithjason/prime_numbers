require "spec_helper"
require_relative "../../helpers/prime_helper"

describe PrimeHelper do
  before :each do
    @prime_helper = PrimeHelper
  end

  describe "initialize" do
    it "should not be nil" do
      expect(@prime_helper).not_to be_nil
    end
  end

  describe "primes_to_nth_prime" do
    it "returns an empty array when n is negative" do
      expect(@prime_helper.primes_to_nth_prime(-2)).to eq([])
    end

    it "returns empty array when n is 0" do
      expect(@prime_helper.primes_to_nth_prime(0)).to eq([])
    end

    it "returns [2] when n is 1" do
      expect(@prime_helper.primes_to_nth_prime(1)).to eq([2])
    end

    it "returns [2,3] numbers when n is 2" do
      expect(@prime_helper.primes_to_nth_prime(2)).to eq([2,3])
    end

    it "returns [2,3,5,7,11,13,17,19,23,29] when n is 10" do
      expect(@prime_helper.primes_to_nth_prime(10)).to eq([2,3,5,7,11,13,17,19,23,29])
    end
  end
end
