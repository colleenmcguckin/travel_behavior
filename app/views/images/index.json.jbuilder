json.array! @images do |image|
  json.id   image.id
  json.name image.title
  json.public_id  image.public_id
  json.url "https://res.cloudinary.com/travelbehavior/image/upload/#{image.public_id}"
  json.thumb "https://res.cloudinary.com/travelbehavior/image/upload/t_media_lib_thumb/#{image.public_id}"
end
