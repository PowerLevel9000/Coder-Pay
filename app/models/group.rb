class Group < ApplicationRecord
  # Associations 

  belongs_to :user, class_name: "User", foreign_key: :user_id
  has_and_belongs_to_many :expenses, join_table: "expenses_groups"

  validations

  validates :name, presence :true
  validates :icon, presence :true
end
