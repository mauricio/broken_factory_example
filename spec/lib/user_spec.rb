describe User do

  let(:user) { create(:user) }

  it 'should allow setting more options' do
    user.options[:timezone] = "UTC"
    expect(user.options).to eq(hometown: "Tokyo", timezone: "UTC")
  end

  it 'should allow setting yet another option' do
    user.options[:state] = "The Shire"
    expect(user.options).to eq(hometown: "Tokyo", state: "The Shire")
  end

  it 'should change the full name if first name is changed' do
    user.first_name << "ny"
    expect(user.full_name).to eq("Johnny Doe")
  end

  it 'should change the full name of the last name is changed' do
    user.last_name << "rn"
    expect(user.full_name).to eq("John Doern")
  end

end
