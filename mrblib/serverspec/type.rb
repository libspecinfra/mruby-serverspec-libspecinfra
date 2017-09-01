
module Kernel
  define_method 'file' do |*args|
    Serverspec::Type::File.new(*args)
  end
end
