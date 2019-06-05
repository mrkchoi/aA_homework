# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :username, :session_token, presence: true
  validates :password_digest, presence: {message: "Password can't be blank"}
  validates :password, length: {minimum: 6, allow_nil: true}
  after_initialize :ensure_session_token



  def self.find_by_credentials
    username = self.username
    password = self.password
  end

  def self.generate_session_token
  end

  def reset_session_token!
  end

  def password=(pw)
  end


  private

  def ensure_session_token

  end







end
