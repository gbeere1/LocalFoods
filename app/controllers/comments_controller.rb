class CommentsController < ApplicationController
	before_filter :authorise
		
		def create
			@product = Product.find params[:product_id]
			@comment = @product.comments.new(comment_params)
			@comment.customer_id = @current_customer.id
			@comment.save
			
			respond_to do |format|
<<<<<<< HEAD
				format.html { redirect_to @product, notice: '******Comment was successfully created.******' }
=======
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
				format.html {redirect_to @product}
			end
		end
		
		private
		def comment_params
			params.require(:comment).permit(:content, :product_id, :customer_id, :stars)
		end

end
