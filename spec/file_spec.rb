describe file('/etc/passwd') do
  its(:mode) { should eq 0o644 }
end
