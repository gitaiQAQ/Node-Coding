# Generated by gitai 0.1.2

BaseModel = require '../BaseModel'
util = require 'util'

class MergeRequests extends BaseModel

###

 method			: post
 summary 		: create
 description	: 创建 MergeRequest



###

create: (user,project,params = {}, fn = null) =>
  @debug "MergeRequests::create()"
  @post "user/#{user}/project/#{project}/git/merge", params, (data) ->
    fn data if fn

###

 method			: get
 summary 		: get
 description	: 显示某个 MergeRequest



###

get: (user,project,iid,params = {}, fn = null) =>
  @debug "MergeRequests::get()"
  @get "user/#{user}/project/#{project}/git/merge/#{iid}", params, (data) ->
    fn data if fn

###

 method			: put
 summary 		: update
 description	: 更新某个 MergeRequest



###

update: (user,project,iid,params = {}, fn = null) =>
  @debug "MergeRequests::update()"
  @put "user/#{user}/project/#{project}/git/merge/#{iid}", params, (data) ->
    fn data if fn

###

 method			: post
 summary 		: cancel
 description	: 取消 MergeRequest


###

cancel: (user,project,iid,fn = null) =>
  @debug "MergeRequests::cancel()"
  @post "user/#{user}/project/#{project}/git/merge/#{iid}/cancel", (data) ->
    fn data if fn

###

 method			: post
 summary 		: merge
 description	: 合并某个 MergeRequest



###

merge: (user,project,iid,params = {}, fn = null) =>
  @debug "MergeRequests::merge()"
  @post "user/#{user}/project/#{project}/git/merge/#{iid}/merge", params, (data) ->
    fn data if fn

###

 method			: post
 summary 		: refuse
 description	: 拒绝某个 MergeRequest


###

refuse: (user,project,iid,fn = null) =>
  @debug "MergeRequests::refuse()"
  @post "user/#{user}/project/#{project}/git/merge/#{iid}/refuse", (data) ->
    fn data if fn

###

 method			: get
 summary 		: list
 description	: MergeRequest 列表



###

list: (user,project,status,params = {}, fn = null) =>
  @debug "MergeRequests::list()"
  @get "user/#{user}/project/#{project}/git/merges/#{status}", params, (data) ->
    fn data if fn



module.exports = (client) -> new MergeRequests client