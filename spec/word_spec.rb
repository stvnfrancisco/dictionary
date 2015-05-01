require('rspec')
require('word')

describe(Word) do
  describe('#word') do
    it('allows the user input a word') do
      test_word = Word.new('new')
      expect(test_word.description()).to(eq('new'))
  end
 end
end
