class GetUserArticlesController < ApplicationController
  	def index
		@userarticles = UserArticle.all
	end

	def nokogiri_grab
  	end
	# Get /userarticles/1
	# Get /userarticles/1.json
	def show
	end

	# Get /articles/new
	def new
		@userarticle = UserArticle.new
	end

	# Get /articles/1/edit
	def edit
	end

	# Get /articles/1/edit
	def edit
	end

	# Post /articles
	# Post /articles.json

	def create
		@userarticle = UserArticle.new(article_params)
		respond_to do |format|
			if @userarticle.save
				format.html { redirect_to @userarticle, notice: 'Article was successfully created.'}
				format.json { render action: 'show', status: :created, location: @userarticle }
			else
				format.html { render action: "new" }
				format.json { render json: @userarticle.errors, status: :unprocessable_entity }
			end
		end
	end

	#PATCH/PUT /articles/1
	#PATCH/PUT /articles/1.json
	def update
		respond_to do |format|
			if @userarticle.update(article_params)
				format.html { redirect_to @userarticle, notice 'Article was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: "edit" }
				format.json { render json: @userarticle.errors, status: :unprocessable_entity }
			end
		end
	end

	 #Delete /userarticles/1
	 #Delete /userarticles/1.xml
	 def destroy
	 	@userarticle.destroy

	 	respond_to do |format|
	 		format.html { redirect_to articles_url }
	 		format.json	{ head :no_content }
	 	end
	 end

	 private

	 #Use callbacks to share common setup or constraints between actions.
	 def set_userarticle
	 	@userarticle = UserArticle.find(params[:id])
	 end

	 #Only whitelist items are allowed through - set up for nytimesapi values - need to change this for a different api

	 def userarticle_params
	 	params.require(:article).permit(:title, :url, :byline, :abstract, :asset_id, :copywrite, :source, :media)
	 end

end
