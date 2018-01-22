require "caesar_cipher.rb"

describe "#caesar_cipher" do
  context "given an empty string" do
    it "returns empty string" do
      expect(caesar_cipher("",5)).to eq("")
    end
  end

  context "given a single lowercase letter" do
    it "returns ciphered letter" do
      expect(caesar_cipher("a",5)).to eq("f")
    end
  end

  context "given a single uppercase letter" do
    it "returns ciphered letter" do
      expect(caesar_cipher("A",5)).to eq("F")
    end
  end

  context "given number that shifts letter beyond 'z'" do
    it "loops over back to 'a'" do
      expect(caesar_cipher("z",1)).to eq("a")
    end
  end

  context "given a word" do
    it "returns ciphered word" do
      expect(caesar_cipher("break",3)).to eq("euhdn")
    end
  end

  context "given shift value of 0" do
    it "returns the same letter" do
      expect(caesar_cipher("p",0)).to eq("p")
    end
  end

  context "given sentence" do
    it "correctly handles spaces and punctuation" do
      expect(caesar_cipher("I wrote this so long ago!",4)).to eq("M avsxi xlmw ws psrk eks!")
    end
  end

  context "given negative shift" do
    it "reverses effect of cipher" do
      expect(caesar_cipher("g",-6)).to eq("a")
    end
  end

end
