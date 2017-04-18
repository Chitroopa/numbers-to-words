require('rspec')
require('number_to_word')

describe('Fixnum#number_to_word') do
  it('transform one digit number into word') do
    expect(1.number_to_word()).to(eq("one"))
  end
  it('transform teen number into word') do
    expect(11.number_to_word()).to(eq("eleven"))
  end
  it('transform number 20 - 99 into word') do
    expect(99.number_to_word()).to(eq("ninety nine"))
  end
  it('transform number 100 - 999 into word') do
    expect(945.number_to_word()).to(eq("nine hundred and fourty five"))
  end
end
