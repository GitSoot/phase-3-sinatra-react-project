class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # List all categories
get '/categories' do
  categories = Category.all
  categories.to_json
end

# Create a category
post '/categories' do
  category = Category.create(name: params[:name])
  category.to_json
end

# List all notes
get '/notes' do
  notes = Note.all
  notes.to_json
end

# Create a note
post '/notes' do
  note = Note.create(title: params[:title], body: params[:body], category_id: params[:category_id])
  note.to_json
end

# Update a note
put '/notes/:id' do
  note = Note.find(params[:id])
  note.update(title: params[:title], body: params[:body], category_id: params[:category_id])
  note.to_json
end

# Delete a note
delete '/notes/:id' do
  note = Note.find(params[:id])
  note.destroy
end


end
