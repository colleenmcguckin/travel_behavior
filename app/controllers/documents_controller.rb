class DocumentsController < ApplicationController

  def index
    @documents = Document.all
    respond_to do |format|
      format.json do
        render @documents
      end
    end
  end

  def show
    @document = Document.find(params[:id])

    respond_to do |format|
      format.html

      format.pdf do
        send_data(
          @document.pdf.read,
          filename: @document.title,
          type: "application/pdf",
          disposition: 'inline'
        )
      end
    end
  end
end
