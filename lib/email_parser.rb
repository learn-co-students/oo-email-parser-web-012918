# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser

  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def parse
    @string.gsub(/[, ]/, ",").split(",").uniq.delete_if{|a| a.empty?}
  end

end


'hi'
