module ZapposHelpers

  def class_generator(shop_type, type_name)
    selector = "."
    words = shop_type.split(' ')
    words.each {|word| word.delete! "'"}
    selector += words.join('-')
    selector += '--'+type_name
    selector
  end

  def href_generator(shop_name, type_name)
    href = "/"
    words = shop_name.split(' ')
    words.each {|word| word.delete! "'"}
    href += words[1].downcase + '-' +type_name.downcase
  end

  def href_shoe(shoe_name, color, brand)
    href = "/"
    words = brand.split(' ')
    words << shoe_name.split(' ')
    words << color.split(' ')
    href += words.join('-').downcase
  end
end

World(ZapposHelpers)
