describe 'Test Double' do
  it {
    user = double('User')
    allow(user).to receive_messages(name: 'Jack', password: 'secret')
    user.name
    user.password
  }
end