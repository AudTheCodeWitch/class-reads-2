class FixTeacherBooleanColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :is_teacher?, :is_teacher
  end
end
