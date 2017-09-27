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

describe file('/etc/passwd') do
  it { should_not be_character_device }
end

describe file('/etc/passwd') do
  it { should_not be_pipe }
end

describe file('/etc/passwd') do
  it { should_not be_socket }
end

describe file('/etc/passwd') do
  it { should_not be_symlink }
end

describe file('/etc/passwd') do
  its(:contents) { should match /root/ }
end

describe file('/etc/passwd') do
  its(:owner) { should eq 'root' }
end

=begin
Diable this test because the group name of /etc/passwd differ
depending on platforms
describe file('/etc/passwd') do
  its(:group) { should eq 'wheel' }
end
=end

describe file('/etc/passwd') do
  it { should be_readable }
end

describe file('/etc/passwd') do
  it { should be_readable_by_owner }
end

describe file('/etc/passwd') do
  it { should be_readable_by_group }
end

describe file('/etc/passwd') do
  it { should be_readable_by_others }
end

describe file('/etc/passwd') do
  it { should be_readable_by_user('root') }
end

describe file('/etc/passwd') do
  it { should be_writable }
end

describe file('/etc/passwd') do
  it { should be_writable_by_owner }
end

describe file('/etc/passwd') do
  it { should_not be_writable_by_group }
end

describe file('/etc/passwd') do
  it { should_not be_writable_by_others }
end
