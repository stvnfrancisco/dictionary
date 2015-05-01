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

 describe('#save') do
   it('adds a word to the array of saved words') do
     test_word = Word.new('new')
     test_word.save()
     expect(Word.all()).to(eq([test_word]))
   end
 end

 describe(".clear") do
   it('empties out all saved words') do
     Word.new('new').save()
     Word.clear()
     expect(Word.all()).to(eq([]))
   end
 end
