require 'contrived_example'


describe 'with let' do

  let(:numbers) {{one: 1}}
  it "one plus 2 equals 3" do
    expect(ContrivedExample.add_to_key(numbers, :one, 2)).to eq(3)
  end

  it "one plus 3 equals 4" do
    expect(ContrivedExample.add_to_key(numbers, :one, 3)).to eq(4)
  end
end

describe 'with a "constant"' do
  NUMBERS = {one: 1}
  it "one plus 2 equals 3" do
    expect(ContrivedExample.add_to_key(NUMBERS, :one, 2)).to eq(3)
  end

  it "one plus 3 equals 4" do
    expect(ContrivedExample.add_to_key(NUMBERS, :one, 3)).to eq(4)
  end
end
