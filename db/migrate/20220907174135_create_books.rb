class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
<<<<<<< HEAD
=======
      t.string :author
      t.integer :price
      t.date :publishedDate
>>>>>>> 87b43ad ( Checking Everything)

      t.timestamps
    end
  end
end
