class ActivityType < ActiveRecord::Base
    has_many:publication_activities
    has_many:discount_activities
end
