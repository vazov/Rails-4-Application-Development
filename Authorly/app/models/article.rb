class Article
  include Mongoid::Document
  include Mongoid::Slug
  include Mongoid::Timestamps::Created
  field :title, type: String
  field :body, type: String
  field :_slugs, type: Array, default: []
  field :user_id, type: String

  is_impressionable

  #slug :title, :history => true
  belongs_to :user
  has_many :clicks

  def track_clicks_per_article
  	clicks = Click.where(article_id: "#{self.id}")
  	click_count = clicks.count
  end

  def self.impressions_per_article_per_day
    map = %Q{
      function() {
        emit({created_at: this.created_at.getDate()}, {count: 1});
        }
      }
  end
end
