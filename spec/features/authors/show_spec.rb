
require 'rails_helper'

RSpec.describe "Author show page", type: :feature do
  it "displays the author's name" do
    author = Author.create(name: "John Smith")
    visit author_path(author)
    expect(page).to have_content(author.name)
  end
end
