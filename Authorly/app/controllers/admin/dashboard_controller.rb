class Admin::DashboardController < ApplicationController
  def clicks
    @click_data = Click.get_click_data
    respond_to do |format|
      format.json { render json: @click_data }
    end
  end

  def impressions
  	daily_impressions = Article.impressions_per_article_per_day
  	@impressions_data = []
  	daily_impressions.each do |d|
  		id = d["_id"]
        daily_impressions = d["value"]
        date = d["id"]["created_at"]
        impressions = daily_impressions["count"]
        @impressions_data << {:date => date.to_i, :impressions => impressions.to_i}
    end
    respond_to do |format| format.json { render json: @impressions_data }
    end
  end
end
