require 'rails_helper'

RSpec.describe AlbumsController, type: :routing do

  it 'routing to albums#index' do
    expect(get: '/albums').to route_to("format"=>"json", "controller"=>"albums", "action"=>"index")
  end
  
end
