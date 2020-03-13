class ChangeStudentRoleDefaultToFalseInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :student_role, :boolean, default: false
  end
end
