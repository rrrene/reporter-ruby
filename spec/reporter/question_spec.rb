require "minitest_helper"
require "reporter/question"

describe Reporter::Question do
  let(:question) { Reporter::Question.new question_text }

  describe "when constructed with a question text" do
    let(:question_text) { "What's your favourite question?" }

    it "stores the question" do
      expect(question.text).to_equal "What's your favourite question?"
    end
  end
end
