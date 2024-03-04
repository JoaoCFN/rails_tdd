describe 'be_within Matcher' do
  it {expect(12.5).to be_within(0.5).of(12.0) }
  it {expect(11.4).not_to be_within(0.5).of(12.0) }
  it {expect(12.6).not_to be_within(0.5).of(12.0) }
  it {expect([11.75, 12.1, 12.42]).to all(be_within(0.5).of(12.0)) }
end