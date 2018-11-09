class Actlog < ApplicationRecord
    belongs_to :category
    
    validates :date, presence: true
    validates :starttime, presence: true
    validates :endtime, presence: true
    validates :category_id, presence: true

    def time
        (endtime - starttime)/60/60
    end
end
