
categories = ['vegan' ,  'vegetarian', 'contains nuts', 'contains_diary',
      'halal', 'gluten free', 'kosher']
categories.each do |category|
  DietaryRequirement.create!(categories: category)
end
