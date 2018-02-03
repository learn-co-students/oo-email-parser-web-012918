# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailParser
  attr_accessor :emails


  def initialize(emails)
    @emails = emails
    self.parse
  end

  def parse
    email_array = self.emails.gsub(/[, ]/, ",").split(",")
    email_array.uniq.delete_if {|s| s == ""}
  end


end
