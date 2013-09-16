class Survey < ActiveRecord::Base
  attr_accessible :name, :questions_attributes
  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions
end
