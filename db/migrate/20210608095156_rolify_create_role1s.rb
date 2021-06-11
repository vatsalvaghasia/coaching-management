class RolifyCreateRole1s < ActiveRecord::Migration[6.1]
  def change
    create_table(:role1s) do |t|
      t.string :name
      t.references :resource, :polymorphic => true

      t.timestamps
    end

    create_table(:teachers_role1s, :id => false) do |t|
      t.references :teacher
      t.references :role1
    end
    
    add_index(:role1s, :name)
    add_index(:role1s, [ :name, :resource_type, :resource_id ])
    add_index(:teachers_role1s, [ :teacher_id, :role1_id ])
  end
end
