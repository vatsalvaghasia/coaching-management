class Teacher < ApplicationRecord
  rolify :role_cname => 'Role1'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :assign_default_role1

  def assign_default_role1
    self.add_role(:teacher) if self.roles.blank?
  end
end
