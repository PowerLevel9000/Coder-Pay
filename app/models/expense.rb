class Expense < ApplicationRecord
  belongs_to :author, class_name: "User", foreign_key: :author_id
  has_many :groups, class_name: "Group", foreign_key: :group_id
end
