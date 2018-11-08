class BlogsController < ApplicationController
  def index
  	@blogs = Blog.all
  end

  



  def show

  		@blog = Blog.find(params[:id])
  end

  







  def edit
  	@blog = Blog.find(params[:id])
  end
  







  def update 
  		blog = Blog.find(params[:id])
  		if blog.update(blog_params)
  			redirect_to "/"
  		else 
  		redirect_to "/blogs/#{blog.id}/edit"
  	end		
  end	

  








  def new
  	@blog = Blog.new
  end
  






  def create
  	blog = Blog.new(blog_params)
  	  if blog.save
  	  	redirect_to "/"
  	  else
  	    render "/blogs/new"	
  	   end 
  end
 
  





  def destroy
    blog = Blog.find(params[:id])
   if blog.destroy
      redirect_to "/"
   end    
  end
  

















  private

  def blog_params
  	params.require(:blog).permit(:title, :content)
  end	


end
