require 'spec_helper'
require 'rails_helper'

describe DestinationsController, :type => :controller do
  let(:controller) { DestinationsController.new }

  context "Checkpoint 1" do
    it "should have an update action" do
      expect(controller).to respond_to(:update), "Did you add the 'update' action to the Destinations controller?"
    end

    it "should update the destination and redirect" do
        destination = Destination.create!(name: "Animals", image: "test", description: "test")
        post :update, id: destination.id, destination: { name: "Really Cute Animals" }

        updated_dest = Destination.find(destination.id)

        expect(updated_dest.name).to eq("Really Cute Animals")
      end
  end
end
