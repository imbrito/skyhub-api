class Picture
  include Mongoid::Document
  field :url, type: String
  field :small, type: String
  field :medium, type: String
  field :large, type: String
  embedded_in :album

  def self.client_webservice
    HTTParty.get('http://54.152.221.29/images.json').to_h
  end

  def self.populate
    response = Picture.client_webservice
    @album = Album.new
    response['images'].each do |image|
      url = Cloudinary::Uploader.upload(image['url'], :public_id => "#{Picture.named_picture(image)}", :format => "jpg")['url']
      index = url.split('/').index("upload")
      small = Picture.resize_small(url,index)
      medium = Picture.resize_medium(url,index)
      large = Picture.resize_large(url,index)
      @album.pictures.build(url: "#{url}", small: "#{small}", medium: "#{medium}", large: "#{large}").save
    end
  end

  def self.show_without_ids(albums)
    hash = JSON.parse(albums)
    hash.delete('_id')
    hash['pictures'].each { |picture| picture.delete('_id') }
    return hash
  end

  def self.named_picture(image)
    image['url'].split('/').pop.split('.').shift
  end

  def self.resize_small(url,index)
    url.split('/').insert(index+1,"c_scale,h_240,w_320").join('/')
  end

  def self.resize_medium(url,index)
    url.split('/').insert(index+1,"c_scale,h_288,w_384").join('/')
  end

  def self.resize_large(url,index)
    url.split('/').insert(index+1,"c_scale,h_480,w_640").join('/')
  end

end
