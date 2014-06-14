module Reporter
  # Internal: Provides helper methods for testing.
  module Testing
    # Internal: Determines the path to a fixture.
    #
    # name - An object that responds to #to_s. Represents the name of
    #        the fixture to find.
    #
    # Examples
    #
    #   Reporter::Testing.fixture_path("my_fixture.json")
    #   # => "/path/to/my_fixture.json"
    #
    # Returns a String with the absolute path to the fixture.
    # Raises Reporter::UnknownFixtureError if the fixture can't be
    #   found.
    def self.fixture_path(name)
      support = File.dirname __FILE__
      File.expand_path("../fixtures/#{name}", support).tap do |path|
        raise UnknownFixtureError.new(name) unless File.exists? path
      end
    end

    private
      # Internal: Raised when an unknown fixture name is requested.
      class UnknownFixtureError < ArgumentError
        # Internal: Creates a new instance of this exception for a
        #   given fixture name.
        #
        # name - An object that responds to #to_s. Represents the name
        #        of the fixture that couldn't be found.
        #
        # Examples
        #
        #   raise Reporter::Testing::UnknownFixtureError.new("my_fixture")
        #   # => Unknown fixture 'my_fixture'
        def initialize(name)
          super "Unknown fixture '#{name}'"
        end
      end
  end
end
