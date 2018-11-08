class CommentsController < ApplicationController
def list
	@comments = Comment.all
end
def create

  @blog = Blog.find(params[:blog_id])
  comment = @blog.comments.create(commment_params)
  redirect_to "/comments"

end	
 def show

  		@comment = Comment.find(params[:id])
 end
 def edit
        @blog = Blog.find(params[:blog_id])
  		@comment = Comment.find(params[:id])
 end

def update
        
  		@comment = Comment.find(params[:id])

  	if @comment.update(commment_params)
  	    redirect_to "/blogs/#{params[:blog_id]}"
  	else
  	   redirect_to "/"
  	 end      	
 end
















	private
	def commment_params
		params.require(:comment).permit(:content, :blog_id)
	end	
end
