class SearchResults
  def ibm_services
    InternationalBusinessMachinesService.new
  end

  def get_tone(string)
    ibm_services.get_tone(string)
  end

  def poetry_service
    PoetryService.new
  end

  def get_poems(author)
    poetry_service.get_poems(author).map do |data|
      Poem.new(data)
    end
  end
end
