// Generated by CoffeeScript 1.10.0
(function() {
  var BaseModel, Projects, util,
    bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
    extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    hasProp = {}.hasOwnProperty;

  BaseModel = require('../BaseModel');

  util = require('util');

  Projects = (function(superClass) {
    extend(Projects, superClass);

    function Projects() {
      this.publicProjects = bind(this.publicProjects, this);
      this.publicProjects = bind(this.publicProjects, this);
      this.publicProjects = bind(this.publicProjects, this);
      this.publicProjects = bind(this.publicProjects, this);
      this.publicProjects = bind(this.publicProjects, this);
      this.publicProjects = bind(this.publicProjects, this);
      this.createProject = bind(this.createProject, this);
      this.privateProjects = bind(this.privateProjects, this);
      this.privateProjects = bind(this.privateProjects, this);
      this.privateProjects = bind(this.privateProjects, this);
      this.privateProjects = bind(this.privateProjects, this);
      this.privateProjects = bind(this.privateProjects, this);
      this.privateProjects = bind(this.privateProjects, this);
      this.projectList = bind(this.projectList, this);
      this.watched = bind(this.watched, this);
      this.watched = bind(this.watched, this);
      this.watch = bind(this.watch, this);
      this.visitProject = bind(this.visitProject, this);
      this.unwatch = bind(this.unwatch, this);
      this.unstar = bind(this.unstar, this);
      this.stared = bind(this.stared, this);
      this.star = bind(this.star, this);
      this.setProjectIcon = bind(this.setProjectIcon, this);
      this.deleteProject = bind(this.deleteProject, this);
      this.queryByName = bind(this.queryByName, this);
      this.publicProjects = bind(this.publicProjects, this);
      this.recommendedList = bind(this.recommendedList, this);
      this.update = bind(this.update, this);
      this.pinProject = bind(this.pinProject, this);
      this.pinProject = bind(this.pinProject, this);
      this.pinProject = bind(this.pinProject, this);
      return Projects.__super__.constructor.apply(this, arguments);
    }


    /*
    
     method            : get
     summary         : pinProject
     description    : 获取常用项目列表
     query            : page,pageSize
     */

    Projects.prototype.pinProject = function(params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::pinProject()");
      return this.get("/api/account/projects/pin", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : post
     summary         : pinProject
     description    : 设置常用项目
     body            : ids
     */

    Projects.prototype.pinProject = function(params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::pinProject()");
      return this.post("/api/account/projects/pin", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : delete
     summary         : pinProject
     description    : 取消常用项目
     body            : ids
     */

    Projects.prototype.pinProject = function(params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::pinProject()");
      return this["delete"]("/api/account/projects/pin", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : put
     summary         : update
     description    : 更新项目信息
     query            : id,name,description
     */

    Projects.prototype.update = function(params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::update()");
      return this.put("/api/project", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : get
     summary         : recommendedList
     description    : 推荐项目list
     */

    Projects.prototype.recommendedList = function(fn) {
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::recommendedList()");
      return this.get("/api/projects/recommended", function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : get
     summary         : publicProjects
     description    : 公有项目列表
     query            : page,pageSize
     */

    Projects.prototype.publicProjects = function(params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::publicProjects()");
      return this.get("/api/public/all", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : get
     summary         : queryByName
     description    : 通过名称查询
     path            : user,project
     */

    Projects.prototype.queryByName = function(user, project, fn) {
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::queryByName()");
      return this.get("/api/user/" + user + "/project/" + project, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : delete
     summary         : deleteProject
     description    : 删除项目
     path            : user,project
     query            : name
     */

    Projects.prototype.deleteProject = function(user, project, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::deleteProject()");
      return this["delete"]("/api/user/" + user + "/project/" + project, params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : post
     summary         : setProjectIcon
     description    : 设置项目图标
     path            : user,project
     */

    Projects.prototype.setProjectIcon = function(user, project, fn) {
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::setProjectIcon()");
      return this.post("/api/user/" + user + "/project/" + project + "/project_icon", function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : post
     summary         : star
     description    : 收藏项目
     path            : user,project
     */

    Projects.prototype.star = function(user, project, fn) {
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::star()");
      return this.post("/api/user/" + user + "/project/" + project + "/star", function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : post
     summary         : stared
     description    : 项目是否被收藏
     path            : user,project
     */

    Projects.prototype.stared = function(user, project, fn) {
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::stared()");
      return this.post("/api/user/" + user + "/project/" + project + "/stared", function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : post
     summary         : unstar
     description    : 项目取消收藏
     path            : user,project
     */

    Projects.prototype.unstar = function(user, project, fn) {
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::unstar()");
      return this.post("/api/user/" + user + "/project/" + project + "/unstar", function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : post
     summary         : unwatch
     description    : 项目取消关注
     path            : user,project
     */

    Projects.prototype.unwatch = function(user, project, fn) {
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::unwatch()");
      return this.post("/api/user/" + user + "/project/" + project + "/unwatch", function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : get
     summary         : visitProject
     description    : 更新项目阅读时间
     path            : user,project
     */

    Projects.prototype.visitProject = function(user, project, fn) {
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::visitProject()");
      return this.get("/api/user/" + user + "/project/" + project + "/update_visit", function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : post
     summary         : watch
     description    : 关注项目
     path            : user,project
     */

    Projects.prototype.watch = function(user, project, fn) {
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::watch()");
      return this.post("/api/user/" + user + "/project/" + project + "/watch", function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : post
     summary         : watched
     description    : 项目是否被关注
     path            : user,project
     */

    Projects.prototype.watched = function(user, project, fn) {
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::watched()");
      return this.post("/api/user/" + user + "/project/" + project + "/watched", function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : get
     summary         : watched
     description    : 项目关注者
     path            : user,project
     */

    Projects.prototype.watched = function(user, project, fn) {
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::watched()");
      return this.get("/api/user/" + user + "/project/" + project + "/watchers", function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : get
     summary         : projectList
     description    : 我的项目列表
     query            : type,sort,page,pageSize
     */

    Projects.prototype.projectList = function(params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::projectList()");
      return this.get("/api/user/projects", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : get
     summary         : privateProjects
     description    : 私有项目列表
     query            : type,page,pageSize
     */

    Projects.prototype.privateProjects = function(params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::privateProjects()");
      return this.get("/api/user/projects/private", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : post
     summary         : privateProjects
     description    : 私有项目列表
     query            : type,page,pageSize
     */

    Projects.prototype.privateProjects = function(params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::privateProjects()");
      return this.post("/api/user/projects/private", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : put
     summary         : privateProjects
     description    : 私有项目列表
     query            : type,page,pageSize
     */

    Projects.prototype.privateProjects = function(params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::privateProjects()");
      return this.put("/api/user/projects/private", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : delete
     summary         : privateProjects
     description    : 私有项目列表
     query            : type,page,pageSize
     */

    Projects.prototype.privateProjects = function(params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::privateProjects()");
      return this["delete"]("/api/user/projects/private", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : options
     summary         : privateProjects
     description    : 私有项目列表
     query            : type,page,pageSize
     */

    Projects.prototype.privateProjects = function(params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::privateProjects()");
      return this.options("/api/user/projects/private", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : patch
     summary         : privateProjects
     description    : 私有项目列表
     query            : type,page,pageSize
     */

    Projects.prototype.privateProjects = function(params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::privateProjects()");
      return this.patch("/api/user/projects/private", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : post
     summary         : createProject
     description    : 创建项目
     path            : user
     formData        : name,description,type,gitEnabled,gitIgnore,gitReadmeEnabled,gitLicense,importFrom,vcsType,icon
     */

    Projects.prototype.createProject = function(user, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::createProject()");
      return this.post("/api/user/" + user + "/project", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : get
     summary         : publicProjects
     description    : 公有项目列表
     path            : user
     query            : type,page,pageSize
     */

    Projects.prototype.publicProjects = function(user, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::publicProjects()");
      return this.get("/api/user/" + user + "/projects/public", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : post
     summary         : publicProjects
     description    : 公有项目列表
     path            : user
     query            : type,page,pageSize
     */

    Projects.prototype.publicProjects = function(user, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::publicProjects()");
      return this.post("/api/user/" + user + "/projects/public", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : put
     summary         : publicProjects
     description    : 公有项目列表
     path            : user
     query            : type,page,pageSize
     */

    Projects.prototype.publicProjects = function(user, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::publicProjects()");
      return this.put("/api/user/" + user + "/projects/public", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : delete
     summary         : publicProjects
     description    : 公有项目列表
     path            : user
     query            : type,page,pageSize
     */

    Projects.prototype.publicProjects = function(user, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::publicProjects()");
      return this["delete"]("/api/user/" + user + "/projects/public", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : options
     summary         : publicProjects
     description    : 公有项目列表
     path            : user
     query            : type,page,pageSize
     */

    Projects.prototype.publicProjects = function(user, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::publicProjects()");
      return this.options("/api/user/" + user + "/projects/public", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };


    /*
    
     method            : patch
     summary         : publicProjects
     description    : 公有项目列表
     path            : user
     query            : type,page,pageSize
     */

    Projects.prototype.publicProjects = function(user, params, fn) {
      if (params == null) {
        params = {};
      }
      if (fn == null) {
        fn = null;
      }
      this.debug("Projects::publicProjects()");
      return this.patch("/api/user/" + user + "/projects/public", params, function(data) {
        if (fn) {
          return fn(data);
        }
      });
    };

    return Projects;

  })(BaseModel);

  module.exports = function(client) {
    return new Projects(client);
  };

}).call(this);
