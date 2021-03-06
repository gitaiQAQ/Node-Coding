
# Generated by gitai 0.1.2

BaseModel = require '../BaseModel'
util = require 'util'

class RepoFiles extends BaseModel


  ###

   method            : get
   summary         : del
   description    : 删除文件
   path            : user,project,file
   body            : ref,path

  ###

  del: (user,project,file,params = {}, fn = null) =>
    @debug "RepoFiles::del()"
    @get "/api/user/#{user}/project/#{project}/git/delete/#{file}", params, (data) ->
      fn data if fn


  ###

   method            : get
   summary         : update
   description    : 更新文件
   path            : user,project,file
   body            : ref,path

  ###

  update: (user,project,file,params = {}, fn = null) =>
    @debug "RepoFiles::update()"
    @get "/api/user/#{user}/project/#{project}/git/edit/#{file}", params, (data) ->
      fn data if fn


  ###

   method            : get
   summary         : create
   description    : 新建文件
   path            : user,project,file
   body            : ref,path

  ###

  create: (user,project,file,params = {}, fn = null) =>
    @debug "RepoFiles::create()"
    @get "/api/user/#{user}/project/#{project}/git/new/#{file}", params, (data) ->
      fn data if fn



module.exports = (client) -> new RepoFiles client