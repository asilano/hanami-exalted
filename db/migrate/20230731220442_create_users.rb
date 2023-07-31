# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :users do
      primary_key :id
      column :email, String, null: false
      column :name, String, null: false
      column :password_digest, String, null: false
      unique :email
    end
  end
end
