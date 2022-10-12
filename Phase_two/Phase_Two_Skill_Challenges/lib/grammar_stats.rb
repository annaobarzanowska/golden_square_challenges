class GrammarStats
  def initialize
    @check_true = 0
    @check_false = 0
  end

  def check(text)
    capital = text.start_with?(text[0].upcase)
    sentence_ending_punc = (text.include?("!") || text.include?(".") || text.include?("?"))
    if capital && sentence_ending_punc
      @check_true += 1
      return true
    else
      @check_false += 1
      return false
    end
  end

  def percentage_good
    total = @check_true + @check_false
    return (100 * @check_true) / total
  end
end