DietaryRequirement.destroy_all
categories = ['vegans' ,  'vegetarians', 'nut allergies', 'lactose intolerant',
      'halal', 'celiacs']
categories.each do |category|
  DietaryRequirement.create!(categories: category)
end
