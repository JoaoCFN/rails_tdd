RSpec::Matchers.define :be_a_multiple_of do |expected|
  match do |actual|
    actual % expected == 0
  end

  description do
    "be a mutiple of #{expected}"
  end

  failure_message do |actual|
    "expected that #{actual} would be a mutiple of #{expected}"
  end
end

describe 'Custom Matcher' do
  subject { 18 }

  it { is_expected.to be_a_multiple_of(3) }
end