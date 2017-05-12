require 'rails_helper'

RSpec.describe Picture, type: :model do
  it { is_expected.to be_mongoid_document }
  it { is_expected.to be_embedded_in(:album) }

  describe 'fields' do
    it { is_expected.to have_field(:url).of_type(String) }
    it { is_expected.to have_field(:small).of_type(String) }
    it { is_expected.to have_field(:medium).of_type(String) }
    it { is_expected.to have_field(:large).of_type(String) }
  end

  describe 'methods' do
    let(:image) { { "url" => "http://res.cloudinary.com/imbrito/image/upload/v1494597046/example.jpg" } }
    let(:url) { "http://res.cloudinary.com/imbrito/image/upload/v1494597046/example.jpg" }

    it 'client_webservice' do
      expect(Picture.client_webservice.class).to eq(Hash)
    end

    it 'named_picture' do
      expect(Picture.named_picture(image)).to eq("example")
    end

    it 'resize_small' do
      expect(Picture.resize_small(url,5)).to eq("http://res.cloudinary.com/imbrito/image/upload/c_scale,h_240,w_320/v1494597046/example.jpg")
    end

    it 'resize_medium' do
      expect(Picture.resize_medium(url,5)).to eq("http://res.cloudinary.com/imbrito/image/upload/c_scale,h_288,w_384/v1494597046/example.jpg")
    end

    it 'resize_large' do
      expect(Picture.resize_large(url,5)).to eq("http://res.cloudinary.com/imbrito/image/upload/c_scale,h_480,w_640/v1494597046/example.jpg")
    end
  end
end
