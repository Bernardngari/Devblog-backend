class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
	# tested and passed.
	get "/bloggers" do
		bloggers = Blogger.all
		bloggers.to_json 
	end
#tested, passed.
	get "/bloggers/:id" do
		Blogger.find(params[:id]).to_json
	end

		#tested
	post "/bloggers" do 
		blogger = Blogger.create(
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
			topic: params[:topic],
			body: params[:body],
			blogger_id: params[:blogger_id]
		)
		blogpost.to_json
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
			body: params[:body]
		)
		post.to_json
	end

end
