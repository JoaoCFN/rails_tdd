require 'rails_helper'

RSpec.describe Customer, type: :model do
  it '#full_name' do
    customer = create(:customer)
    expect(customer.full_name).to start_with('Sr. ')
  end

  it '#full_name - overrided attribute' do
    customer = create(:customer, name: 'João Carlos')
    expect(customer.full_name).to start_with('Sr. João Carlos')
  end

  it {
    expect{ create(:customer) }.to change{ Customer.all.size }.by(1)
  }
end
