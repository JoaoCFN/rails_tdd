require 'person'

describe 'Attributes Matchers' do
  it 'have_attributes' do
    person = Person.new
    person.name = "Jon"
    person.age = 22
    expect(person).to have_attributes(name: start_with("J"), age: (be >= 20))
  end
end