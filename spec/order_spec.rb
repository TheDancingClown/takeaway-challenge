require 'order'

describe Order do
  let(:order) { Order.new }
  describe '#initialize' do
    it 'creates an empty list' do
      expect(order.list).to be_an(Array)
    end
  end

  describe '#add' do
    it 'adds dishes to the order' do
      order.add("Ramen")
      expect(order.list).to eq ["Ramen"]
    end
  end

  describe '#remove' do
    it 'removes a dish from the order' do
      order.add("Ramen")
      order.remove("Ramen")
      expect(order.list).to be_empty
    end
  end

  describe '#confirm' do
    it 'completes the order' do
      order.add("Ramen")
      expect(order.confirm).to be_empty
    end
  end

  describe '#total' do
    it 'shows an order total' do
      order.add("pizza")
      expect(order.total).to eq 6
    end
  end

  describe "send text" do
    it 'sends a text back to the user' do
      expect { order.send_text } .to output("Thank you! Your order was placed and will be delivered before 18:52\n").to_stdout
    end
  end

end