class CreateStudents < ActiveRecord::Migration[5.1]
  def up
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY
      )
    SQL

    ActiveRecord::Base.connection.execute(sql)
  end

  def down
  end

  def change
    create_table :students do |t|
      t.string :name
    end
  end
end
