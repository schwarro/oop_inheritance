require_relative "multilinguist"

class MathGenius < Multilinguist
  def report_total(num)
    @total = 0
    num.each do |x|
      @total += x
    end
    @msg = "The total is #{@total}"
    self.say_in_local_language(@msg)
  end
end

me = MathGenius.new
puts me.report_total([23,45,676,34,5778,4,23,5465])
me.travel_to("India")
puts me.report_total([6,3,6,68,455,4,467,57,4,534])
me.travel_to("Italy")
puts me.report_total([324,245,6,343647,686545])
