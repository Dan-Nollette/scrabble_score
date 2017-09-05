require 'rspec'
require 'scrabble_score'

describe('#scrableScore') do
  it('returns 1 for a single common letter') do
    expect("a".scrabble_score).to(eq("1"))
  end

  it('returns the correct number for a single-letter, lowercase word') do
    expect("f".scrabble_score).to(eq("4"))
  end

  it('returns the correct number for a single-letter, uppercase word') do
    expect("D".scrabble_score).to(eq("2"))
  end

  it('returns the correct number for a multi-letter word, regardless of case') do
    expect("Epicodus".scrabble_score).to(eq("13"))
  end

  it('returns an error message, if the string contains non-letter characters') do
    expect("This has 7 non-letter characters.".scrabble_score).to(eq("That's not a valid word, please try with a string of only letter characters"))
  end
end
