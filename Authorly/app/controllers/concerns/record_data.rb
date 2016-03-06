module RecordData
  extend ActiveSupport::Concern
  included do
    def self.record(url, ip, article_id, user_id)
      self.create!(url: url, ip: ip, article_id: article_id, user_id: user_id)
    end
  end
end
