class PrimeHelper
  BASE_PRIMES = [2,3]

  # input: integer representing the Nth Prime
  # output: array of integers that are prime numbers
  def self.primes_to_nth_prime(nth_prime)
    # return empty array if nth_prime is 0 or negative
    return [] if nth_prime < 1
    # returns first or both primes up to nth_prime if nth_prime is 1 or 2
    return BASE_PRIMES.take(nth_prime) if nth_prime <= 2

    prime_numbers = BASE_PRIMES.dup
    potential_prime = prime_numbers.last

    while prime_numbers.length < nth_prime
      potential_prime += 2
      prime = true

      prime_numbers.each do |prime_number|
        if potential_prime % prime_number == 0
          prime = false
          break
        end
      end

      prime_numbers << potential_prime if prime
    end

    prime_numbers
  end
end
