require('rspec')
require('word')

describe(Word) do
  describe('#description') do
    it('lets you to give it a description') do
      test_word = Word.new('new')
      expect(test_word.description()).to(eq('new'))
  end
 end
end

  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
   end
 end
