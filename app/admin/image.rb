ActiveAdmin.register Image do

  permit_params :title, :description, :path

  show do
    attributes_table do
      row('Image') { cl_image_tag image.public_id }
      row :title
      row :description
      row('Public ID') { image.public_id }
    end
  end

  form do |f|
    inputs 'Image' do
      f.input :title
      f.input :description
      f.input :path, as: :file
    end
    f.actions
  end

  controller do
    def create
      @image = Image.new image_params
      # Assign the image an SEO-friendly but also unique public_id in the Cloudinary system.
      cloudinary_id = [image_params['title'].strip.gsub(/\W+/, '-').chomp('-'), SecureRandom.hex(4)].join('-')
      if @image.update public_id: cloudinary_id
        # Upload the image to Cloudinary and tell it what transformations of the image to make and have ready.
        upload_image cloudinary_id

        redirect_to admin_image_path @image
      else
        redirect_to admin_new_image_path
      end
    end

    def destroy
      image = Image.find(params[:id])
      if image.destroy
        Cloudinary::Api.delete_resources([image.public_id])
        redirect_to admin_images_path
      end
    end

    private

    def image_params
      params.require(:image).permit :title, :description, :path
    end

    def upload_image public_id
      Cloudinary::Uploader.upload(
        image_params['path'].tempfile.path,
        public_id: public_id,
        context: {"alt" => image_params['description']})
    end
  end

end
