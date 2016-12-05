json.array! @documents do |document|
  json.value   document.title
  json.uid "documents/#{document.id}.pdf"
end
