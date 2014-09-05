class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :subject
      t.text :content

      t.references :user, index: true

      t.timestamps
    end
  end
end
