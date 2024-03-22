require 'student'
require 'course'

describe 'Mocks' do
  it '#bar' do
    student = Student.new

    expect(student).to receive(:bar)

    student.bar
  end

  it 'args' do
    student = Student.new
    expect(student).to receive(:foo).with(123)
    student.foo(123)
  end

  it 'repetition' do
    student = Student.new
    expect(student).to receive(:foo).with(123).twice
    student.foo(123)
    student.foo(123)
  end

  it 'return' do
    student = Student.new
    expect(student).to receive(:foo).with(123).and_return(true)
    print student.foo(123)
  end
end