class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


	get "/bloggers" do
		Blogger.all.to_json(include: :blogposts)
	end
	# tested and passed.
	get "/bloggers/:id" do
		blogger = Blogger.find(params[:id])
		blogger.to_json(include: :blogposts)
	end

	delete "/bloggers/:id" do
	blogger = Blogger.find(params[:id])
	blogger.destroy
	
	end

	get "/bloggers/:id/blogposts" do
		blog = Blogger.find(params[:id])
		blog.to_json(only: [], include: :blogposts);
	end

	#patch "/bloggers/:id" do
	#	blogger = Blogger.find(params[:id])
	#	blogger.update(
	#		name: params[:name],
	#		image: params[:image]
	#	)
	#	blogger.to_json
	#end

		#tested
	post "/addbloggers" do 
		blogger = Blogger.create(
			image: params[:image],
			name: params[:name]  
		)
		blogger.to_json
	end
#tested.
	get "/blogposts" do
		Blogpost.all.to_json
	end
#tested
	get "/blogposts/:id" do
		Blogpost.find(params[:id]).to_json
	end
#tested
	post "/blogposts" do
		blogpost = Blogpost.create(
			title: params[:title],
			body: params[:body],
			blogger_id: params[:blogger_id]
		)
		
	end
#tested
	delete "/blogposts/:id" do
		post = Blogpost.find(params[:id]);
		post.destroy.to_json
	end
#tested
	patch "/blogposts/:id" do
		post = Blogpost.find(params[:id])
		post.update(
			title: params[:title],
			body: params[:body]
		)
		post.to_json
	end

end
