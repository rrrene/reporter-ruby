module Reporter
  # Represents a single Reporter question
  class Question
    attr_reader :text

    # Initialise a new
    def initialize(text)
      @text = text
    end
  end
end
