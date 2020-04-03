title 'Tests role ansible template'

control 'Check SSHD config' do
  impact 0.8
  title 'Ensure sshd config is correct'
  desc 'Ensure sshd config is correct'
  describe command('sudo cat /etc/ssh/sshd_config | grep PasswordAuthentication') do
    its('stdout') { should eq "PasswordAuthentication yes\n" }
  end
end
