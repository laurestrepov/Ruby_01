require './printer'
require './doc_printer'
require './plotter'
class Document
  attr_accessor :type, :text, :image
  def initialize(type, text = '', image = nil)
    @type = type
    @text = text
    @image = image
  end
end
