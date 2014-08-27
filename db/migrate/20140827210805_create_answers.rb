class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.integer :upvotes, array: true

      t.references :user, index: true
      t.references :question, index: true

      t.timestamps
    end

    add_index :answers, :upvotes, using: 'gin'
  end
end
