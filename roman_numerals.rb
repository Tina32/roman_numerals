class RomanNumerals

 CONVERSION_MAPPING = {
    1 => 'I',
    4 => 'IV',
    5 => 'V',
    9 => 'IX',
    10 => 'X',
    40 => 'XL',
    50 => 'L',
    90 =>'XC',
    100 => 'C',
    400 => 'CD',
    500 => 'CM',
    900 => 'CM',
    1000 => 'M',
    2000 => 'MM'
  }

  def encode (arabic)
    return '' if arabic.zero?

    decimal, numeral = CONVERSION_MAPPING.find { |decimal, _| arabic >= decimal }

    numeral + encode(arabic - decimal)
  end
end





