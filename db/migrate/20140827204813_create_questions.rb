class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :subject
      t.text :content
      t.string :category
      t.integer :upvotes, array: true

      t.references :user, index: true

      t.timestamps
    end

    add_index :questions, :upvotes, using: 'gin'
  end
end
