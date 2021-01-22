require 'fizzbuzz'
describe 'fizzbuzz' do
  it 'returns fizz when passed(3)' do
    expect(fizzbuzz(3)).to eq "fizz"
  end
  it 'returns fizz when passed any multiple of 3 and 5' do
    (1..100).to_a.each do |num|
      if num.to_f % 15 == 0
        expect(fizzbuzz(num)).to eq "fizzbuzz"
      end
    end
  end
  it 'returns buzz when passed any multiple of 5' do
    (1..100).to_a.each do |num|
      if num.to_f % 5 == 0 && num.to_f % 15 != 0
        expect(fizzbuzz(num)).to eq "buzz"
      end
    end
  end
  it "return number when not a multple of 3 or 5" do
    (1..100).to_a.each do |num|
      if num.to_f % 5 != 0 && num.to_f % 3 != 0
        expect(fizzbuzz(num)).to eq num
      end
    end
  end
  it 'returns fizz when passed any multiple of 3' do
    (1..100).to_a.each do |num|
      if num.to_f % 3 == 0 && num.to_f % 15 != 0
        expect(fizzbuzz(num)).to eq "fizz"
      end
    end
  end
end
