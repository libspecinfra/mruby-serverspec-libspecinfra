module Serverspec::Type
  class File
    def initialize(name)
      @file = Serverspec::Config.specinfra.file(name)
    end

    def mode
      @file.mode
    end
  end
end
