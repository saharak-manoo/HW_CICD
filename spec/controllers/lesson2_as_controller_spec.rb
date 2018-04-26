require 'rails_helper'
describe Lesson2AsController, type: :controller do
  # see more about Controllers testing
  # https://everydayrails.com/2012/04/07/testing-series-rspec-controllers.html

  # This should return the minimal set of attributes required to create a valid
  # Lesson2A. As you add validations to Lesson2A, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    {
      string_test: "Sawadde Ja",
      datetime_test: DateTime.now,
      integer_test: 12345,
      boolean_test: true
    }
  end

  let(:invalid_attributes) { }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Lesson2AsController. Be sure to keep this updated too.
  let(:valid_session) do
    {
      user_id: create_super_admin.id
    }
  end
  describe "Lesson2-A Introduce to controllers testing" do
    describe "GET #index" do
      it "assigns to eq" do
        lesson2_a = FactoryBot.create(:lesson2_a, valid_attributes)
        get :index
        assigns(:lesson2_as).should eq([lesson2_a])
      end

      it "assigns bobo to eq 'bobo ja'" do
        get :index
        assigns(:bobo).should eq('bobo ja')
      end

      it "renders the :index view" do
        get :index
        response.should render_template :index
      end
    end
  end

  describe "Generated example" do
    describe "GET #index" do
      it "returns a success response" do
        lesson2_a = FactoryBot.create(:lesson2_a, valid_attributes)
        get :index, params: {}, session: valid_session
        expect(response).to be_success
      end
    end

    describe "GET #show" do
      it "returns a success response" do
        lesson2_a = FactoryBot.create(:lesson2_a, valid_attributes)
        get :show, params: {id: lesson2_a.to_param}, session: valid_session
        expect(response).to be_success
      end
    end

    describe "GET #new" do
      it "returns a success response" do
        get :new, params: {}, session: valid_session
        expect(response).to be_success
      end
    end

    describe "GET #edit" do
      it "returns a success response" do
        lesson2_a = FactoryBot.create(:lesson2_a, valid_attributes)
        get :edit, params: {id: lesson2_a.to_param}, session: valid_session
        expect(response).to be_success
      end
    end

    describe "POST #create" do
      context "with valid params" do
        it "creates a new Lesson2A" do
          expect {
            post :create, params: {lesson2_a: valid_attributes}, session: valid_session
          }.to change(Lesson2A, :count).by(1)
        end

        it "redirects to the created lesson2_a" do
          post :create, params: {lesson2_a: valid_attributes}, session: valid_session
          expect(response).to redirect_to(Lesson2A.last)
        end
      end

      context "with invalid params" do
        it "returns a success response (i.e. to display the 'new' template)" do
          skip("Handle for invalid param")
          post :create, params: {lesson2_a: invalid_attributes}, session: valid_session
          expect(response).to be_success
        end
      end
    end

    describe "PUT #update" do
      context "with valid params" do
        let(:new_attributes) {
          skip("Add a hash of attributes valid for your model")
        }

        it "updates the requested lesson2_a" do
          lesson2_a = FactoryBot.create(:lesson2_a, valid_attributes)
          put :update, params: {id: lesson2_a.to_param, lesson2_a: new_attributes}, session: valid_session
          lesson2_a.reload
          skip("Add assertions for updated state")
        end

        it "redirects to the lesson2_a" do
          lesson2_a = FactoryBot.create(:lesson2_a, valid_attributes)
          put :update, params: {id: lesson2_a.to_param, lesson2_a: valid_attributes}, session: valid_session
          expect(response).to redirect_to(lesson2_a)
        end
      end

      context "with invalid params" do
        it "returns a success response (i.e. to display the 'edit' template)" do
          skip("Handle for invalid param")
          lesson2_a = FactoryBot.create(:lesson2_a, valid_attributes)
          put :update, params: {id: lesson2_a.to_param, lesson2_a: invalid_attributes}, session: valid_session
          expect(response).to be_success
        end
      end
    end

    describe "DELETE #destroy" do
      it "destroys the requested lesson2_a" do
        lesson2_a = FactoryBot.create(:lesson2_a, valid_attributes)
        expect {
          delete :destroy, params: {id: lesson2_a.to_param}, session: valid_session
        }.to change(Lesson2A, :count).by(-1)
      end

      it "redirects to the lesson2_as list" do
        lesson2_a = FactoryBot.create(:lesson2_a, valid_attributes)
        delete :destroy, params: {id: lesson2_a.to_param}, session: valid_session
        expect(response).to redirect_to(lesson2_as_url)
      end
    end
  end

end
