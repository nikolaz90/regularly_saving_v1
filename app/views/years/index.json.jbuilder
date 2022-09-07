json.array! @years.filter{ |item| item.user_id == current_user.id}, partial: "years/year", as: :year
