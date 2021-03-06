
# Generated by gitai 0.1.2

BaseModel = require '../BaseModel'
util = require 'util'

class Commits extends BaseModel


  ###

   method            : get
   summary         : show
   description    : commit 列表
   header         : userAgent,accept
   path            : user,project,commit
   query            : diff,w
   body            : currentApp,ref

  ###

  show: (user,project,commit,params = {}, fn = null) =>
    @debug "Commits::show()"
    @get "/api/user/#{user}/project/#{project}/git/commit/#{commit}", params, (data) ->
      fn data if fn



module.exports = (client) -> new Commits client