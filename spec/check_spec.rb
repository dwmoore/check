require_relative "../check"

describe "Check" do
  describe "#to_words" do
    context "when given an integer" do
      it "returns a one digit value" do
        number_to_words = Check.new(1).to_words

        expect(number_to_words).to eq "one"
      end
      it "returns a two digit value" do
        number_to_words = Check.new(46).to_words

        expect(number_to_words).to eq "forty six"
      end
      it "returns a three digit value" do
        number_to_words = Check.new(132).to_words

        expect(number_to_words).to eq "one hundred thirty two"
      end
      it "returns a four digit value" do
        number_to_words = Check.new(3426).to_words

        expect(number_to_words).to eq "three thousand four hundred twenty six"
      end
      it "returns a two digit teens value" do
        number_to_words = Check.new(19).to_words

        expect(number_to_words).to eq "nineteen"
      end
      it "returns a three digit teens value" do
        number_to_words = Check.new(415).to_words

        expect(number_to_words).to eq "four hundred fifteen"
      end
      it "returns a four digit teens value" do
        number_to_words = Check.new(6312).to_words

        expect(number_to_words).to eq "six thousand three hundred twelve"
      end
    end

    context "when given a string" do
      it "returns a one digit value" do
        number_to_words = Check.new("1").to_words

        expect(number_to_words).to eq "one"
      end
      it "returns a two digit value" do
        number_to_words = Check.new("46").to_words

        expect(number_to_words).to eq "forty six"
      end
      it "returns a three digit value" do
        number_to_words = Check.new("132").to_words

        expect(number_to_words).to eq "one hundred thirty two"
      end
      it "returns a four digit value" do
        number_to_words = Check.new("3426").to_words

        expect(number_to_words).to eq "three thousand four hundred twenty six"
      end
      it "returns a two digit teens value" do
        number_to_words = Check.new("19").to_words

        expect(number_to_words).to eq "nineteen"
      end
      it "returns a three digit teens value" do
        number_to_words = Check.new("415").to_words

        expect(number_to_words).to eq "four hundred fifteen"
      end
      it "returns a four digit teens value" do
        number_to_words = Check.new("6312").to_words

        expect(number_to_words).to eq "six thousand three hundred twelve"
      end
    end
  end
end
