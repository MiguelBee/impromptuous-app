namespace :orders do
	desc "delete day old orders"
	task delete_1_day_old: :environment do
		Order.where(['created_at < ?', 1.days.ago]).destroy_all
	end
end