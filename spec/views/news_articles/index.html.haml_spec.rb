require 'spec_helper'

describe "news_articles/index" do
  before(:each) do
    assign(:news_articles, [
      stub_model(NewsArticle,
        :headline => "Headline",
        :content => "MyText",
        :author => "Author"
      ),
      stub_model(NewsArticle,
        :headline => "Headline",
        :content => "MyText",
        :author => "Author"
      )
    ])
  end

  it "renders a list of news_articles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Headline".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
  end
end
