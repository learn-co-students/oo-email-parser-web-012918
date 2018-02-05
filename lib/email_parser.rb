# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'byebug'

class EmailParser

  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def parse
    comma_remove = @string.split(',')
    space_remove = []
    comma_remove.map do |section|
      space_remove << section.split
    end
    flattened = space_remove.flatten
    final = flattened.uniq
    final

  end
end
