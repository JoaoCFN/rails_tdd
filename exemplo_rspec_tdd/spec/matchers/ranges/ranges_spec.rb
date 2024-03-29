describe (1..5), 'Ranges' do
  it '#cover' do
    expect(subject).to cover(2)
    expect(subject).to cover(2, 5)
    expect(subject).not_to cover(0, 6)
  end

  it { is_expected.to cover(3) }
  it { is_expected.to cover(3, 4) }
  it { is_expected.not_to cover(7) }
end