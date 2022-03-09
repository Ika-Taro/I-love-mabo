FactoryBot.define do
  factory :item do
    name                 {'オムライス'}
    moto_id    {'1'}
    touban_id    {'1'}
    touchi_id    {'1'}
    tenmen_id    {'1'}
    soy_sauce_id    {'1'}
    sake_id    {'1'}
    soup_id    {'1'}
    chili_pepper_id    {'1'}
    oil_id    {'1'}
    minced_meat_id    {'1'}
    negi_id    {'1'}
    tofu_id    {'1'}
    garlic_id    {'1'}
    ginger_id    {'1'}
    huajiao_id    {'1'}

    explanatory_note    {'美味しいです'}

    association :user
    
  end
end