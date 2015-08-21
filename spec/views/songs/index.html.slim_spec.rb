require 'rails_helper'

RSpec.describe "songs/index", :type => :view do
  before(:each) do
    assign(:songs, [
      Song.create!(
        :title => "Title",
        :author => "Author",
        :times => "Times",
        :key => "Key",
        :tempo => "Tempo",
        :tab => "Tab",
        :completeness => "Completeness"
      ),
      Song.create!(
        :title => "Title",
        :author => "Author",
        :times => "Times",
        :key => "Key",
        :tempo => "Tempo",
        :tab => "Tab",
        :completeness => "Completeness"
      )
    ])
  end

  it "renders a list of songs" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Times".to_s, :count => 2
    assert_select "tr>td", :text => "Key".to_s, :count => 2
    assert_select "tr>td", :text => "Tempo".to_s, :count => 2
    assert_select "tr>td", :text => "Tab".to_s, :count => 2
    assert_select "tr>td", :text => "Completeness".to_s, :count => 2
  end
end
