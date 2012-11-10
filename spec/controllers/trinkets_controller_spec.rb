require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TrinketsController do
  # This should return the minimal set of attributes required to create a valid
  # Trinket. As you add validations to Trinket, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    gear_enhancements = []
    gear_enhancements << attributes_for(:gear_enhancement).merge({enhancement_id: Enhancement.first.id})
    gear_enhancements << attributes_for(:gear_enhancement).merge({enhancement_id: Enhancement.last.id})
    {
      name: 'Awesome Trinket',
      level: 1,
      slot_id: Slot.find_by_name('Amulet').id,
      gear_enhancements: gear_enhancements
    }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TrinketsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all trinkets as @trinkets" do
      trinket = create(:trinket, :with_enhancement)
      get :index, {}, valid_session
      assigns(:trinkets).should eq([trinket])
    end
  end

  describe "GET show" do
    it "assigns the requested trinket as @trinket" do
      trinket = create(:trinket, :with_enhancement)
      get :show, {:id => trinket.to_param}, valid_session
      assigns(:trinket).should eq(trinket)
    end
  end

  describe "GET new" do
    it "assigns a new trinket as @trinket" do
      get :new, {}, valid_session
      assigns(:trinket).should be_a_new(Trinket)
    end
  end

  describe "GET edit" do
    it "assigns the requested trinket as @trinket" do
      trinket = create(:trinket, :with_enhancement)
      get :edit, {:id => trinket.to_param}, valid_session
      assigns(:trinket).should eq(trinket)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Trinket" do
        expect {
          post :create, {:trinket => valid_attributes}, valid_session
        }.to change(Trinket, :count).by(1)
      end

      it "assigns a newly created trinket as @trinket" do
        post :create, {:trinket => valid_attributes}, valid_session
        assigns(:trinket).should be_a(Trinket)
        assigns(:trinket).should be_persisted
      end

      it "redirects to the created trinket" do
        post :create, {:trinket => valid_attributes}, valid_session
        response.should redirect_to(Trinket.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved trinket as @trinket" do
        # Trigger the behavior that occurs when invalid params are submitted
        Trinket.any_instance.stub(:save).and_return(false)
        post :create, {:trinket => {}}, valid_session
        assigns(:trinket).should be_a_new(Trinket)
      end

      it "redirects to the 'trinkets#index' action" do
        # Trigger the behavior that occurs when invalid params are submitted
        Trinket.any_instance.stub(:save).and_return(false)
        post :create, {:trinket => {}}, valid_session
        response.should redirect_to(controller: :trinkets, action: :index)
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested trinket" do
        trinket = create(:trinket, :with_enhancement)
        # Assuming there are no other trinkets in the database, this
        # specifies that the Trinket created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Trinket.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => trinket.to_param, :trinket => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested trinket as @trinket" do
        trinket = create(:trinket, :with_enhancement)
        put :update, {:id => trinket.to_param, :trinket => valid_attributes}, valid_session
        assigns(:trinket).should eq(trinket)
      end

      it "redirects to the trinket" do
        trinket = create(:trinket, :with_enhancement)
        put :update, {:id => trinket.to_param, :trinket => valid_attributes}, valid_session
        response.should redirect_to(trinket)
      end
    end

    describe "with invalid params" do
      it "assigns the trinket as @trinket" do
        trinket = create(:trinket, :with_enhancement)
        # Trigger the behavior that occurs when invalid params are submitted
        Trinket.any_instance.stub(:save).and_return(false)
        put :update, {:id => trinket.to_param, :trinket => {}}, valid_session
        assigns(:trinket).should eq(trinket)
      end

      it "redirects to the 'trinkets#show' action" do
        trinket = create(:trinket, :with_enhancement)
        # Trigger the behavior that occurs when invalid params are submitted
        Trinket.any_instance.stub(:save).and_return(false)
        put :update, {:id => trinket.to_param, :trinket => {}}, valid_session
        response.should redirect_to(controller: :trinkets, action: :show)
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested trinket" do
      trinket = create(:trinket, :with_enhancement)
      expect {
        delete :destroy, {:id => trinket.to_param}, valid_session
      }.to change(Trinket, :count).by(-1)
    end

    it "redirects to the trinkets list" do
      trinket = create(:trinket, :with_enhancement)
      delete :destroy, {:id => trinket.to_param}, valid_session
      response.should redirect_to(trinkets_url)
    end
  end

end