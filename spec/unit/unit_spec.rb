# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end


RSpec.describe Book, type: :model do
  subject do
  described_class.new(title: 'harry potter', author: "SAS")
end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end


RSpec.describe Book, type: :model do
  subject do
  described_class.new(title: 'harry potter', author: "SAS", price:"123")
end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    # described_class.new(title: 'harry potter', author: "SAS", price:"123", publishedDate:"08/08/2001")
    described_class.new(title: 'harry potter', author: "SAS", price:"123")
end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end
