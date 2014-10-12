require 'rails_helper'

RSpec.describe "posts/index", :type => :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        :link => "Link",
        :post_information => "MyText",
        :user => nil,
        :category => nil
      ),
      Post.create!(
        :link => "Link",
        :post_information => "MyText",
        :user => nil,
        :category => nil
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
