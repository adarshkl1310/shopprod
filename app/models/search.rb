class Search < ApplicationRecord



def search_shops
shops =Shop.where("shop_name LIKE '%#{keywords}%' AND shop_city LIKE '%#{keywords2}%' AND shop_country LIKE '%#{keywords3}%' AND market_type LIKE '%#{keywords4}%'") if keywords||keywords2||keywords3||keywords4.present?

return shops

end

end
