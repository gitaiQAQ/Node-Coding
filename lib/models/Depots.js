(function() {
  var BaseModel, Depots, util,
    bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
    extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    hasProp = {}.hasOwnProperty;

  BaseModel = require('../BaseModel');

  util = require('util');

  Depots = (function(superClass) {
    extend(Depots, superClass);

    function Depots() {
      this.initDepot = bind(this.initDepot, this);
      this.importRepo = bind(this.importRepo, this);
      this.listWebHook = bind(this.listWebHook, this);
      this.getWebHook = bind(this.getWebHook, this);
      this.createWebHook = bind(this.createWebHook, this);
      this.forks = bind(this.forks, this);
      this.fork = bind(this.fork, this);
      this.index = bind(this.index, this);
      return Depots.__super__.constructor.apply(this, arguments);
    }


    /*
    
     method		: get
     operationId	: index
     description	: 获取仓库信息
     path			: user,project
     query		: 
     body			:
     */

    Depots.prototype.index = function(user, project, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Depots::index()");
      return this.get(util.format("user/%s/project/%s/git", user, project), params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method		: post
     operationId	: fork
     description	: fork
     path			: user,project
     query		: 
     body			:
     */

    Depots.prototype.fork = function(user, project, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Depots::fork()");
      return this.post(util.format("user/%s/project/%s/git/fork", user, project), params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method		: get
     operationId	: forks
     description	: 项目被fork的列表
     path			: user,project
     query		: 
     body			:
     */

    Depots.prototype.forks = function(user, project, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Depots::forks()");
      return this.get(util.format("user/%s/project/%s/git/forks", user, project), params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method		: post
     operationId	: createWebHook
     description	: 创建 webhook
     path			: user,project
     query		: hook_url(string),token(string),type_push(boolean),type_mr_pr(boolean),type_topic(boolean),type_member(boolean),type_comment(boolean),type_document(boolean),type_watch(boolean),type_star(boolean),type_task(boolean)
     body			:
     */

    Depots.prototype.createWebHook = function(user, project, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Depots::createWebHook()");
      return this.post(util.format("user/%s/project/%s/git/hook", user, project), params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method		: get
     operationId	: getWebHook
     description	: 获取 webhook
     path			: user,project,id
     query		: 
     body			:
     */

    Depots.prototype.getWebHook = function(user, project, id, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Depots::getWebHook()");
      return this.get(util.format("user/%s/project/%s/git/hook/%s", user, project, id), params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method		: get
     operationId	: listWebHook
     description	: 列出项目设置的 webhook
     path			: user,project
     query		: 
     body			:
     */

    Depots.prototype.listWebHook = function(user, project, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Depots::listWebHook()");
      return this.get(util.format("user/%s/project/%s/git/hooks", user, project), params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method		: get
     operationId	: importRepo
     description	: 导入仓库
     path			: user,project
     query		: origin_url(string),vcs_type(string)
     body			:
     */

    Depots.prototype.importRepo = function(user, project, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Depots::importRepo()");
      return this.get(util.format("user/%s/project/%s/git/import", user, project), params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method		: post
     operationId	: initDepot
     description	: 初始化仓库
     path			: user,project
     query		: type(string),gitReadmeEnabled(string),gitIgnore(string),gitLicense(string),importFrom(string),vcsType(string)
     body			:
     */

    Depots.prototype.initDepot = function(user, project, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Depots::initDepot()");
      return this.post(util.format("user/%s/project/%s/git/init", user, project), params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };

    return Depots;

  })(BaseModel);

  module.exports = function(client) {
    return new Depots(client);
  };

}).call(this);