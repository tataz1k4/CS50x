def generate_num
  card_num = Array.new(16) { rand(0..9) }
  @reversed = card_num.reverse
end

def split_indexes
  generate_num()

  @odds = []
  @evens = []

  @reversed.each_with_index do |digit, i|
    if i.odd?
      @odds << digit
    else
      @evens << digit
    end
  end
end

def verify
  split_indexes()

  doubled = @odds.map { |digit| digit * 2 }
  sum_odds = doubled.sum
  sum_evens = @evens.sum
  sum_total = (sum_odds + sum_evens).to_s

  puts sum_total.end_with?('0') ? 'This credit card is legit!' : 'This credit card is invalid =('
end

verify()

# @reversed.map!.with_index { |digit, i| i.odd? ? digit * 2 : digit }
