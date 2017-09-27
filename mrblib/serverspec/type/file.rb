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

    def character_device?
      @file.is_character_device()
    end

    def pipe?
      @file.is_pipe()
    end

    def socket?
      @file.is_socket()
    end

    def symlink?
      @file.is_symlink()
    end

    def contents
      @file.contents()
    end

    def owner
      @file.owner()
    end

    def group
      @file.group()
    end

    def readable?
      @file.is_readable()
    end

    def readable_by_owner?
      @file.is_readable_by_owner()
    end

    def readable_by_group?
      @file.is_readable_by_group()
    end

    def readable_by_others?
      @file.is_readable_by_others()
    end

    def readable_by_user?(user)
      @file.is_readable_by_user(user)
    end

    def writable?
      @file.is_writable()
    end

    def writable_by_owner?
      @file.is_writable_by_owner()
    end

    def writable_by_group?
      @file.is_writable_by_group()
    end

    def writable_by_others?
      @file.is_writable_by_others()
    end
  end
end
