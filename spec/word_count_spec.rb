require('rspec')
require('word_count')
require('pry')

describe('String#word_count') do
  it('User can input a target word and a string, and will be returned how many times the target word appears in the string as a full word') do
    expect('peck'.word_count('If Peter Piper picked a peck of pickled peppers, where\'s the peck of pickled peppers Peter Piper picked?')).to(eq(2))
  end
end
