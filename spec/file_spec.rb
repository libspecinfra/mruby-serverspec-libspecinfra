describe file('/etc/passwd') do
  its(:mode) { should eq 0o644 }
end

describe file('/etc/passwd') do
  it { should be_file }
end

describe file('/etc/passwd') do
  it { should_not be_directory }
end

=begin
Is exist matcher not defined in mruby-rspec ?
describe file('/etc/passwd') do
  it { should exist }
end
=end

describe file('/etc/passwd') do
  it { should_not be_block_device }
end
