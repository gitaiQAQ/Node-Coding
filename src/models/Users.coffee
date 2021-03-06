
# Generated by gitai 0.1.2

BaseModel = require '../BaseModel'
util = require 'util'

class Users extends BaseModel


  ###

   method            : post
   summary         : activate
   description    : 账户激活
   query            : email,key,password,confirm_password
   body            : sid

  ###

  activate: (params = {}, fn = null) =>
    @debug "Users::activate()"
    @post "/api/account/activate", params, (data) ->
      fn data if fn


  ###

   method            : post
   summary         : generateActivatePhoneCode
   description    : 获取激活账号的手机验证码
   query            : phone

  ###

  generateActivatePhoneCode: (params = {}, fn = null) =>
    @debug "Users::generateActivatePhoneCode()"
    @post "/api/account/activate/generate_phone_code", params, (data) ->
      fn data if fn


  ###

   method            : post
   summary         : activatePhone
   description    : 激活用手机注册的用户
   query            : phone,code,user,email,password
   body            : sid

  ###

  activatePhone: (params = {}, fn = null) =>
    @debug "Users::activatePhone()"
    @post "/api/account/activate/phone", params, (data) ->
      fn data if fn


  ###

   method            : get
   summary         : avatar
   description    : 获取头像

  ###

  avatar: (fn = null) =>
    @debug "Users::avatar()"
    @get "/api/account/avatar", (data) ->
      fn data if fn


  ###

   method            : post
   summary         : avatar
   description    : 上传设置头像
   body            : sid

  ###

  avatar: (params = {}, fn = null) =>
    @debug "Users::avatar()"
    @post "/api/account/avatar", params, (data) ->
      fn data if fn


  ###

   method            : get
   summary         : captcha
   description    : 检查是否需要验证码
   path            : action
   body            : realRemoteAddress

  ###

  captcha: (action,params = {}, fn = null) =>
    @debug "Users::captcha()"
    @get "/api/account/captcha/#{action}", params, (data) ->
      fn data if fn


  ###

   method            : get
   summary         : changeNoticeSetting
   description    : 修改通知设置
   query            : settingType,settingContent

  ###

  changeNoticeSetting: (params = {}, fn = null) =>
    @debug "Users::changeNoticeSetting()"
    @get "/api/account/change_notice_setting", params, (data) ->
      fn data if fn


  ###

   method            : get
   summary         : checkEmail
   description    : 检查email是否没有被注册过
   query            : key

  ###

  checkEmail: (params = {}, fn = null) =>
    @debug "Users::checkEmail()"
    @get "/api/account/check", params, (data) ->
      fn data if fn


  ###

   method            : get
   summary         : checkPhone
   description    : 检查手机是否没有被注册过
   query            : phone

  ###

  checkPhone: (params = {}, fn = null) =>
    @debug "Users::checkPhone()"
    @get "/api/account/check/phone", params, (data) ->
      fn data if fn


  ###

   method            : post
   summary         : checkTwoFactorAuthCode
   description    : 登录时的两步验证
   query            : code
   body            : sid

  ###

  checkTwoFactorAuthCode: (params = {}, fn = null) =>
    @debug "Users::checkTwoFactorAuthCode()"
    @post "/api/account/check_two_factor_auth_code", params, (data) ->
      fn data if fn


  ###

   method            : get
   summary         : currentUser
   description    : 获取当前登录用户信息

  ###

  currentUser: (fn = null) =>
    @debug "Users::currentUser()"
    @get "/api/account/current_user", (data) ->
      fn data if fn


  ###

   method            : get
   summary         : email
   description    : 获取当前用户的email

  ###

  email: (fn = null) =>
    @debug "Users::email()"
    @get "/api/account/email", (data) ->
      fn data if fn


  ###

   method            : get
   summary         : changeNoticeSetting
   description    : 获取通知设置

  ###

  changeNoticeSetting: (fn = null) =>
    @debug "Users::changeNoticeSetting()"
    @get "/api/account/get_notice_settings", (data) ->
      fn data if fn


  ###

   method            : get
   summary         : gravatar
   description    : 获取Gravatar头像

  ###

  gravatar: (fn = null) =>
    @debug "Users::gravatar()"
    @get "/api/account/gravatar", (data) ->
      fn data if fn


  ###

   method            : get
   summary         : getUserByGlobalKey
   description    : 通过个性后缀获取用户信息
   path            : user

  ###

  getUserByGlobalKey: (user,fn = null) =>
    @debug "Users::getUserByGlobalKey()"
    @get "/api/account/key/#{user}", (data) ->
      fn data if fn


  ###

   method            : post
   summary         : login
   description    : 登录
   query            : email,password,j_captcha,remember_me
   body            : sid,realRemoteAddress

  ###

  login: (params = {}, fn = null) =>
    @debug "Users::login()"
    @post "/api/account/login", params, (data) ->
      fn data if fn


  ###

   method            : post
   summary         : generateLoginPhoneCode
   description    : 获取登录的手机验证码
   query            : phone

  ###

  generateLoginPhoneCode: (params = {}, fn = null) =>
    @debug "Users::generateLoginPhoneCode()"
    @post "/api/account/login/generate_phone_code", params, (data) ->
      fn data if fn


  ###

   method            : post
   summary         : loginByPhone
   description    : 使用绑定过的手机号码登录
   query            : phone,code,j_captcha,remember_me
   body            : realRemoteAddress

  ###

  loginByPhone: (params = {}, fn = null) =>
    @debug "Users::loginByPhone()"
    @post "/api/account/login/phone", params, (data) ->
      fn data if fn


  ###

   method            : post
   summary         : logout
   description    : 注销登录
   body            : sid

  ###

  logout: (params = {}, fn = null) =>
    @debug "Users::logout()"
    @post "/api/account/logout", params, (data) ->
      fn data if fn


  ###

   method            : get
   summary         : getUserByName
   description    : 通过昵称获取用户信息
   path            : name

  ###

  getUserByName: (name,fn = null) =>
    @debug "Users::getUserByName()"
    @get "/api/account/name/#{name}", (data) ->
      fn data if fn


  ###

   method            : post
   summary         : register
   description    : 注册
   query            : email,user,j_captcha
   body            : realRemoteAddress

  ###

  register: (params = {}, fn = null) =>
    @debug "Users::register()"
    @post "/api/account/register", params, (data) ->
      fn data if fn


  ###

   method            : post
   summary         : generateRegisterPhoneCode
   description    : 获取注册的手机验证码
   query            : phone

  ###

  generateRegisterPhoneCode: (params = {}, fn = null) =>
    @debug "Users::generateRegisterPhoneCode()"
    @post "/api/account/register/generate_phone_code", params, (data) ->
      fn data if fn


  ###

   method            : post
   summary         : phoneRegister
   description    : 使用手机注册
   query            : phone,code
   body            : realRemoteAddress

  ###

  phoneRegister: (params = {}, fn = null) =>
    @debug "Users::phoneRegister()"
    @post "/api/account/register/phone", params, (data) ->
      fn data if fn


  ###

   method            : post
   summary         : avatar
   description    : 更新用户信息
   query            : tags,name,sex,phone,birthday,location,company,slogan,introduction,job,code
   body            : sid

  ###

  avatar: (params = {}, fn = null) =>
    @debug "Users::avatar()"
    @post "/api/account/update_info", params, (data) ->
      fn data if fn


  ###

   method            : post
   summary         : updatePwd
   description    : 修改用户密码
   query            : current_password,password,confirm_password
   body            : sid

  ###

  updatePwd: (params = {}, fn = null) =>
    @debug "Users::updatePwd()"
    @post "/api/account/update_pwd", params, (data) ->
      fn data if fn


  ###

   method            : post
   summary         : avatar
   description    : 更新头像
   query            : avatar
   body            : sid

  ###

  avatar: (params = {}, fn = null) =>
    @debug "Users::avatar()"
    @post "/api/account/updateavatar", params, (data) ->
      fn data if fn


  ###

   method            : post
   summary         : follow
   description    : 关注用户
   query            : users

  ###

  follow: (params = {}, fn = null) =>
    @debug "Users::follow()"
    @post "/api/social/follow", params, (data) ->
      fn data if fn


  ###

   method            : get
   summary         : follower
   description    : 关注我的用户
   query            : page,pageSize

  ###

  follower: (params = {}, fn = null) =>
    @debug "Users::follower()"
    @get "/api/social/followers", params, (data) ->
      fn data if fn


  ###

   method            : get
   summary         : follower
   description    : 获取关注默认的用户
   path            : user
   query            : page,pageSize

  ###

  follower: (user,params = {}, fn = null) =>
    @debug "Users::follower()"
    @get "/api/social/followers/#{user}", params, (data) ->
      fn data if fn


  ###

   method            : get
   summary         : friends
   description    : 我关注的用户列表
   query            : page,pageSize

  ###

  friends: (params = {}, fn = null) =>
    @debug "Users::friends()"
    @get "/api/social/friends", params, (data) ->
      fn data if fn


  ###

   method            : get
   summary         : friends
   description    : 指定用户的关注列表
   path            : user
   query            : page,pageSize

  ###

  friends: (user,params = {}, fn = null) =>
    @debug "Users::friends()"
    @get "/api/social/friends/#{user}", params, (data) ->
      fn data if fn


  ###

   method            : get
   summary         : relationship
   description    : 是否关注了该用户
   path            : user

  ###

  relationship: (user,fn = null) =>
    @debug "Users::relationship()"
    @get "/api/social/relationship/#{user}", (data) ->
      fn data if fn


  ###

   method            : get
   summary         : changeNoticeSetting
   description    : 获取我关注和关注我的用户列表

  ###

  changeNoticeSetting: (fn = null) =>
    @debug "Users::changeNoticeSetting()"
    @get "/api/social/relationships", (data) ->
      fn data if fn


  ###

   method            : get
   summary         : changeNoticeSetting
   description    : 获取我关注和关注我的用户列表包含成员列表
   query            : project_id

  ###

  changeNoticeSetting: (params = {}, fn = null) =>
    @debug "Users::changeNoticeSetting()"
    @get "/api/social/relationships/all", params, (data) ->
      fn data if fn


  ###

   method            : get
   summary         : search
   description    : 搜索用户
   query            : key,page,pageSize

  ###

  search: (params = {}, fn = null) =>
    @debug "Users::search()"
    @get "/api/social/search", params, (data) ->
      fn data if fn


  ###

   method            : post
   summary         : unfollow
   description    : 取消关注
   query            : users

  ###

  unfollow: (params = {}, fn = null) =>
    @debug "Users::unfollow()"
    @post "/api/social/unfollow", params, (data) ->
      fn data if fn


  ###

   method            : get
   summary         : unreadCount
   description    : 未读消息通知

  ###

  unreadCount: (fn = null) =>
    @debug "Users::unreadCount()"
    @get "/api/social/unread_count", (data) ->
      fn data if fn



module.exports = (client) -> new Users client