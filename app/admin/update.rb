ActiveAdmin.register Update do

  permit_params :title, :content, :link, :link_text, :published_at, :hide, :image_url

  scope :all
  scope :published
  scope :unpublished
  scope ("Hidden") { |scope| scope.where(hide: true)}

  form do |f|
    f.inputs do
      input :image_url, hint: 'The url of the image you want to display. ex: https://photos.com/happy-people.jpg'
      input :title, hint: 'What you want this to be called.'
      input :content, hint: 'The preview text or synopsis of the link.'
      input :link, hint: 'ex: https://example.com/nancy-s-research'
      input :published_at, as: :datetime_picker, hint: "The date you want this to start showing up on the homepage. This determines the order of updates on the homepage. Don't forget to enter a time!"
      input :hide, hint: "Check if you don't want to show on the homepage."
    end
    actions
  end


end
