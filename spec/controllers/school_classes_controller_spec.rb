require 'rails_helper'


describe SchoolClassesController do

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new school_classes" do
        expect{
          post :create, params: { :school_classes => {:title => "Computer Science", :room_number => 5 } }
        }.to change(SchoolClass,:count).by(1)
      end

      it "redirects to the new school_classes" do
        post :create, params: { :school_classes => {:title => "Computer Science", :room_number => 5 } }
        expect(response).to redirect_to SchoolClass.last
      end
    end
  end

end
