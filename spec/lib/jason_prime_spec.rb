require "spec_helper"
require "jason_prime"

describe JasonPrime do
  describe "initialize" do
    it "should not be null" do
      myPrime = JasonPrime.new
      expect(myPrime).not_to be_nil
    end
  end
end
