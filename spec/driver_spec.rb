require 'driver'

RSpec.describe Driver do
  it "should honk" do
    d = Driver.new
    expect(d.honk).to eq('honk honk')
  end
end
