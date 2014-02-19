# == Schema Information
#
# Table name: cats
#
#  id         :integer          not null, primary key
#  age        :integer
#  birth_date :date
#  color      :string(255)
#  name       :string(255)
#  sex        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Cat < ActiveRecord::Base
  validates :age, :color, :name, :sex, presence: :true

end
