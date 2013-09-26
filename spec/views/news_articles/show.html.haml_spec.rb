require 'spec_helper'

describe "news_articles/show" do
  before(:each) do
    @news_article = assign(:news_article, stub_model(NewsArticle,
      :headline => "Headline",
      :content => "MyText",
      :author => "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Headline/)
    rendered.should match(/MyText/)
    rendered.should match(/Author/)
  end
end
