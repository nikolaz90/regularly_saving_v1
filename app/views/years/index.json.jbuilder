#json.array! @my_years, partial: "years/year", as: :year
#json.array! @my_years_months

#json.array! @my_years_months, :id, :user_id, :year, :organised_year_and_total, :months,:monthly_target, :total, :created_at, :updated_at
    

json.array! @my_years, :id, :user_id, :year, :organised_year_and_total,:monthly_target, :created_at, :updated_at



