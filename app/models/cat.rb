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
  validates :color, inclusion: { in: %w(calico black white brown green), message: "- please share your cat's color with us :)" }
  validates :sex, inclusion: { in: %w(M F) }
  validates :age, numericality: { only_integer: true, message: "should only be round numbers" }

  has_many(
    :requests,
    foreign_key: :cat_id,
    primary_key: :id,
    class_name: 'CatRentalRequest',
    dependent: :destroy
  )


end
