class ProductController < ApplicationController

    def index
        @product = Product.all
    end

    def new
        @product = Product.new
    end

    def edit
        @product = Product.find(params[:id])
    end

    def update
        @product = Product.find(params[:id])
        #render json: @product
        if @product.update_attributes(product_param)
            flash[:notice] = "Updated successfully!!"
            redirect_to action:"index"
        else
            flash[:notice] = "Update Failed!"
            render action:"edit"
        end
    end

    def destroy
        @product = Product.find(params[:id])
        @product.destroy
        flash[:notice] = "Deleted successfully!!"
        redirect_to action:"index"

    end

    def create
        @product = Product.new(product_param)
        #render json: @product
        if @product.save
            flash[:notice] = "Added successfully!!"
            redirect_to action:"index"
        else
            flash[:notice] = "Adding new product failed!"
            render action:"new"
        end
    end

    private
    def product_param
        params.require(:product).permit(:name, :description, :price)
    end


end
