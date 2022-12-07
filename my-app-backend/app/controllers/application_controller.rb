class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/allposts" do 
    allposts = Post.all
    allposts.to_json
  end

  # def get_secret_key
  #   "123"
  # end

  # def generate_token(user_id)
  #   JWT.encode({user_id: user_id}, get_secret_key)
  # end

  # def decode_token(token)
  #   JWT.decode(token, get_secret_key)[0]["user_id"]
  # end

  #post "/signup" do
    #create user with params
    #can not store their passworld
  # hashed_password = BCrypt::Password.create(params[:password])
  # user = User.create!(email: params[:email], password: hashed_password)
    #make a token
    # token = generate_token(user.id)
    #send it back
    # {token:token}.to_json
  # {message: "signup route"}.to_json
  # end

  # post "/login" do
    # user = User.find_by!(email: params[:email])
    # user_password = BCrypt::Password.new(user.password)
      # if user_password. = params[:password]
      #   token = generate_token(user.id)
      #   {token: token}.to_json
      # else
      #   {message: "incorrect password"}.to_json
      # end
  # end

  # get "/profile" do
      # GET token
      # DECODE token => id
      # FIND USER BY ID
      # user_id = decode_token(env["HTTP_TOKEN"])
      # user = User.find(user_id)
      # user.to_json
  #   {message: "profile route"}.to_json
  # end

end