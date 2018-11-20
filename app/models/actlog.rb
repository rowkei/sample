class Actlog < ApplicationRecord
	belongs_to :category
	validates :date, presence: true
	validates :starttime, presence: true
	validates :endtime, presence: true
	validates :category_id, presence: true
	validate :start_end_check

	def time
		(endtime - starttime) / 60 / 60
	end

	private
		 def start_end_check
			 return starttime.blank? || endtime.blank?
       errors.add(:endtime, "は開始日より後を入力してください。") unless self.starttime < self.endtime
		 end
		 
end		