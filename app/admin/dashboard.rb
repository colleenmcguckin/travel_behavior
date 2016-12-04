ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    panel 'Welcome' do
      h4 'Greetings Earthling'

      span 'This is your mission control. Use the resources above to manage your site.'
    end

    columns do
      column do
        panel 'Uploading PDFs' do
          ol do
            li "Go to the Documents panel and click the 'New Document' button."
            li "Enter a title."
            li "Pick a document category. Topic Briefs will show up on the Topics Brief page and Publications will show up on the Publications page."
            li 'Select the pdf file to upload. Ensure you are uploading PDFs only.'
            li "Click the 'Create' button."
          end
        end
      end
      column do
        panel 'Uploading Images' do
          ol do
            li "Go to the Images panel and click the 'New Image' button."
            li "Enter a title."
            li "Enter a description. This should describe the image to someone visually impaired."
            li 'Select the image file to upload. Ensure you are uploading PDFs only.'
            li "Click the 'Create Image' button."
            li "The images you upload will be available to use when editing pages."
          end
        end
      end
    end
    columns do
      column do
        panel 'Editing Pages' do
          ol do
            li "Log in as an admin."
            li "Navigate to the page you want to edit."
            li "Click the 'Edit' button."
            li 'Edit the page as desired using the inline editor.'
            li "Click the 'Save' button."
            li "The edits will be saved."
          end
        end
      end
      column do
        panel 'Linking to Documents' do
          ol do
            li "Log in as an admin."
            li "Navigate to the page you want to edit."
            li "Click the 'Edit' button."
            li "Using the inline editor, type the '@' symbol. Begin typing the name of the document you want to link to."
            li "Select a document title from the list."
            li "The title will be inserted with a link to a PDF of the document."
          end
        end
      end
    end
  end # content
end
