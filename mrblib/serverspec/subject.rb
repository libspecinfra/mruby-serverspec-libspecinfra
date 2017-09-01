module RSpec
  class ExampleGroup

    # NOTE Override to pass a resource type object to a matcher
    def subject
      Proc.new do
        @target
      end
    end

  end
end
