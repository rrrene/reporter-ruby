module Reporter
  # Public: Represents a single Reporter question.
  class Question
    # Public: Returns a String containing the text of this question.
    attr_reader :text

    # Public: Initialise a new Reporter question from a question text.
    #
    # text - An object that responds to #to_s. Represents the text of
    #        the question being initialized.
    #
    # Examples
    #
    #   Reporter::Question.new("What?")
    #   # => #<Reporter::Question:0x1234 @text="What?">
    def initialize(text)
      @text = text.to_s
    end
  end
end
