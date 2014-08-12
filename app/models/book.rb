class Book < ActiveRecord::Base
    belongs_to :subject
    belongs_to :condition
    belongs_to :status
end
