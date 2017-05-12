require 'rails_helper'

RSpec.describe Album, type: :model do
  it { is_expected.to be_mongoid_document }
  it { is_expected.to embed_many(:pictures) }
end
