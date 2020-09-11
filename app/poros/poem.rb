class Poem
  attr_reader :title, :author, :string

  def initialize(poem_data)
    @title = poem_data[:title]
    @author = poem_data[:author]
    @string = poem_data[:lines].join(' ')
  end

  def get_poem_tone
    SearchResults.new.get_tone(@string)
  end
end
