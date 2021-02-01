class AddPledgeToUsers2 < ActiveRecord::Migration[6.0]

      def change
        add_column :users, :pledge, :integer
      end



  end
