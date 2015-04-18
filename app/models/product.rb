class Product < ActiveRecord::Base
  default_scope { order('title ASC') }
  has_and_belongs_to_many :tags, join_table: :products_and_tags
  has_many :categories, -> { distinct }, through: :tags

  has_and_belongs_to_many :commission_types, join_table: :products_and_commission_types

  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  has_attached_file :screenshot, :styles => { :medium => "656x369>" }, :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :screenshot, :content_type => /\Aimage\/.*\Z/

  validates :title, presence: true, uniqueness: true
  has_many :links
  accepts_nested_attributes_for :links, allow_destroy: true


  has_one :homepage, -> { homepage }, :class_name => "Link"
  has_one :affiliate_link, -> { affiliate }, :class_name => "Link"

end
