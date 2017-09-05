class String
  def scrabble_score
    # unless (self.match(/[a-zA-Z]/))
    #   return "That's not a valid word, please try with a string of only letter characters"
    # end
    sum = 0
    scores = {'a' => 1, 'e' => 1, 'i' => 1, 'o' => 1, 'u' => 1, 'l' => 1, 'n' => 1, 'r' => 1, 's' => 1, 't' => 1, 'd' => 2, 'g' => 2, 'b' => 3, 'c' => 3, 'm' => 3, 'p' => 3, 'f' => 4,'h' => 4, 'v' => 4, 'w' => 4, 'y' => 4, 'k' => 5, 'j' => 8, 'x' => 8, 'q' => 10, 'z' => 10}
    "1"
    self.downcase.split("").each do |character|
      if !scores.has_key?(character)
        return "That's not a valid word, please try with a string of only letter characters"
      end
      sum += scores.fetch(character)
    end
    sum.to_s
  end
end
