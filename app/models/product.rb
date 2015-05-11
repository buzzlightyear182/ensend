class Product < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
  is_impressionable

  # default_scope { order('title ASC') }
  default_scope { order('ranking DESC') }
  has_and_belongs_to_many :tags, join_table: :products_and_tags
  has_many :categories, -> { distinct }, through: :tags

  has_and_belongs_to_many :commission_types, join_table: :products_and_commission_types

  validates :title, presence: true, uniqueness: true
  has_many :links
  accepts_nested_attributes_for :links, allow_destroy: true

  has_many :tab_contents
  accepts_nested_attributes_for :tab_contents, allow_destroy: true

  has_one :homepage, -> { homepage }, :class_name => "Link"
  has_one :affiliate_link, -> { affiliate }, :class_name => "Link"

  def affiliate_weight
    with_affiliate ? ((impressionist_count * 0.2) + (homepage.counter.impressionist_count * 0.5) + (affiliate_link.counter.impressionist_count)) * 0.3 : 0
  end

  def update_ranking
    new_rank =(impressionist_count * 0.2) + (affiliate_link.counter.impressionist_count) + (homepage.counter.impressionist_count * 0.5) + affiliate_weight
    self.update(ranking: new_rank)
  end

end
