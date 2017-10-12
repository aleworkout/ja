class PublicationActivity < ActiveRecord::Base
    belongs_to:publication
    belongs_to:activity_type
end
