# Esta es la forma como se definen
# clases en Ruby
class InitialArray
  def self.numbers_array
    Array (0..100)
  end

  def self.an_array?(element)
    element.is_a?(Array)
  end

  def self.string_to_array
    'This is a string object'.split
  end
end
