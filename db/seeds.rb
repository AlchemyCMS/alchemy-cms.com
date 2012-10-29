Alchemy::Element.named(["slide"]).each do |element|
  element.contents.essence_pictures.each do |content|
    content.update_column(:name, "image")
  end
end

Alchemy::Element.named(["screenshot"]).each do |element|
  element.contents.essence_pictures.each do |content|
    content.update_column(:name, "screen")
  end
end

Alchemy::Element.named(["gallery"]).each do |element|
  element.contents.essence_pictures.each_with_index do |content, i|
    content.update_column(:name, "essence_picture_#{i+1}")
  end
end
