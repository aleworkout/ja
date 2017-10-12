class DiscountActivity < ActiveRecord::Base
    belongs_to:discount
    belongs_to:activity_type
end
