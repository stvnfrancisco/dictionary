class Word

  @@all_words = []

  define_method(:initialize) do |description|
    @description = description
  end

  define_method(:description) do
    @description
  end

  define_singleton_method(:all) do
    @@all_words
end

define_method(:save) do
  @@all_words.push(self)
end
end
