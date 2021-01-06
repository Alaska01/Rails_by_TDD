require 'rails_helper'

RSpec.describe 'List Players' do
    it "it displays first name and last name from players saved" do
        player1 = Player.create(first_name: "Eduardo", last_name: "Baik")
        player1 = Player.create(first_name: "Christopher", last_name: "Burns")

        visit root_path

        expect(page).to have_text("Eduardo")
        expect(page).to have_text("Baik")
        expect(page).to have_text("Christopher")
        expect(page).to have_text("Burns")

        expect(page).to have_link("New Player")

    end

end