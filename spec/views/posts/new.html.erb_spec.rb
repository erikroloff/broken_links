require 'rails_helper'

RSpec.describe "posts/new", :type => :view do
  before(:each) do
    assign(:post, Post.new(
      :link => "MyString",
      :post_information => "MyText",
      :user => nil,
      :category => nil
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input#post_link[name=?]", "post[link]"

      assert_select "textarea#post_post_information[name=?]", "post[post_information]"

      assert_select "input#post_user_id[name=?]", "post[user_id]"

      assert_select "input#post_category_id[name=?]", "post[category_id]"
    end
  end
end
