# Hexadecimal
class Hexadecimal
  HEX_VALUES = { '0' =>  0, '1' =>  1, '2' =>  2, '3' =>  3, '4' =>  4,
                 '5' =>  5, '6' =>  6, '7' =>  7, '8' =>  8, '9' =>  9,
                 'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14,
                 'f' => 15 }.freeze

  attr_reader :hexadecimal
  def initialize(hexadecimal)
    @hexadecimal = hexadecimal
  end

  def to_decimal
    return 0 if invalid?
    hexadecimal.split(//).reverse_each.with_index.map do |multiplier, power|
      16**power * HEX_VALUES[multiplier]
    end.reduce(:+)
  end

  private

  def invalid?
    hexadecimal =~ /[^a-f\d]/
  end
end
