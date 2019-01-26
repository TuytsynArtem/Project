class User < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :last_name
  validates_presence_of :password
  validates_presence_of :login


end
