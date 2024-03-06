describe 'Matcher output' do
  it { expect{ puts "John" }.to output.to_stdout }
  it { expect{ print "John" }.to output("John").to_stdout }
  it { expect{ puts "John Carl" }.to output(/John/).to_stdout }

  it { expect{ warn "John" }.to output.to_stderr }
  it { expect{ warn "John" }.to output("John\n").to_stderr }
  it { expect{ warn "John Carl" }.to output(/John/).to_stderr }
end