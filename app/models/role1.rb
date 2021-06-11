class Role1 < ApplicationRecord
  has_and_belongs_to_many :teachers, :join_table => :teachers_role1s
  
  belongs_to :resource,
             :polymorphic => true,
             :optional => true
  

  validates :resource_type,
            :inclusion => { :in => Rolify.resource_types },
            :allow_nil => true

  scopify
end
