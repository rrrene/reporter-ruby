module Reporter
  # Represents a dump of data exported from Reporter
  class Dump
    # Loads a dump from a file
    def self.from_file(path)
      new(File.read(path))
    end

    attr_accessor :contents

    # Initialize a new Dump from the dump contents
    def initialize(contents)
      @contents = contents
    end
  end
end
