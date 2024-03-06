require 'person'

describe 'Attributes Matchers With Let' do
  let(:pessoa) { Pessoa.new }

  it 'have_attributes' do
    person.name = "Jon"
    person.age = 22
    expect(person).to have_attributes(name: start_with("J"), age: (be >= 20))
  end
end