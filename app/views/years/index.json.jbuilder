#json.array! @my_years, partial: "years/year", as: :year
#json.array! @my_years_months

json.array! @my_years_months, :id, :user_id, :year, :months,:monthly_target, :total, :created_at, :updated_at
    



