
# Generated by gitai 0.1.2

BaseModel = require '../BaseModel'
util = require 'util'

class Blobs extends BaseModel


  ###

   method            : get
   summary         : get
   description    : 获取 blob
   header         : userAgent,accept
   path            : user,project,blob
   body            : currentApp,ref,path

  ###

  get: (user,project,blob,params = {}, fn = null) =>
    @debug "Blobs::get()"
    @get "/api/user/#{user}/project/#{project}/git/blob/#{blob}", params, (data) ->
      fn data if fn



module.exports = (client) -> new Blobs client