MRuby::Gem::Specification.new('mruby-serverspec-libspecinfra') do |spec|
  spec.license = 'MIT'
  spec.authors = 'Gosuke Miyashita'
  spec.add_dependency 'mruby-rspec', github: 'syucream/mruby-rspec'
  spec.add_dependency 'mruby-libspecinfra',  github: 'libspecinfra/mruby-libspecinfra'

end
