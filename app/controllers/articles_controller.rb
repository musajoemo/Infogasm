class ArticlesController < ApplicationController
	# Get /articles
	# Get /articles.json
	def index
		@articles = Article.all
	end

	# Get /articles/1
	# Get /articles/1.json
	def show
	end

	# Get /articles/new
	def new
		@article = Article.new
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
		@article = Article.new(article_params)
		respond_to do |format|
			if @article.save
				format.html { redirect_to @article, notice: 'Article was successfully created.'}
				format.json { render action: 'show', status: :created, location: @article }
			else
				format.html { render action: "new" }
				format.json { render json: @article.errors, status: :unprocessable_entity }
			end
		end
	end

	#PATCH/PUT /articles/1
	#PATCH/PUT /articles/1.json
	def update
		respond_to do |format|
			if @article.update(article_params)
				format.html { redirect_to @article, notice 'Article was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: "edit" }
				format.json { render json: @article.errors, status: :unprocessable_entity }
			end
		end
	end

	 #Delete /articles/1
	 #Delete /articles/1.xml
	 def destroy
	 	@article.destroy

	 	respond_to do |format|
	 		format.html { redirect_to articles_url }
	 		format.json	{ head :no_content }
	 	end
	 end

	 private

	 #Use callbacks to share common setup or constraints between actions.
	 def set_article
	 	@article = Article.find(params[:id])
	 end

	 #Only whitelist items are allowed through - set up for nytimesapi values - need to change this for a different api

	 def article_params
	 	params.require(:article).permit(:title, :url, :byline, :abstract, :asset_id, :copywrite, :source, :media)
	 end

end
