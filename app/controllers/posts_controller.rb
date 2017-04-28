class PostsController < ApplicationController

	def new
		@post = Post.new
	end

	def create
		
		@post = Post.new(post_params)
		 if @post.save
		 	redirect_to root_path
		 else
		 	redirect_to new_post_path
		 end
		 	
		
	end

	def post_params
		params.require(:post).permit(:content, :photo)
	end
end
