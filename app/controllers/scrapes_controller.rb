class ScrapesController < ApplicationController
    





  def init
        @vendor = "me"
        @graph = Koala::Facebook::API.new(current_user.oauth_token)
  end

  def run
    init
      def demorun
        p current_user.oauth_token
        @pull = @graph.get_connections(@vendor, "posts")
        p @result = @pull.first
        
        p @demo = Demo.new
        p @demo.handle = @vendor
        p @demo.fb_id = @result["id"]
        p @demo.message = @result["message"]
        p @demo.picture = @result["picture"]
        p @demo.link = @result["link"]
        p @demo.created = @result["created_time"]
        p @demo.updated = @result["updated_time"]
        # p @demo.shares = @result["shares"]["count"]
        # p @demo.likes = @graph.get_object("likes?limit=1000&id=#{@id}").size
        p @demo.save
      end
      (1..20).each do |i|
       demorun
    end
  end


  
end

  



  def run3
        @vendor = "lululemon"
        @graph = Koala::Facebook::API.new(current_user.oauth_token)
       def stress
          @demo = @graph.get_connections(@vendor, "posts")
          @demo = demo.new
          @demo.handle = @vendor
          @demo.content = @demo.to_s
          @demo.save
        end
    
    (1..100).each do |i|
      stress
    end

  end

  def run2
      @graph = Koala::Facebook::API.new(current_user.oauth_token)
      @demo = @graph.get_connections("lululemon", "posts")
      @demo = demo.new
      @demo.handle = "Petar"
      @demo.content = @demo.to_s
      @demo.save
  end
