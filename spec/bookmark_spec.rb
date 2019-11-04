require './lib/bookmark.rb'

describe Bookmark do
  subject(:bookmark) {Bookmark.new(url)}

  it 'can create an instance of the Bookmark class' do
    expect(subject).to be_an_instance_of Bookmark
  end
end
