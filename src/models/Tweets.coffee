# Generated by gitai 0.1.2

BaseModel = require '../BaseModel'
util = require 'util'

class Tweets extends BaseModel

###

 method			: post
 summary 		: create
 description	: 发送冒泡
 query			: device,location,coord,address,content

###

create: (params = {}, fn = null) =>
  @debug "Tweets::create()"
  @post "social/tweet", params, (data) ->
    fn data if fn

###

 method			: get
 summary 		: bestUser
 description	: 热门用户

###

bestUser: (fn = null) =>
  @debug "Tweets::bestUser()"
  @get "social/tweet/best_user", (data) ->
    fn data if fn

###

 method			: get
 summary 		: comment
 description	: 获取某个评论
 path			: id

###

comment: (id,fn = null) =>
  @debug "Tweets::comment()"
  @get "social/tweet/comment/#{id}", (data) ->
    fn data if fn

###

 method			: post
 summary 		: image
 description	: 冒泡插入图片

###

image: (fn = null) =>
  @debug "Tweets::image()"
  @post "social/tweet/insert_image", (data) ->
    fn data if fn

###

 method			: get
 summary 		: lastTweetList
 description	: 查询last_id以后的最新冒泡
 query			: default_like_count,last_id

###

lastTweetList: (params = {}, fn = null) =>
  @debug "Tweets::lastTweetList()"
  @get "social/tweet/last", params, (data) ->
    fn data if fn

###

 method			: get
 summary 		: list
 description	: 冒泡列表
 query			: sort,last_id,default_like_count,filter

###

list: (params = {}, fn = null) =>
  @debug "Tweets::list()"
  @get "social/tweet/public_tweets", params, (data) ->
    fn data if fn

###

 method			: get
 summary 		: userPublic
 description	: 用户冒泡列表
 query			: last_id,user_id,user,type,default_like_count

###

userPublic: (params = {}, fn = null) =>
  @debug "Tweets::userPublic()"
  @get "social/tweet/user_public", params, (data) ->
    fn data if fn

###

 method			: get
 summary 		: detail
 description	: 获取冒泡详情
 path			: user,tweet_id
 query			: default_like_count

###

detail: (user,tweet_id,params = {}, fn = null) =>
  @debug "Tweets::detail()"
  @get "social/tweet/#{user}/#{tweet_id}", params, (data) ->
    fn data if fn

###

 method			: post
 summary 		: comment
 description	: 冒泡评论
 path			: id
 query			: content,afterFilter

###

comment: (id,params = {}, fn = null) =>
  @debug "Tweets::comment()"
  @post "social/tweet/#{id}/comment", params, (data) ->
    fn data if fn

###

 method			: delete
 summary 		: comment
 description	: 删除冒泡评论
 path			: id,comment_id

###

comment: (id,comment_id,fn = null) =>
  @debug "Tweets::comment()"
  @delete "social/tweet/#{id}/comment/#{comment_id}", (data) ->
    fn data if fn

###

 method			: get
 summary 		: comment
 description	: 获取冒泡评论列表
 path			: id
 query			: page,pageSize

###

comment: (id,params = {}, fn = null) =>
  @debug "Tweets::comment()"
  @get "social/tweet/#{id}/comments", params, (data) ->
    fn data if fn

###

 method			: delete
 summary 		: del
 description	: 删除冒泡
 path			: tweet_id

###

del: (tweet_id,fn = null) =>
  @debug "Tweets::del()"
  @delete "social/tweet/#{tweet_id}", (data) ->
    fn data if fn

###

 method			: post
 summary 		: like
 description	: 冒泡点赞
 path			: tweet_id

###

like: (tweet_id,fn = null) =>
  @debug "Tweets::like()"
  @post "social/tweet/#{tweet_id}/like", (data) ->
    fn data if fn

###

 method			: get
 summary 		: likeTweetList
 description	: 赞过的冒泡列表
 path			: tweet_id
 query			: page,pageSize

###

likeTweetList: (tweet_id,params = {}, fn = null) =>
  @debug "Tweets::likeTweetList()"
  @get "social/tweet/#{tweet_id}/tweetlike", params, (data) ->
    fn data if fn

###

 method			: post
 summary 		: unlike
 description	: 冒泡取消点赞
 path			: tweet_id

###

unlike: (tweet_id,fn = null) =>
  @debug "Tweets::unlike()"
  @post "social/tweet/#{tweet_id}/unlike", (data) ->
    fn data if fn

###

 method			: get
 summary 		: publicTweets
 description	: 冒泡广场列表
 query			: sort,last_id,default_like_count,filter

###

publicTweets: (params = {}, fn = null) =>
  @debug "Tweets::publicTweets()"
  @get "tweet/public_tweets", params, (data) ->
    fn data if fn



module.exports = (client) -> new Tweets client