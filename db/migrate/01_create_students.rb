class CreateStudents < ActiveRecord::Migration[5.1]
  def up
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS artists (
      id INTEGER PRIMARY KEY
      )
    SQL

    ActiveRecord::Base.connection.execute(sql)
  end

  def down
  end

  def change
    create_table :artists do |t|
      t.string :name
    end
  end
end
