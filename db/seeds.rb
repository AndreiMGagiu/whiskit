DietaryRequirement.destroy_all
categories = ['vegan' ,  'vegetarian', 'contains nuts', 'contains_diary',
      'halal', 'gluten free']
categories.each do |category|
  DietaryRequirement.create!(categories: category)
end
