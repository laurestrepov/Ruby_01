class Plotter
  AVAILABLE_DOCS = %w(jpg png svg)
  def initialize(document, size = '46.8 x 33.1')
    @document = document
    @size = size
  end

  def print
    if AVAILABLE_DOCS.include?(@document.type) && @document.image
      puts "printing at...#{@size}"
      true
    else
      puts "invalid document !"
      false
    end
  end
end
