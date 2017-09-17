MRuby::Build.new do |conf|
  toolchain :gcc
  conf.gembox 'default'
  conf.gem File.expand_path(File.dirname(__FILE__))
  conf.enable_test
  conf.linker do |linker|
    linker.libraries = %w(specinfra m)
  end
end

