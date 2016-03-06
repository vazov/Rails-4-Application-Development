class Page
  include Mongoid::Document
  field :title, type: String
  field :body, type: String
  field :page_type, type: String

  has_many :child_page, :class_name => 'Page', :inverse_of => :parent_page
  has_many :parts
  belongs_to :parent_page, :class_name => 'Page', :inverse_of => :child_page

  validates :title, :presence => true
  validates :body, :presence => true
  PAGE_TYPE= %w(Home News Video Contact Team Careers)
end
