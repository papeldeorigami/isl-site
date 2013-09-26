require "spec_helper"

describe NewsArticlesController do
  describe "routing" do

    it "routes to #index" do
      get("/news_articles").should route_to("news_articles#index")
    end

    it "routes to #new" do
      get("/news_articles/new").should route_to("news_articles#new")
    end

    it "routes to #show" do
      get("/news_articles/1").should route_to("news_articles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/news_articles/1/edit").should route_to("news_articles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/news_articles").should route_to("news_articles#create")
    end

    it "routes to #update" do
      put("/news_articles/1").should route_to("news_articles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/news_articles/1").should route_to("news_articles#destroy", :id => "1")
    end

  end
end
