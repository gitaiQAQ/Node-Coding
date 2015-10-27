assert = require 'assert'
should = require 'should'
faker = require 'faker'

describe 'Tags', ->
	coding = null

	realId = "1ef6d9c909016bc8c3cdaa344d114262"
	realSecret = "4ba7a08053578fc0fd19eb86f0ff7fbf4e5d0512"

	project = "test_project"
	user = "gitai"

	test_user = "dphdjy"

	branch = faker.helpers.randomize()

	before (done)->
		@timeout 60000
		coding = new require('..')
		  url:     "https://coding.net"
		  cache:   "./temp"
		data=coding.storage.load 'access_token'

		unless data? and data['access_token']?
			coding.oauth.authorize realId,realSecret,null,null,(result)->
				done()
		else
			done()

	beforeEach ->

	describe 'list_4()', ->
		it '标签列表', (done) ->
			coding.tags.list_4 user,project,{
				"page":"integer",
				"pageSize":"integer"},(result)->
				should.not.exist result["msg"]
				result.code.should.equal 0
				console.log result["data"]
				done()

	describe 'createTag()', ->
		it '创建标签', (done) ->
			coding.tags.createTag user,project,{
				"tag_name":"string",
				"tag_point":"string",
				"message":"string"},(result)->
				should.not.exist result["msg"]
				result.code.should.equal 0
				console.log result["data"]
				done()

	describe 'deleteTag()', ->
		it '删除标签', (done) ->
			coding.tags.deleteTag user,project,{
				"tag_name":"string"},(result)->
				should.not.exist result["msg"]
				result.code.should.equal 0
				console.log result["data"]
				done()



