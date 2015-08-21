require 'rails_helper'

RSpec.describe "songs/new", :type => :view do
  before(:each) do
    assign(:song, Song.new(
      :title => "MyString",
      :author => "MyString",
      :times => "MyString",
      :key => "MyString",
      :tempo => "MyString",
      :tab => "MyString",
      :completeness => "MyString"
    ))
  end

  it "renders new song form" do
    render

    assert_select "form[action=?][method=?]", songs_path, "post" do

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
