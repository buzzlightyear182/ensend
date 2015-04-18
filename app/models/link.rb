class Link < ActiveRecord::Base
  belongs_to :product
  belongs_to :link_type
  has_one :counter

  validates :url, presence: true, uniqueness: { case_sensitive: false }
  validates :link_type, presence: true

  scope :homepage, -> {where(link_type_id: 1)}
  scope :affiliate, -> {where(link_type_id: 2)}

  after_create :set_counter

  private

  def set_counter
    Counter.create(link: self, count: 0)
  end

end
