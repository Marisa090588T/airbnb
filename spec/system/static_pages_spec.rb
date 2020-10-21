require 'rails_helper'

RSpec.describe "StaticPages", type: :system do
  describe "TopPage" do
    context "page" do
      before do
        visit root_path
      end

      it "String exist" do
        expect(page).to have_content 'Airbnb'
      end
    end
  end
end
