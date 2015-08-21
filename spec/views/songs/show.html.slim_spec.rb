require 'rails_helper'

RSpec.describe "songs/show", :type => :view do
  before(:each) do
    @song = assign(:song, Song.create!(
      :title => "Title",
      :author => "Author",
      :times => "Times",
      :key => "Key",
      :tempo => "Tempo",
      :tab => "Tab",
      :completeness => "Completeness"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Times/)
    expect(rendered).to match(/Key/)
    expect(rendered).to match(/Tempo/)
    expect(rendered).to match(/Tab/)
    expect(rendered).to match(/Completeness/)
  end
end
