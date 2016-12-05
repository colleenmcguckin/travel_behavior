json.array! @documents do |document|
  json.id   document.id
  json.name document.title
end
