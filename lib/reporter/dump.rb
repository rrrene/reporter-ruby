module Reporter
  # Public: Represents a dump of data exported from Reporter
  #
  # Examples
  #
  #   Reporter::Dump.from_file("/path/to/dump.json")
  #   # => #<Reporter::Dump:0x1234 @contents="...">
  class Dump
    # Public: Load a Reporter dump from a file on disk.
    #
    # path - An object that responds to #to_s. Represents the path to
    #        the file on disk to be loaded.
    #
    # Returns the Dump object representing the loaded dump.
    # Raises Errno::ENOENT if the file cannot be found.
    # Raises Errno::EACCES if the file cannot be accessed.
    def self.from_file(path)
      new(File.read(path.to_s))
    end

    # Internal: Returns a String with the raw contents of the dump.
    attr_accessor :contents

    # Public: Initialize a new Dump from the dump contents
    #
    # contents - An object that responds to #to_s. Represents the raw
    #            serialized contents loaded from the dump.
    def initialize(contents)
      @contents = contents.to_s
    end
  end
end
