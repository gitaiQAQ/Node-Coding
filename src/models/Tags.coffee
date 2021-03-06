
# Generated by gitai 0.1.2

BaseModel = require '../BaseModel'
util = require 'util'

class Tags extends BaseModel


  ###

   method            : get
   summary         : list
   description    : 标签列表
   path            : user,project
   query            : page,pageSize

  ###

  list: (user,project,params = {}, fn = null) =>
    @debug "Tags::list()"
    @get "/api/user/#{user}/project/#{project}/git/tags", params, (data) ->
      fn data if fn


  ###

   method            : post
   summary         : create
   description    : 创建标签
   path            : user,project
   query            : tag_name,tag_point,message

  ###

  create: (user,project,params = {}, fn = null) =>
    @debug "Tags::create()"
    @post "/api/user/#{user}/project/#{project}/git/tags/create", params, (data) ->
      fn data if fn


  ###

   method            : post
   summary         : del
   description    : 删除标签
   path            : user,project
   query            : tag_name

  ###

  del: (user,project,params = {}, fn = null) =>
    @debug "Tags::del()"
    @post "/api/user/#{user}/project/#{project}/git/tags/delete", params, (data) ->
      fn data if fn



module.exports = (client) -> new Tags client