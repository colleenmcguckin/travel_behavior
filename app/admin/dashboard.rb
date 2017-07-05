ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    panel 'Welcome' do
      h4 'Greetings Earthling'

      span 'This is your mission control. Use the resources above to manage your site.'
    end

    columns do
      column do
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
        panel 'Managing Projects' do
          ol do
            li "Log in as an admin."
            li "Navigate to the admin project panel."
            li "Create, edit or delete a project."
            li "Click the 'Save' button."
            li 'Projects will populate under their header category on the Projects page.'
          end
        end
      end
    end
  end # content
end
