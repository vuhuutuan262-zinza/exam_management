class CreateExams < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.references :subject, null: false, foreign_key: true
      t.string :name
      t.string :status, null: false, default: "draft"
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
