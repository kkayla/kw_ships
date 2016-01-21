class User < ActiveRecord::Base

  validates_presence_of :fname, :lname, :username, :email, :password
  validates_uniqueness_of :username
  validates_length_of :username, {minimum: 4}
  validates_length_of :password, {minimum: 5}
  # validates_format_of :email, with: /regex/i

  has_many :boats
end
