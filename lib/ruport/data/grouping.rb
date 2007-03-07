module Ruport::Data

  # === Overview
  #
  # This class implements a group data structure for Ruport. Group is
  # simply a subclass of Table that adds a :name attribute.
  # 
  class Group < Table
    attr_reader :name

    # Creates a new group based on the supplied options.
    #
    # Valid options:
    # <b><tt>:name</tt></b>::         The name of the Group
    #
    # All of the options available to Table are also available.
    #
    # Example:
    #
    #   group = Group.new :name => 'My Group',
    #                     :data => [[1,2,3], [3,4,5]], 
    #                     :column_names => %w[a b c]
    #
    def initialize(options={})
      @name = options[:name]
      super
    end

    # Create a copy of the Group: records will be copied as well.
    #
    # Example:
    #
    #   one = Group.new :name => 'test',
    #                   :data => [[1,2], [3,4]],
    #                   :column_names => %w[a b]
    #   two = one.dup
    #
    def dup
      obj = super
      obj.name = name
      return obj
    end

    protected

    def name=(value) #:nodoc:
      @name = value
    end
  end
  
end
