class Admin::TablesController < AdminController

  def index
    @tables = Table.all.order(:id)
  end

  def show
    @table = Table.find(params[:id])
  end

  def edit
    @table = Table.find(params[:id])
  end

  def update
    @table = Table.find(params[:id])
    @table.update(permit_params)
    redirect_to :back
  end

  def destroy
  end

  private
    def permit_params
      params.require(:table).permit(:table_code, :table_name, :description, :content)
    end
end
