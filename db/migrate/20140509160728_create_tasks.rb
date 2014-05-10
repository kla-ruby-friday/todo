class CreateTasks < ActiveRecord::Migration
  def change
   create_table :tasks do |field|
     field.string :name
     field.string :place
   end
  end
end
