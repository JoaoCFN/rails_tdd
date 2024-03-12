describe 'Classes matchers' do
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer) # Exactly the class
  end

  it 'be_kind_of' do
    expect(10).to be_kind_of(Integer) # It could be by inheritance
  end

  it 'respond_to' do
    expect("ruby").to respond_to(:size)
    expect("ruby").to respond_to(:count)
  end

  it 'be_an / be_a' do
    expect("Jon").to be_an(String)
    expect("Doe").to be_a(String)
  end
end