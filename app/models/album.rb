class Album
  include Mongoid::Document
  embeds_many :pictures
end
