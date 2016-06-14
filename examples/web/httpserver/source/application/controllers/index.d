/*
 * Hunt - a framework for web and console application based on Collie using Dlang development
 *
 * Copyright (C) 2015-2016  Shanghai Putao Technology Co., Ltd 
 *
 * Developer: putao's Dlang team
 *
 * Licensed under the BSD License.
 *
 */
module application.controllers.index;

import hunt.web;

class IndexController : IController
{
    mixin HuntDynamicCallFun;
    
    void show(Request req, Response res)
    {
        import std.stdio;
       // writeln("do show!");
        res.setContext("hello world<br/>");
        res.setHeader("content-type","text/html;charset=UTF-8");
	res.done();
    }
    
}
