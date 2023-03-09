require "./lib/caesar_cipher"

describe "caesar_cipher" do
  it "encodes a string with the ceasar cipher" do
    expect(caesar_cipher("Das ist ein Test.", 4)).to eql("hew mwx imr xiwx.")
  end

  it "encode wraps around" do
    expect(caesar_cipher("uvwxyz", 4)).to eql("yzabcd")
  end

  it "key > 26" do
    expect(caesar_cipher("uvwxyz", 50)).to eql("stuvwx")
  end

  it "key < 0 " do
    expect(caesar_cipher("uvwxyz", -3)).to eql("rstuvw")
  end

  it "key < 0, wrap" do
    expect(caesar_cipher("abcde", -3)).to eql("xyzab")
  end

  it "key < -26" do
    expect(caesar_cipher("uvwxyz", -30)).to eql("qrstuv")
  end
end
