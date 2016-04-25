class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## Database authenticatable  #用資料庫進行登入
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable   #重新設定密碼
      #t.string   :reset_password_token
      #t.datetime :reset_password_sent_at

      ## Rememberable  ＃要不要記住密碼
      #t.datetime :remember_created_at

      ## Trackable  ＃追蹤紀錄
      #t.integer  :sign_in_count, default: 0, null: false
      #t.datetime :current_sign_in_at  #＃現在登入時間
      #t.datetime :last_sign_in_at      ##上次登入時間
      #t.string   :current_sign_in_ip   ##現在登入IP
      #t.string   :last_sign_in_ip     ##上次登入IP

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    #add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end