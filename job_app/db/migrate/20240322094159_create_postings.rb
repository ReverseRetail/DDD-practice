class CreatePostings < ActiveRecord::Migration[7.1]
  def change
    create_table :postings do |t|
      t.string :title, null: false
      t.text :description
      t.text :qualifications, null: false
      t.text :benefits

      t.timestamps
    end
  end
end
