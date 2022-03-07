require 'piggy_bank'

describe PiggyBank do
  let(:piggy_bank){ PiggyBank.new }
  it 'can put coins in a new piggy bank' do
    #act
    expect do
      piggy_bank.put_coins(10)
    end.to_not raise_error
    #assert that this didn't raise any error
    expect(piggy_bank.coins).to eq(10)
  end

  it "will not return cling if empty" do
    expect(piggy_bank.shake).to eq(nil)
  end

  it "will return cling if not empty" do
    piggy_bank.put_coins(1)
    expect(piggy_bank.shake).to eq('cling')
  end

  it "will return coins when broken" do
    piggy_bank.put_coins(45)
    expect(piggy_bank.break).to eq(45)
  end
end