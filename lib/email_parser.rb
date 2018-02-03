# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
    attr_accessor :email_array

  def initialize(email_array)
    @email_array = email_array
  end
  def parse
    parsed = @email_array.split(/(,*)\s/)
    parsed_array = []
    striped = parsed.each do |item|
      if item != "" && item != ","
      parsed_array << item
     end

    end
    parsed_array.uniq
  end


end
