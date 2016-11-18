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
end

# describe('String#word_count_advanced') do
#   it('User can input a target word and a string, and will be returned how many times the target word appears in the string as a full word OR part of a word.') do
#     expect('cat'.word_count_advanced('I\'m taking my cat on a walk through the catacombs.')).to(eq(2))
#   end
#
#   it('User can input a target word or string in either upper or lowercase (or a mix) and and will be returned how many times the target word appears in the string as a full word OR part of a word') do
#     expect('cAT'.word_count_advanced('I\'m taking my cAt on a walk through the cATAcombs')).to(eq(2))
#   end
# end
