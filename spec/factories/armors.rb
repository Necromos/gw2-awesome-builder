    # Read about factories at https://github.com/thoughtbot/factory_girl

    FactoryGirl.define do
      sequence(:armor_name) { |n| "Armor Piece ##{n}" }

      factory :armor do
        name "MyString"
        defense 1
        level 1

        weight
        slot
      end
    end
