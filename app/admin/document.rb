ActiveAdmin.register Document do

  permit_params :title, :category, :pdf, :publication_date, :heading, :heading_position, :link_url

  show do
    attributes_table do
      row('PDF') do |doc|
        link_to doc.title, document_path(doc, format: :pdf), target: '_blank'
      end
      row :link_url
      row :title
      row :summary
      row :heading
      row :heading_position
      row('Category') { |doc| doc.category.titleize }
    end
  end

  form do |f|
    inputs 'Document' do
      f.input :heading, hint: 'If this is a topic brief or power point, enter the heading it should appear under.'
      f.input :heading_position, hint: 'This number should be the same for all documents with this heading.'
      f.input :title
      f.input :summary
      f.input :category, as: :select, collection: Document::CATEGORIES
      f.input :publication_date
      f.input :pdf, as: :file
      f.input :link_url, hint: 'Only upload a pdf OR insert a link here, not both!'
    end
    f.actions
  end

  controller do
    def create
      @document = Document.new document_params

      if document_params['pdf']
        content = PDF::Reader.new(document_params['pdf'].tempfile).pages.map{ |page| page.text }
        @document.update content: content
      end

      if @document.save
        redirect_to admin_document_path @document
      else
        redirect_to admin_new_document_path
      end
    end

    def update
      @document = Document.find(params[:id])

      if document_params['pdf']
        content = PDF::Reader.new(document_params['pdf'].tempfile).pages.map{ |page| page.text }
        @document.update content: content
      end

      if @document.save
        redirect_to admin_document_path @document
      else
        redirect_to admin_new_document_path
      end
    end

    # def destroy
    #   image = Image.find(params[:id])
    #   if image.destroy
    #     Cloudinary::Api.delete_resources([image.public_id])
    #     redirect_to admin_images_path
    #   end
    # end

    private

    def document_params
      params.require(:document).permit :title, :category, :pdf, :publication_date, :content, :summary, :link_url, :heading, :heading_position
    end

  end

end
