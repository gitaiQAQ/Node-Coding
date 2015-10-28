# Generated by gitai 0.1.2

BaseModel = require '../BaseModel'
util = require 'util'

class ProjectTopics extends BaseModel

###

 method			: get
 summary 		: list
 description	: 项目讨论列表



###

list: (user,project,params = {}, fn = null) =>
  @debug "ProjectTopics::list()"
  @get "user/#{user}/project/#{project}/topics", params, (data) ->
    fn data if fn

###

 method			: post
 summary 		: create
 description	: 创建讨论/发表评论



###

create: (user,project,params = {}, fn = null) =>
  @debug "ProjectTopics::create()"
  @post "user/#{user}/project/#{project}/topics", params, (data) ->
    fn data if fn

###

 method			: get
 summary 		: count
 description	: 所有讨论的个数和我的讨论的个数


###

count: (user,project,fn = null) =>
  @debug "ProjectTopics::count()"
  @get "user/#{user}/project/#{project}/topics/count", (data) ->
    fn data if fn

###

 method			: get
 summary 		: getProjectTopicByLabel
 description	: 通过标签获得讨论列表



###

getProjectTopicByLabel: (user,project,id,params = {}, fn = null) =>
  @debug "ProjectTopics::getProjectTopicByLabel()"
  @get "user/#{user}/project/#{project}/topics/label/#{id}", params, (data) ->
    fn data if fn

###

 method			: get
 summary 		: count
 description	: 所有讨论的个数和我的讨论的个数


###

count: (user,project,fn = null) =>
  @debug "ProjectTopics::count()"
  @get "user/#{user}/project/#{project}/topics/labels/my", (data) ->
    fn data if fn

###

 method			: get
 summary 		: list
 description	: 我的讨论



###

list: (user,project,params = {}, fn = null) =>
  @debug "ProjectTopics::list()"
  @get "user/#{user}/project/#{project}/topics/mine", params, (data) ->
    fn data if fn

###

 method			: get
 summary 		: watchedProjectTopicList
 description	: 获取我关注的讨论列表



###

watchedProjectTopicList: (user,project,params = {}, fn = null) =>
  @debug "ProjectTopics::watchedProjectTopicList()"
  @get "user/#{user}/project/#{project}/topics/watching", params, (data) ->
    fn data if fn

###

 method			: get
 summary 		: detail
 description	: 讨论详情



###

detail: (user,project,id,params = {}, fn = null) =>
  @debug "ProjectTopics::detail()"
  @get "user/#{user}/project/#{project}/topics/#{id}", params, (data) ->
    fn data if fn

###

 method			: put
 summary 		: update
 description	: 更新讨论



###

update: (user,project,id,params = {}, fn = null) =>
  @debug "ProjectTopics::update()"
  @put "user/#{user}/project/#{project}/topics/#{id}", params, (data) ->
    fn data if fn

###

 method			: delete
 summary 		: del
 description	: 删除讨论/删除讨论评论


###

del: (user,project,id,fn = null) =>
  @debug "ProjectTopics::del()"
  @delete "user/#{user}/project/#{project}/topics/#{id}", (data) ->
    fn data if fn

###

 method			: get
 summary 		: comments
 description	: 讨论评论列表



###

comments: (user,project,id,params = {}, fn = null) =>
  @debug "ProjectTopics::comments()"
  @get "user/#{user}/project/#{project}/topics/#{id}/comments", params, (data) ->
    fn data if fn

###

 method			: post
 summary 		: addTopicLabel
 description	: 讨论添加标签


###

addTopicLabel: (user,project,id,labelId,fn = null) =>
  @debug "ProjectTopics::addTopicLabel()"
  @post "user/#{user}/project/#{project}/topics/#{id}/label/#{labelId}", (data) ->
    fn data if fn

###

 method			: delete
 summary 		: deleteTopicLabel
 description	: 删除讨论标签


###

deleteTopicLabel: (user,project,id,labelId,fn = null) =>
  @debug "ProjectTopics::deleteTopicLabel()"
  @delete "user/#{user}/project/#{project}/topics/#{id}/label/#{labelId}", (data) ->
    fn data if fn

###

 method			: post
 summary 		: operateTopicLabel
 description	: 批量操作讨论标签



###

operateTopicLabel: (user,project,id,params = {}, fn = null) =>
  @debug "ProjectTopics::operateTopicLabel()"
  @post "user/#{user}/project/#{project}/topics/#{id}/labels", params, (data) ->
    fn data if fn

###

 method			: post
 summary 		: watch
 description	: 关注讨论


###

watch: (user,project,id,fn = null) =>
  @debug "ProjectTopics::watch()"
  @post "user/#{user}/project/#{project}/topics/#{id}/watch", (data) ->
    fn data if fn

###

 method			: get
 summary 		: watchers
 description	: 获取关注该讨论的用户



###

watchers: (user,project,id,params = {}, fn = null) =>
  @debug "ProjectTopics::watchers()"
  @get "user/#{user}/project/#{project}/topics/#{id}/watchers", params, (data) ->
    fn data if fn



module.exports = (client) -> new ProjectTopics client