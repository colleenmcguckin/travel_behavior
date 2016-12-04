class DocumentsController < ApplicationController
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
