describe 'Ruby on Rails' do
  it { is_expected.to start_with('Ruby').and end_with('Rails') }
  it { expect(fruits).to eq('Banana').or eq('Orange').or eq('Grape') }
end