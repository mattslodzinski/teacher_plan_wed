class User < ApplicationRecord
  # Direct associations

  belongs_to :action,
             :required => false,
             :class_name => "ActionStep"

  # Indirect associations

  # Validations

  validates :first_name, :uniqueness => true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
