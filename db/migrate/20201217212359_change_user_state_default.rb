class ChangeUserStateDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :state, from: nil, to: 0
  end
end
