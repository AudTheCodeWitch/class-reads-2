class AddTeacherToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :is_teacher?, :boolean
  end
end