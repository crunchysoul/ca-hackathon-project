class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile

  def followed_by?(user)
    followers.exists?(user.id)
  end

  def toggle_followed_by(user)
    # if currently following, we unfollow
    if followers.exists?(user.id)
      followers.destroy(user)
    # if currently not following, we follow
    else
      followers << user
    end
  end
end
