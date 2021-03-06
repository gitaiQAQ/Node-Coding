// Generated by CoffeeScript 1.10.0
(function() {
  var ApiBase, _, cache, debug, fileCache, fs, request,
    bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
    extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    hasProp = {}.hasOwnProperty;

  debug = require('debug')('coding:ApiBaseHTTP');

  ApiBase = require('./ApiBase').ApiBase;

  _ = require('lodash');

  fs = require('fs');

  cache = require('cache-storage');

  fileCache = require('cache-storage/Storage/FileSyncStorage');

  request = require('request');

  module.exports.ApiBaseHTTP = (function(superClass) {
    extend(ApiBaseHTTP, superClass);

    function ApiBaseHTTP() {
      this.patch = bind(this.patch, this);
      this.del = bind(this.del, this);
      this.put = bind(this.put, this);
      this.post = bind(this.post, this);
      this.get = bind(this.get, this);
      this.head = bind(this.head, this);
      this.fn_wrapper = bind(this.fn_wrapper, this);
      this.prepare_opts = bind(this.prepare_opts, this);
      this.update_opts = bind(this.update_opts, this);
      this.init = bind(this.init, this);
      this.handleOptions = bind(this.handleOptions, this);
      return ApiBaseHTTP.__super__.constructor.apply(this, arguments);
    }

    ApiBaseHTTP.prototype.handleOptions = function() {
      ApiBaseHTTP.__super__.handleOptions.apply(this, arguments);
      debug("handleOptions()");
      if (!this.options.url) {
        throw "`url` is mandatory";
      }
      if (!this.options.cache) {
        throw "`cache dir` is mandatory";
      }
      if (!fs.existsSync(this.options.cache)) {
        throw new Error('FileStorage: directory ' + this.options.cache + ' does not exists');
      }
      if (!fs.statSync(this.options.cache).isDirectory()) {
        throw new Error('FileStorage: path ' + this.options.cache + ' must be directory');
      }
      this.storage = new cache(new fileCache(this.options.cache), 'coding');
      this.request = request.defaults({
        jar: true,
        baseUrl: this.options.url,
        gzip: false,
        json: true
      });
      return this.request.debug = true;
    };

    ApiBaseHTTP.prototype.init = function() {
      return ApiBaseHTTP.__super__.init.apply(this, arguments);
    };

    ApiBaseHTTP.prototype.update_opts = function(opts) {
      return this.options = _.assign(this.options, opts);
    };

    ApiBaseHTTP.prototype.prepare_opts = function(opts) {
      var k;
      for (k in opts) {
        if (!opts[k]) {
          delete opts[k];
        }
      }
      return opts;
    };

    ApiBaseHTTP.prototype.fn_wrapper = function(fn) {
      return (function(_this) {
        return function(err, response, body) {
          var arity;
          arity = fn.length;
          if (err) {
            throw err;
          }
          switch (arity) {
            case 1:
              return fn(body);
            case 2:
              return fn(err, response || JSON.parse(response.body).message);
            case 3:
              return fn(err, response, body);
          }
        };
      })(this);
    };

    ApiBaseHTTP.prototype.head = function(path, opts, fn) {
      if (opts == null) {
        opts = {};
      }
      if (fn == null) {
        fn = null;
      }
      opts = this.prepare_opts(opts);
      return this.request.head(path, opts, this.fn_wrapper(fn));
    };

    ApiBaseHTTP.prototype.get = function(path, opts, fn) {
      if (fn == null) {
        fn = null;
      }
      if ('function' === typeof query) {
        fn = opts;
        opts = {};
      }
      opts = this.prepare_opts(opts);
      return this.request.get(path, opts, this.fn_wrapper(fn));
    };

    ApiBaseHTTP.prototype.post = function(path, opts, fn) {
      if (opts == null) {
        opts = {};
      }
      if (fn == null) {
        fn = null;
      }
      opts = this.prepare_opts(opts);
      return this.request.post(path, opts, this.fn_wrapper(fn));
    };

    ApiBaseHTTP.prototype.put = function(path, opts, fn) {
      if (opts == null) {
        opts = {};
      }
      if (fn == null) {
        fn = null;
      }
      opts = this.prepare_opts(opts);
      return this.request.put(path, opts, this.fn_wrapper(fn));
    };

    ApiBaseHTTP.prototype.del = function(path, opts, fn) {
      if (opts == null) {
        opts = {};
      }
      if (fn == null) {
        fn = null;
      }
      opts = this.prepare_opts(opts);
      return this.request.del(path, opts, this.fn_wrapper(fn));
    };

    ApiBaseHTTP.prototype.patch = function(path, opts, fn) {
      if (opts == null) {
        opts = {};
      }
      if (fn == null) {
        fn = null;
      }
      opts = this.prepare_opts(opts);
      return this.request.patch(path, opts, this.fn_wrapper(fn));
    };

    return ApiBaseHTTP;

  })(ApiBase);

}).call(this);
