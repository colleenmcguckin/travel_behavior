ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    columns do
      column do
        panel 'Greetings Earthling' do
          h1 'Welcome'

          h4 'This is your mission control. Use the resources above to manage your site.'
        end
        panel 'Managing the Front Page Updates' do
          ol do
            li "Go to the Updates panel to see all updates."
            li "Add a new update by filling in the form."
            li "To add an image to an update, copy the image address and paste it into the image url field."
            li "To make an update show up on the home page, give it a published at date. After that date and time pass it will show up on the site. To show up immediately, use a date in the past. This date determines the order for the updates on the home page."
            li "To remove an update from the home page, check the 'Hide' box and it will be removed."
          end
        end
      end
      column do
        panel 'Managing Documents (Topic Briefs, Power Points, Projects, and Publications)' do
          ol do
            li "Go to the Documents panel and click the 'New Document' button, or select 'edit' for an existing document."
            li "Enter or edit the heading for the document to display beneath. This should be the exact same as another document with the same category's heading and have the same heading_position as well. OR You can enter a new heading, along with a new heading_position as well."
            li "Enter or edit the title."
            li "Enter or edit the summary. Summaries are only displayed for documents in the projects category. They can be stored for any type of document."
            li "Pick a document category. Topic Briefs will show up on the Topics Brief page and Publications will show up on the Publications page."
            li "Pick a publication date. The date determines the order of the documents within each heading. If you set a future date, the document will not be visible until that time."
            li 'If there is a pdf attachment, select the pdf file to upload. Ensure you are uploading PDFs only. Do not enter a link into the link url field.'
            li 'If there is a link, enter the url into the link url field. Do not select a pdf to attach.'
            li "Click the 'Create' or 'Update' button."
          end
        end
      end
    end
  end # content
end
