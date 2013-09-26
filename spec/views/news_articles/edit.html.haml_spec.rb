require 'spec_helper'

describe "news_articles/edit" do
  before(:each) do
    @news_article = assign(:news_article, stub_model(NewsArticle,
      :headline => "MyString",
      :content => "MyText",
      :author => "MyString"
    ))
  end

  it "renders the edit news_article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", news_article_path(@news_article), "post" do
      assert_select "input#news_article_headline[name=?]", "news_article[headline]"
      assert_select "textarea#news_article_content[name=?]", "news_article[content]"
      assert_select "input#news_article_author[name=?]", "news_article[author]"
    end
  end
end
