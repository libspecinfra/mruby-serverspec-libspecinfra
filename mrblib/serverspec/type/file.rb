module Serverspec::Type
  class File
    def initialize(name)
      @file = Serverspec::Config.specinfra.file(name)
    end

    def mode
      @file.mode
    end

    def file?
      @file.is_file()
    end

    def directory?
      @file.is_directory()
    end

    def exists?
      @file.exist()
    end

    def block_device?
      @file.is_block_device()
    end
  end
end
