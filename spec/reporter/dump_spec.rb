require "minitest_helper"
require "reporter/dump"

describe Reporter::Dump do
  describe "from_file" do
    let(:dump) { Reporter::Dump.from_file dump_fixture_filename }
    let(:dump_fixture_filename) do
      Reporter::Testing.fixture_path "dump/questions.json"
    end

    it "should return a Dump instance" do
      expect(dump).to_be_instance_of Reporter::Dump
    end

    it "should store the dump contents" do
      expect(dump.contents).to_equal <<-END.gsub(/ {8}/, '')
        {
          "questions" : [
            {
              "prompt" : "Question 1"
            },
            {
              "prompt" : "The second question",
              "placeholderString" : "Placeholder answer"
            },
            {
              "prompt" : "Single answer question",
              "allowMultipleSelection" : 0
            }
          ]
        }
      END
    end
  end
end
