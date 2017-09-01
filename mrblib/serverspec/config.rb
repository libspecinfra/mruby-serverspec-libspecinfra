module Serverspec
  class Config
    b = Libspecinfra::Backend::Direct.new
    @@specinfra = Libspecinfra::Specinfra.new(b)

    def self.specinfra
      @@specinfra
    end
  end  
end
