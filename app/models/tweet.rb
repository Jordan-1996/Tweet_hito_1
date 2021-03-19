class Tweet < ApplicationRecord
   validates :content, presence:true
   belongs_to :user
   has_many :likes
   has_many :retweets, class_name: "Tweet", foreign_key: "retweet_id"
   belongs_to :retweet, class_name: "Tweet", optional: true 

   scope :tweets_for_me, ->(friends_ids) {where(user_id: friends_ids)}
   
   
  def ver_hashtag()
   #data = Tweet.all
  # @contenidos = data.map{|tweet|tweet.content }
    self.content.split(" ").each do |x|
    puts x
    puts x[0]
    puts "hola"
     #x.contenido.split("#").map do |y|
     # puts y
     #end 
     end 
     
   end 
  
end
