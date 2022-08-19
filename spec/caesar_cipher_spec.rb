require './lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'returns a string' do
    str = 'hello'
    num_shift = 0
    expect(caesar_cipher(str, num_shift).class).to eql(String)
  end

  it 'shifts string characters over by specified amount' do
    str = 'hello'
    num_shift = 1
    expect(caesar_cipher(str, num_shift)).to eql('ifmmp')
  end

  it 'keeps str case' do
    str = 'HeLLo'
    num_shift = 1
    expect(caesar_cipher(str, num_shift)).to eql('IfMMp')
  end

  it 'shifts negative numbers' do
    str = 'hello'
    num_shift = -1
    expect(caesar_cipher(str, num_shift)).to eql('gdkkn')
  end

  it 'shifts from z to a' do
    str = 'yz'
    num_shift = 1
    expect(caesar_cipher(str, num_shift)).to eql('za')
  end

  it 'shifts from a to z' do
    str = 'ab'
    num_shift = -1
    expect(caesar_cipher(str, num_shift)).to eql('za')
  end

  it 'shifts greater than 26 times' do
    str = 'hello'
    num_shift = 27
    expect(caesar_cipher(str, num_shift)).to eql('ifmmp')
  end
end