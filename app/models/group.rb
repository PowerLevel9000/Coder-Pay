class Group < ApplicationRecord
  # Associations 

  belongs_to :user, class_name: "User", foreign_key: :user_id
  has_many :expenses, class_name: "Expense", foreign_key: :expense_id

  # validations

  validates :name, presence :true
  validates :icon, presence :true
end
