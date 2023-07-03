class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_create :name_decoration
  # Associations

  has_many :groups, class_name: "Group", foreign_key: :user_id, dependent: :destroy
  has_many :expenses, class_name: "Expense", foreign_key: :author_id, dependent: :destroy

  # validations

  validates :name, presence: true, length: { maximum: 250, minimum: 2 }
  
  private 

  def name_decoration
    self.name = name.capitalize if name.blank?
  end
end
