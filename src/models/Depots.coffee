
# Generated by gitai 0.1.2

BaseModel = require '../BaseModel'
util = require 'util'

class Depots extends BaseModel


  ###

   method            : get
   summary         : get
   description    : 获取仓库信息
   path            : user,project

  ###

  get: (user,project,fn = null) =>
    @debug "Depots::get()"
    @get "/api/user/#{user}/project/#{project}/git", (data) ->
      fn data if fn


  ###

   method            : post
   summary         : fork
   description    : fork
   path            : user,project

  ###

  fork: (user,project,fn = null) =>
    @debug "Depots::fork()"
    @post "/api/user/#{user}/project/#{project}/git/fork", (data) ->
      fn data if fn


  ###

   method            : get
   summary         : forkList
   description    : 项目被fork的列表
   path            : user,project

  ###

  forkList: (user,project,fn = null) =>
    @debug "Depots::forkList()"
    @get "/api/user/#{user}/project/#{project}/git/forks", (data) ->
      fn data if fn


  ###

   method            : post
   summary         : createWebhook
   description    : 创建 webhook
   path            : user,project
   query            : hook_url,token,type_push,type_mr_pr,type_topic,type_member,type_comment,type_document,type_watch,type_star,type_task

  ###

  createWebhook: (user,project,params = {}, fn = null) =>
    @debug "Depots::createWebhook()"
    @post "/api/user/#{user}/project/#{project}/git/hook", params, (data) ->
      fn data if fn


  ###

   method            : get
   summary         : getWebhook
   description    : 获取 webhook
   path            : user,project,id

  ###

  getWebhook: (user,project,id,fn = null) =>
    @debug "Depots::getWebhook()"
    @get "/api/user/#{user}/project/#{project}/git/hook/#{id}", (data) ->
      fn data if fn


  ###

   method            : put
   summary         : updateWebhook
   description    : 编辑 webhook
   path            : user,project,id
   query            : hook_url,token,type_push,type_mr_pr,type_topic,type_member,type_comment,type_document,type_watch,type_star,type_task

  ###

  updateWebhook: (user,project,id,params = {}, fn = null) =>
    @debug "Depots::updateWebhook()"
    @put "/api/user/#{user}/project/#{project}/git/hook/#{id}", params, (data) ->
      fn data if fn


  ###

   method            : delete
   summary         : deleteWebhook
   description    : 删除 webhook
   path            : user,project,id

  ###

  deleteWebhook: (user,project,id,fn = null) =>
    @debug "Depots::deleteWebhook()"
    @delete "/api/user/#{user}/project/#{project}/git/hook/#{id}", (data) ->
      fn data if fn


  ###

   method            : get
   summary         : list
   description    : 列出项目设置的 webhook
   path            : user,project

  ###

  list: (user,project,fn = null) =>
    @debug "Depots::list()"
    @get "/api/user/#{user}/project/#{project}/git/hooks", (data) ->
      fn data if fn


  ###

   method            : get
   summary         : importRepo
   description    : 导入仓库
   path            : user,project
   query            : origin_url,vcs_type

  ###

  importRepo: (user,project,params = {}, fn = null) =>
    @debug "Depots::importRepo()"
    @get "/api/user/#{user}/project/#{project}/git/import", params, (data) ->
      fn data if fn


  ###

   method            : post
   summary         : importRepo
   description    : 导入仓库
   path            : user,project
   query            : origin_url,vcs_type

  ###

  importRepo: (user,project,params = {}, fn = null) =>
    @debug "Depots::importRepo()"
    @post "/api/user/#{user}/project/#{project}/git/import", params, (data) ->
      fn data if fn


  ###

   method            : post
   summary         : initDepot
   description    : 初始化仓库
   path            : user,project
   query            : type,gitReadmeEnabled,gitIgnore,gitLicense,importFrom,vcsType

  ###

  initDepot: (user,project,params = {}, fn = null) =>
    @debug "Depots::initDepot()"
    @post "/api/user/#{user}/project/#{project}/git/init", params, (data) ->
      fn data if fn



module.exports = (client) -> new Depots client