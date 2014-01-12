class Contact < ActiveRecord::Base
  
  has_no_table

  column :name
  column :email
  column :content, :string

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :content
  validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}/i
  validates_length_of :content, :maximum => 500

end