(function() {
  var BaseModel, Keys, util,
    bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
    extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    hasProp = {}.hasOwnProperty;

  BaseModel = require('../BaseModel');

  util = require('util');

  Keys = (function(superClass) {
    extend(Keys, superClass);

    function Keys() {
      this.unBindDeployKey = bind(this.unBindDeployKey, this);
      this.listDeployKeys = bind(this.listDeployKeys, this);
      this.saveDeployKey = bind(this.saveDeployKey, this);
      this.bindDeployKey = bind(this.bindDeployKey, this);
      this.list_1 = bind(this.list_1, this);
      this.show_1 = bind(this.show_1, this);
      return Keys.__super__.constructor.apply(this, arguments);
    }


    /*
    
     method		: get
     operationId	: show_1
     description	: 通过KeyId获取个人公钥
     path			: global_key,keyId
     query		: 
     body			:
     */

    Keys.prototype.show_1 = function(global_key, keyId, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Keys::show_1()");
      return this.get(util.format("user/%s/key/%s", global_key, keyId), params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method		: get
     operationId	: list_1
     description	: 列出个人公钥
     path			: global_key
     query		: withIDEKey(boolean)
     body			:
     */

    Keys.prototype.list_1 = function(global_key, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Keys::list_1()");
      return this.get(util.format("user/%s/keys", global_key), params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method		: post
     operationId	: bindDeployKey
     description	: 绑定部署公钥
     path			: global_key,project,id
     query		: 
     body			:
     */

    Keys.prototype.bindDeployKey = function(global_key, project, id, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Keys::bindDeployKey()");
      return this.post(util.format("user/%s/project/%s/git/bind_deploy_key/%s", global_key, project, id), params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method		: post
     operationId	: saveDeployKey
     description	: 新建部署公钥
     path			: global_key,project
     query		: title(string),content(string)
     body			:
     */

    Keys.prototype.saveDeployKey = function(global_key, project, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Keys::saveDeployKey()");
      return this.post(util.format("user/%s/project/%s/git/deploy_key", global_key, project), params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method		: get
     operationId	: listDeployKeys
     description	: 列出部署公钥
     path			: global_key,project
     query		: 
     body			:
     */

    Keys.prototype.listDeployKeys = function(global_key, project, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Keys::listDeployKeys()");
      return this.get(util.format("user/%s/project/%s/git/deploy_keys", global_key, project), params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method		: post
     operationId	: unBindDeployKey
     description	: 解绑部署公钥
     path			: global_key,project,id
     query		: 
     body			:
     */

    Keys.prototype.unBindDeployKey = function(global_key, project, id, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Keys::unBindDeployKey()");
      return this.post(util.format("user/%s/project/%s/git/unbind_deploy_key/%s", global_key, project, id), params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };

    return Keys;

  })(BaseModel);

  module.exports = function(client) {
    return new Keys(client);
  };

}).call(this);