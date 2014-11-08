require "spec_helper"
require "jason_prime"

describe JasonPrime do
  describe "initialize" do
    it "should not be nil" do
      myPrime = JasonPrime.new
      expect(myPrime).not_to be_nil
    end
  end

  describe "up_to" do
    it "returns no numbers when limit is less than 2"
    it "returns 2 when limit is 2"
    it "returns 2,3,5,7 when limit is 10"
  end

  # describe "generate" do
  #   it "returns no numbers when n is 0"
  #   it "returns 1 number when n is 1"
  #   it "returns 3 numbers when n is 3"
  #   it "returns 10 numbers when n is 10"
  # end
end
