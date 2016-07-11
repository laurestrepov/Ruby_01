class DocPrinter
  AVAILABLE_DOCS = %w(pdf docx doc txt xlsx xls)
  def initialize(document)
    @document = document
  end

  def print
    if AVAILABLE_DOCS.include?(@document.type)
      puts "printing...#{@document.text}"
      true
    else
      puts "invalid document !"
      false
    end
  end
end
