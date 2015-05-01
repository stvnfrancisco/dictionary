class Word
  @@all_words = []

  define_method(:initialize) do |word|
    @word = word
  end

  define_method(:description) do
    @word
end
end
