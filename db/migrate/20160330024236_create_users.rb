class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

        #Omniauth purposes
    	t.string :provider
    	t.string :uid

    	t.string :name
    	t.string :email
    	t.string :phone
    	t.string :gender
    	t.date	 :date_of_birth
    	t.string :kind_of_job
    	t.string :location
    	t.string :bio
    	t.string :references

    	t.string		

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
