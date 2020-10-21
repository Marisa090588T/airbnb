require 'rails_helper'

RSpec.describe Accommodation, type: :model do
  let!(:accommodation_yesterday) { create(:accommodation, :yesterday) }
  let!(:accommodation_one_week_ago) { create(:accommodation, :one_week_ago) }
  let!(:accommodation_one_month_ago) { create(:accommodation, :one_month_ago) }
  let!(:accommodation) { create(:accommodation) }

  context "validation" do
    it "activate" do
      expect(accommodation).to be_valid
    end

    it "invalid without name" do
      accommodation = build(:accommodation, name: nil)
      accommodation.valid?
      expect(accommodation.errors[:name]).to include("have to be input")
    end

    it "invalid without description" do
      accommodation = build(:accommodation, description: nil)
      accommodation.valid?
      expect(accommodation.errors[:description]).to include("have to be input")
    end

    it "name should be more than 3 length" do
      accommodation = build(:accommodation, name: 2)
      accommodation.valid?
      expect(accommodation.errors[:price]).to include("")
    end

    it "description should be more than 10 length" do
      accommodation = build(:accommodation, description: 9)
      accommodation.valid?
      expect(accommodation.errors[:price]).to include("")
    end

    context "order" do
      it "first post is the latest" do
        expect(accommodation).to eq Accommodation.first
      end
    end
  end
end
