class SectionEdit < ApplicationRecord
	belong_to :editor, :class_name => "Adminuser", :
	foreign_key => "admin_usr_id"
	belong_to :section 
end
