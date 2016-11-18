require('rspec')
require('word_count')
require('pry')

describe('String#word_count') do
  it('User can input a target word and a string, and will be returned how many times the target word appears in the string as a full word (when that option is selected)') do
    expect('peck'.word_count('If Peter Piper picked a peck of pickled peppers, where\'s the peck of pickled peppers Peter Piper picked?', 'full')).to(eq(2))
  end

  it('User can input a target word and a string, and will be returned how many times the target word appears in the string as a full word OR part of a word (when that option is selected).') do
    expect('cat'.word_count('I\'m taking my cat on a walk through the catacombs.', 'partial')).to(eq(2))
  end

  it('User can enter either field in upper or lower case, or a mix') do
    expect('peCk'.word_count('If Peter Piper picked a Peck of pickled peppers, where\'s the pecK of pickled peppers Peter Piper picked?', 'full')).to(eq(2))
  end

  it('User can enter multiple sentences for full word option') do
    expect('dog'.word_count('I love my dog. Doggy dog dog.', 'full')).to(eq(3))
  end
end
