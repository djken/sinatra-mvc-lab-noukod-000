class PigLatinizer
  def piglatinize(word_phrase)
    word_convert = word_phrase.split ' '

    word_convert.map do |word|
      if word.downcase.scan(/^[aeoui]+/).empty? == false
        word + "way"
      else
        word_co = word.scan(/^[^aeoui]+/).join ''
        word[0, word_co.size] = ''
        word + word_co + "ay"
      end
    end.join ' '
  end
end
