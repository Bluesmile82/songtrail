require 'rails_helper'

RSpec.describe "songs/edit", :type => :view do
  before(:each) do
    @song = assign(:song, Song.create!(
      :title => "MyString",
      :author => "MyString",
      :times => "MyString",
      :key => "MyString",
      :tempo => "MyString",
      :tab => "MyString",
      :completeness => "MyString"
    ))
  end

  it "renders the edit song form" do
    render

    assert_select "form[action=?][method=?]", song_path(@song), "post" do

      assert_select "input#song_title[name=?]", "song[title]"

      assert_select "input#song_author[name=?]", "song[author]"

      assert_select "input#song_times[name=?]", "song[times]"

      assert_select "input#song_key[name=?]", "song[key]"

      assert_select "input#song_tempo[name=?]", "song[tempo]"

      assert_select "input#song_tab[name=?]", "song[tab]"

      assert_select "input#song_completeness[name=?]", "song[completeness]"
    end
  end
end
