require_relative "multilinguist"

class QuoteCollector < Multilinguist

  def initialize
    @quotes = []
  end

  def add_quote(quote)
    @quotes << quote
  end

  def all
    return @quotes
  end

  def random
    say_quote = @quotes.sample
    self.say_in_local_language(say_quote)
  end
end

collect1 = QuoteCollector.new
collect1.add_quote('Hello my name is Rob')
collect1.add_quote('Which way to the market?')
collect1.add_quote('Where do you want to eat today?')
collect1.travel_to("Italy")
p collect1.random
