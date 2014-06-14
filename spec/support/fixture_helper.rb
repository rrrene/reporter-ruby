module Reporter
  module Testing
    # Determines the path to a fixture
    #
    # Raises Reporter::UnknownFixtureError if the fixture can't be found
    def self.fixture_path(name)
      support = File.dirname __FILE__
      File.expand_path("../fixtures/#{name}", support).tap do |path|
        raise UnknownFixtureError.new(name) unless File.exists? path
      end
    end

    private
      # Raised when an unknown fixture name is requested
      class UnknownFixtureError < ArgumentError
        # Creates a new instance of this exception for a given fixture name
        def initialize(name)
          super "Unknown fixture '#{name}'"
        end
      end
  end
end
