/**
 * 
 */

/*! Flight v1.1.3 | (c) Twitter, Inc. | MIT License */
(function(context){var factories={},loaded={};
var isArray=Array.isArray||function(obj){return obj.constructor==Array
};
var map=Array.map||function(arr,fn,scope){for(var i=0,len=arr.length,result=[];
i<len;
i++){result.push(fn.call(scope,arr[i]))
}return result
};
function define(){var args=Array.prototype.slice.call(arguments),dependencies=[],id,factory;
if(typeof args[0]=="string"){id=args.shift()
}if(isArray(args[0])){dependencies=args.shift()
}factory=args.shift();
factories[id]=[dependencies,factory]
}function require(id){function resolve(dep){var relativeParts=id.split("/"),depParts=dep.split("/"),relative=false;
relativeParts.pop();
while(depParts[0]==".."&&relativeParts.length){relativeParts.pop();
depParts.shift();
relative=true
}if(depParts[0]=="."){depParts.shift();
relative=true
}if(relative){depParts=relativeParts.concat(depParts)
}return depParts.join("/")
}var unresolved,factory,dependencies;
if(typeof loaded[id]=="undefined"){unresolved=factories[id];
if(unresolved){dependencies=unresolved[0];
factory=unresolved[1];
loaded[id]=factory.apply(undefined,map(dependencies,function(id){return require(resolve(id))
}))
}}return loaded[id]
}define("lib/utils",[],function(){var arry=[];
var DEFAULT_INTERVAL=100;
var utils={isDomObj:function(obj){return !!(obj.nodeType||obj===window)
},toArray:function(obj,from){return arry.slice.call(obj,from)
},merge:function(){var l=arguments.length,i=0,args=new Array(l+1);
for(;
i<l;
i++){args[i+1]=arguments[i]
}if(l===0){return{}
}args[0]={};
if(args[args.length-1]===true){args.pop();
args.unshift(true)
}return $.extend.apply(undefined,args)
},push:function(base,extra,protect){if(base){Object.keys(extra||{}).forEach(function(key){if(base[key]&&protect){throw new Error('utils.push attempted to overwrite "'+key+'" while running in protected mode')
}if(typeof base[key]=="object"&&typeof extra[key]=="object"){this.push(base[key],extra[key])
}else{base[key]=extra[key]
}},this)
}return base
},isEnumerable:function(obj,property){return Object.keys(obj).indexOf(property)>-1
},compose:function(){var funcs=arguments;
return function(){var args=arguments;
for(var i=funcs.length-1;
i>=0;
i--){args=[funcs[i].apply(this,args)]
}return args[0]
}
},uniqueArray:function(array){var u={},a=[];
for(var i=0,l=array.length;
i<l;
++i){if(u.hasOwnProperty(array[i])){continue
}a.push(array[i]);
u[array[i]]=1
}return a
},debounce:function(func,wait,immediate){if(typeof wait!="number"){wait=DEFAULT_INTERVAL
}var timeout,result;
return function(){var context=this,args=arguments;
var later=function(){timeout=null;
if(!immediate){result=func.apply(context,args)
}};
var callNow=immediate&&!timeout;
clearTimeout(timeout);
timeout=setTimeout(later,wait);
if(callNow){result=func.apply(context,args)
}return result
}
},throttle:function(func,wait){if(typeof wait!="number"){wait=DEFAULT_INTERVAL
}var context,args,timeout,throttling,more,result;
var whenDone=this.debounce(function(){more=throttling=false
},wait);
return function(){context=this;
args=arguments;
var later=function(){timeout=null;
if(more){result=func.apply(context,args)
}whenDone()
};
if(!timeout){timeout=setTimeout(later,wait)
}if(throttling){more=true
}else{throttling=true;
result=func.apply(context,args)
}whenDone();
return result
}
},countThen:function(num,base){return function(){if(!--num){return base.apply(this,arguments)
}}
},delegate:function(rules){return function(e,data){var target=$(e.target),parent;
Object.keys(rules).forEach(function(selector){if(!e.isPropagationStopped()&&(parent=target.closest(selector)).length){data=data||{};
data.el=parent[0];
return rules[selector].apply(this,[e,data])
}},this)
}
},once:function(func){var ran,result;
return function(){if(ran){return result
}result=func.apply(this,arguments);
ran=true;
return result
}
}};
return utils
});
define("lib/debug",[],function(){function traverse(util,searchTerm,options){options=options||{};
var obj=options.obj||window;
var path=options.path||(obj==window?"window":"");
var props=Object.keys(obj);
props.forEach(function(prop){if((tests[util]||util)(searchTerm,obj,prop)){console.log([path,".",prop].join(""),"->",["(",typeof obj[prop],")"].join(""),obj[prop])
}if(Object.prototype.toString.call(obj[prop])=="[object Object]"&&obj[prop]!=obj&&path.split(".").indexOf(prop)==-1){traverse(util,searchTerm,{obj:obj[prop],path:[path,prop].join(".")})
}})
}function search(util,expected,searchTerm,options){if(!expected||typeof searchTerm==expected){traverse(util,searchTerm,options)
}else{console.error([searchTerm,"must be",expected].join(" "))
}}var tests={name:function(searchTerm,obj,prop){return searchTerm==prop
},nameContains:function(searchTerm,obj,prop){return prop.indexOf(searchTerm)>-1
},type:function(searchTerm,obj,prop){return obj[prop] instanceof searchTerm
},value:function(searchTerm,obj,prop){return obj[prop]===searchTerm
},valueCoerced:function(searchTerm,obj,prop){return obj[prop]==searchTerm
}};
function byName(searchTerm,options){search("name","string",searchTerm,options)
}function byNameContains(searchTerm,options){search("nameContains","string",searchTerm,options)
}function byType(searchTerm,options){search("type","function",searchTerm,options)
}function byValue(searchTerm,options){search("value",null,searchTerm,options)
}function byValueCoerced(searchTerm,options){search("valueCoerced",null,searchTerm,options)
}function custom(fn,options){traverse(fn,null,options)
}var ALL="all";
var defaultEventNamesFilter=[];
var defaultActionsFilter=[];
var logFilter=retrieveLogFilter();
function filterEventLogsByAction(){var actions=[].slice.call(arguments);
logFilter.eventNames.length||(logFilter.eventNames=ALL);
logFilter.actions=actions.length?actions:ALL;
saveLogFilter()
}function filterEventLogsByName(){var eventNames=[].slice.call(arguments);
logFilter.actions.length||(logFilter.actions=ALL);
logFilter.eventNames=eventNames.length?eventNames:ALL;
saveLogFilter()
}function hideAllEventLogs(){logFilter.actions=[];
logFilter.eventNames=[];
saveLogFilter()
}function showAllEventLogs(){logFilter.actions=ALL;
logFilter.eventNames=ALL;
saveLogFilter()
}function saveLogFilter(){if(window.localStorage){localStorage.setItem("logFilter_eventNames",logFilter.eventNames);
localStorage.setItem("logFilter_actions",logFilter.actions)
}}function retrieveLogFilter(){var result={eventNames:window.localStorage&&localStorage.getItem("logFilter_eventNames")||defaultEventNamesFilter,actions:window.localStorage&&localStorage.getItem("logFilter_actions")||defaultActionsFilter};
Object.keys(result).forEach(function(k){var thisProp=result[k];
if(typeof thisProp=="string"&&thisProp!==ALL){result[k]=thisProp.split(",")
}});
return result
}return{enable:function(enable){this.enabled=!!enable;
if(enable&&window.console){console.info("Booting in DEBUG mode");
console.info("You can configure event logging with DEBUG.events.logAll()/logNone()/logByName()/logByAction()")
}window.DEBUG=this
},find:{byName:byName,byNameContains:byNameContains,byType:byType,byValue:byValue,byValueCoerced:byValueCoerced,custom:custom},events:{logFilter:logFilter,logByAction:filterEventLogsByAction,logByName:filterEventLogsByName,logAll:showAllEventLogs,logNone:hideAllEventLogs}}
});
define("lib/compose",["./utils","./debug"],function(utils,debug){var canWriteProtect=debug.enabled&&!utils.isEnumerable(Object,"getOwnPropertyDescriptor");
var dontLock=["mixedIn"];
if(canWriteProtect){try{Object.getOwnPropertyDescriptor(Object,"keys")
}catch(e){canWriteProtect=false
}}function setPropertyWritability(obj,isWritable){if(!canWriteProtect){return
}var props=Object.create(null);
Object.keys(obj).forEach(function(key){if(dontLock.indexOf(key)<0){var desc=Object.getOwnPropertyDescriptor(obj,key);
desc.writable=isWritable;
props[key]=desc
}});
Object.defineProperties(obj,props)
}function unlockProperty(obj,prop,op){var writable;
if(!canWriteProtect||!obj.hasOwnProperty(prop)){op.call(obj);
return
}writable=Object.getOwnPropertyDescriptor(obj,prop).writable;
Object.defineProperty(obj,prop,{writable:true});
op.call(obj);
Object.defineProperty(obj,prop,{writable:writable})
}function mixin(base,mixins){base.mixedIn=base.hasOwnProperty("mixedIn")?base.mixedIn:[];
mixins.forEach(function(mixin){if(base.mixedIn.indexOf(mixin)==-1){setPropertyWritability(base,false);
mixin.call(base);
base.mixedIn.push(mixin)
}});
setPropertyWritability(base,true)
}return{mixin:mixin,unlockProperty:unlockProperty}
});
define("lib/advice",["./compose"],function(compose){var advice={around:function(base,wrapped){return function composedAround(){var i=0,l=arguments.length,args=new Array(l+1);
args[0]=base.bind(this);
for(;
i<l;
i++){args[i+1]=arguments[i]
}return wrapped.apply(this,args)
}
},before:function(base,before){var beforeFn=typeof before=="function"?before:before.obj[before.fnName];
return function composedBefore(){beforeFn.apply(this,arguments);
return base.apply(this,arguments)
}
},after:function(base,after){var afterFn=typeof after=="function"?after:after.obj[after.fnName];
return function composedAfter(){var res=(base.unbound||base).apply(this,arguments);
afterFn.apply(this,arguments);
return res
}
},withAdvice:function(){["before","after","around"].forEach(function(m){this[m]=function(method,fn){compose.unlockProperty(this,method,function(){if(typeof this[method]=="function"){this[method]=advice[m](this[method],fn)
}else{this[method]=fn
}return this[method]
})
}
},this)
}};
return advice
});
define("lib/registry",[],function(){function parseEventArgs(instance,args){var element,type,callback;
var end=args.length;
if(typeof args[end-1]==="function"){end-=1;
callback=args[end]
}if(typeof args[end-1]==="object"){end-=1
}if(end==2){element=args[0];
type=args[1]
}else{element=instance.node;
type=args[0]
}return{element:element,type:type,callback:callback}
}function matchEvent(a,b){return a.element==b.element&&a.type==b.type&&(b.callback==null||a.callback==b.callback)
}function Registry(){var registry=this;
(this.reset=function(){this.components=[];
this.allInstances={};
this.events=[]
}).call(this);
function ComponentInfo(component){this.component=component;
this.attachedTo=[];
this.instances={};
this.addInstance=function(instance){var instanceInfo=new InstanceInfo(instance);
this.instances[instance.identity]=instanceInfo;
this.attachedTo.push(instance.node);
return instanceInfo
};
this.removeInstance=function(instance){delete this.instances[instance.identity];
var indexOfNode=this.attachedTo.indexOf(instance.node);
indexOfNode>-1&&this.attachedTo.splice(indexOfNode,1);
if(!Object.keys(this.instances).length){registry.removeComponentInfo(this)
}};
this.isAttachedTo=function(node){return this.attachedTo.indexOf(node)>-1
}
}function InstanceInfo(instance){this.instance=instance;
this.events=[];
this.addBind=function(event){this.events.push(event);
registry.events.push(event)
};
this.removeBind=function(event){for(var i=0,e;
e=this.events[i];
i++){if(matchEvent(e,event)){this.events.splice(i,1)
}}}
}this.addInstance=function(instance){var component=this.findComponentInfo(instance);
if(!component){component=new ComponentInfo(instance.constructor);
this.components.push(component)
}var inst=component.addInstance(instance);
this.allInstances[instance.identity]=inst;
return component
};
this.removeInstance=function(instance){var index,instInfo=this.findInstanceInfo(instance);
var componentInfo=this.findComponentInfo(instance);
componentInfo&&componentInfo.removeInstance(instance);
delete this.allInstances[instance.identity]
};
this.removeComponentInfo=function(componentInfo){var index=this.components.indexOf(componentInfo);
index>-1&&this.components.splice(index,1)
};
this.findComponentInfo=function(which){var component=which.attachTo?which:which.constructor;
for(var i=0,c;
c=this.components[i];
i++){if(c.component===component){return c
}}return null
};
this.findInstanceInfo=function(instance){return this.allInstances[instance.identity]||null
};
this.getBoundEventNames=function(instance){return this.findInstanceInfo(instance).events.map(function(ev){return ev.type
})
};
this.findInstanceInfoByNode=function(node){var result=[];
Object.keys(this.allInstances).forEach(function(k){var thisInstanceInfo=this.allInstances[k];
if(thisInstanceInfo.instance.node===node){result.push(thisInstanceInfo)
}},this);
return result
};
this.on=function(componentOn){var instance=registry.findInstanceInfo(this),boundCallback;
var l=arguments.length,i=1;
var otherArgs=new Array(l-1);
for(;
i<l;
i++){otherArgs[i-1]=arguments[i]
}if(instance){boundCallback=componentOn.apply(null,otherArgs);
if(boundCallback){otherArgs[otherArgs.length-1]=boundCallback
}var event=parseEventArgs(this,otherArgs);
instance.addBind(event)
}};
this.off=function(){var event=parseEventArgs(this,arguments),instance=registry.findInstanceInfo(this);
if(instance){instance.removeBind(event)
}for(var i=0,e;
e=registry.events[i];
i++){if(matchEvent(e,event)){registry.events.splice(i,1)
}}};
registry.trigger=function(){};
this.teardown=function(){registry.removeInstance(this)
};
this.withRegistration=function(){this.after("initialize",function(){registry.addInstance(this)
});
this.around("on",registry.on);
this.after("off",registry.off);
window.DEBUG&&DEBUG.enabled&&this.after("trigger",registry.trigger);
this.after("teardown",{obj:registry,fnName:"teardown"})
}
}return new Registry()
});
define("lib/base",["./utils","./registry","./debug"],function(utils,registry,debug){var componentId=0;
function teardownInstance(instanceInfo){instanceInfo.events.slice().forEach(function(event){var args=[event.type];
event.element&&args.unshift(event.element);
typeof event.callback=="function"&&args.push(event.callback);
this.off.apply(this,args)
},instanceInfo.instance)
}function checkSerializable(type,data){try{window.postMessage(data,"*")
}catch(e){console.log("unserializable data for event",type,":",data);
throw new Error(["The event",type,"on component",this.toString(),"was triggered with non-serializable data"].join(" "))
}}function proxyEventTo(targetEvent){return function(e,data){$(e.target).trigger(targetEvent,data)
}
}function withBase(){this.trigger=function(){var $element,type,data,event,defaultFn;
var lastIndex=arguments.length-1,lastArg=arguments[lastIndex];
if(typeof lastArg!="string"&&!(lastArg&&lastArg.defaultBehavior)){lastIndex--;
data=lastArg
}if(lastIndex==1){$element=$(arguments[0]);
event=arguments[1]
}else{$element=this.$node;
event=arguments[0]
}if(event.defaultBehavior){defaultFn=event.defaultBehavior;
event=$.Event(event.type)
}type=event.type||event;
if(debug.enabled&&window.postMessage){checkSerializable.call(this,type,data)
}if(typeof this.attr.eventData==="object"){data=$.extend(true,{},this.attr.eventData,data)
}$element.trigger(event||type,data);
if(defaultFn&&!event.isDefaultPrevented()){(this[defaultFn]||defaultFn).call(this)
}return $element
};
this.on=function(){var $element,type,callback,originalCb;
var lastIndex=arguments.length-1,origin=arguments[lastIndex];
if(typeof origin=="object"){originalCb=utils.delegate(this.resolveDelegateRules(origin))
}else{if(typeof origin=="string"){originalCb=proxyEventTo(origin)
}else{originalCb=origin
}}if(lastIndex==2){$element=$(arguments[0]);
type=arguments[1]
}else{$element=this.$node;
type=arguments[0]
}if(typeof originalCb!="function"&&typeof originalCb!="object"){throw new Error('Unable to bind to "'+type+'" because the given callback is not a function or an object')
}callback=originalCb.bind(this);
callback.target=originalCb;
callback.context=this;
$element.on(type,callback);
originalCb.bound||(originalCb.bound=[]);
originalCb.bound.push(callback);
return callback
};
this.off=function(){var $element,type,callback;
var lastIndex=arguments.length-1;
if(typeof arguments[lastIndex]=="function"){callback=arguments[lastIndex];
lastIndex-=1
}if(lastIndex==1){$element=$(arguments[0]);
type=arguments[1]
}else{$element=this.$node;
type=arguments[0]
}if(callback){var boundFunctions=callback.target?callback.target.bound:callback.bound||[];
boundFunctions&&boundFunctions.some(function(fn,i,arr){if(fn.context&&this.identity==fn.context.identity){arr.splice(i,1);
callback=fn;
return true
}},this)
}return $element.off(type,callback)
};
this.resolveDelegateRules=function(ruleInfo){var rules={};
Object.keys(ruleInfo).forEach(function(r){if(!(r in this.attr)){throw new Error('Component "'+this.toString()+'" wants to listen on "'+r+'" but no such attribute was defined.')
}rules[this.attr[r]]=typeof ruleInfo[r]=="string"?proxyEventTo(ruleInfo[r]):ruleInfo[r]
},this);
return rules
};
this.defaultAttrs=function(defaults){utils.push(this.defaults,defaults,true)||(this.defaults=defaults)
};
this.select=function(attributeKey){return this.$node.find(this.attr[attributeKey])
};
this.initialize=function(node,attrs){attrs||(attrs={});
this.identity||(this.identity=componentId++);
if(!node){throw new Error("Component needs a node")
}if(node.jquery){this.node=node[0];
this.$node=node
}else{this.node=node;
this.$node=$(node)
}var attr=Object.create(attrs);
for(var key in this.defaults){if(!attrs.hasOwnProperty(key)){attr[key]=this.defaults[key]
}}this.attr=attr;
Object.keys(this.defaults||{}).forEach(function(key){if(this.defaults[key]===null&&this.attr[key]===null){throw new Error('Required attribute "'+key+'" not specified in attachTo for component "'+this.toString()+'".')
}},this);
return this
};
this.teardown=function(){teardownInstance(registry.findInstanceInfo(this))
}
}return withBase
});
define("lib/logger",["./utils"],function(utils){var actionSymbols={on:"<-",trigger:"->",off:"x "};
function elemToString(elem){var tagStr=elem.tagName?elem.tagName.toLowerCase():elem.toString();
var classStr=elem.className?"."+elem.className:"";
var result=tagStr+classStr;
return elem.tagName?["'","'"].join(result):result
}function log(action,component,eventArgs){if(!window.DEBUG||!window.DEBUG.enabled){return
}var name,eventType,elem,fn,payload,logFilter,toRegExp,actionLoggable,nameLoggable,info;
if(typeof eventArgs[eventArgs.length-1]=="function"){fn=eventArgs.pop();
fn=fn.unbound||fn
}if(eventArgs.length==1){elem=component.$node[0];
eventType=eventArgs[0]
}else{if(eventArgs.length==2&&typeof eventArgs[1]=="object"&&!eventArgs[1].type){elem=component.$node[0];
eventType=eventArgs[0];
if(action=="trigger"){payload=eventArgs[1]
}}else{elem=eventArgs[0];
eventType=eventArgs[1];
if(action=="trigger"){payload=eventArgs[2]
}}}name=typeof eventType=="object"?eventType.type:eventType;
logFilter=DEBUG.events.logFilter;
actionLoggable=logFilter.actions=="all"||logFilter.actions.indexOf(action)>-1;
toRegExp=function(expr){return expr.test?expr:new RegExp("^"+expr.replace(/\*/g,".*")+"$")
};
nameLoggable=logFilter.eventNames=="all"||logFilter.eventNames.some(function(e){return toRegExp(e).test(name)
});
if(actionLoggable&&nameLoggable){info=[actionSymbols[action],action,"["+name+"]"];
payload&&info.push(payload);
info.push(elemToString(elem));
info.push(component.constructor.describe.split(" ").slice(0,3).join(" "));
console.info.apply(console,info)
}}function withLogging(){this.before("trigger",function(){log("trigger",this,utils.toArray(arguments))
});
this.before("on",function(){log("on",this,utils.toArray(arguments))
});
this.before("off",function(){log("off",this,utils.toArray(arguments))
})
}return withLogging
});
define("lib/component",["./advice","./utils","./compose","./base","./registry","./logger","./debug"],function(advice,utils,compose,withBase,registry,withLogging,debug){var functionNameRegEx=/function (.*?)\s?\(/;
function teardownAll(){var componentInfo=registry.findComponentInfo(this);
componentInfo&&Object.keys(componentInfo.instances).forEach(function(k){var info=componentInfo.instances[k];
if(info&&info.instance){info.instance.teardown()
}})
}function checkSerializable(type,data){try{window.postMessage(data,"*")
}catch(e){console.log("unserializable data for event",type,":",data);
throw new Error(["The event",type,"on component",this.toString(),"was triggered with non-serializable data"].join(" "))
}}function attachTo(selector){var l=arguments.length;
var args=new Array(l-1);
for(var i=1;
i<l;
i++){args[i-1]=arguments[i]
}if(!selector){throw new Error("Component needs to be attachTo'd a jQuery object, native node or selector string")
}var options=utils.merge.apply(utils,args);
var componentInfo=registry.findComponentInfo(this);
$(selector).each(function(i,node){if(componentInfo&&componentInfo.isAttachedTo(node)){return
}new this().initialize(node,options)
}.bind(this))
}function define(){var l=arguments.length;
var mixins=new Array(l+3);
for(var i=0;
i<l;
i++){mixins[i]=arguments[i]
}var Component=function(){};
Component.toString=Component.prototype.toString=function(){var prettyPrintMixins=mixins.map(function(mixin){if(mixin.name==null){var m=mixin.toString().match(functionNameRegEx);
return m&&m[1]?m[1]:""
}else{return mixin.name!="withBase"?mixin.name:""
}}).filter(Boolean).join(", ");
return prettyPrintMixins
};
if(debug.enabled){Component.describe=Component.prototype.describe=Component.toString()
}Component.attachTo=attachTo;
Component.teardownAll=teardownAll;
if(debug.enabled){mixins.unshift(withLogging)
}mixins.unshift(withBase,advice.withAdvice,registry.withRegistration);
compose.mixin(Component.prototype,mixins);
return Component
}define.teardownAll=function(){registry.components.slice().forEach(function(c){c.component.teardownAll()
});
registry.reset()
};
return define
});
define("lib/index",["./advice","./component","./compose","./logger","./registry","./utils"],function(advice,component,compose,logger,registry,utils){return{advice:advice,component:component,compose:compose,logger:logger,registry:registry,utils:utils}
});
context.flight=require("lib/index")
}(this));
eval(function(p,a,c,k,e,r){e=function(c){return(c<a?"":e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))
};
if(!"".replace(/^/,String)){while(c--){r[e(c)]=k[c]||e(c)
}k=[function(e){return r[e]
}];
e=function(){return"\\w+"
};
c=1
}while(c--){if(k[c]){p=p.replace(new RegExp("\\b"+e(c)+"\\b","g"),k[c])
}}return p
}('6 8(a){a=a||{};r.s.1P.2j(2,36);2.M=a.1y||"";2.1z=a.1q||J;2.U=a.1H||0;2.G=a.1B||1g r.s.1Y(0,0);2.E=a.Y||1g r.s.2B(0,0);2.X=a.V||t;2.1p=a.1s||"2g";2.1m=a.F||{};2.1G=a.1E||"39";2.N=a.1j||"34://31.r.2W/2Q/2O/2K/1u.2I";3(a.1j===""){2.N=""}2.19=a.1A||1g r.s.1Y(1,1);3(p a.A==="q"){3(p a.18==="q"){a.A=L}v{a.A=!a.18}}2.w=!a.A;2.17=a.1n||J;2.1I=a.2f||"2d";2.15=a.1l||J;2.4=t;2.z=t;2.14=t;2.T=t;2.B=t;2.R=t}8.9=1g r.s.1P();8.9.24=6(){5 i;5 f;5 a;5 d=2;5 c=6(e){e.20=L;3(e.1i){e.1i()}};5 b=6(e){e.2T=J;3(e.1Z){e.1Z()}3(!d.15){c(e)}};3(!2.4){2.4=16.2N("2M");2.1d();3(p 2.M.1v==="q"){2.4.Q=2.I()+2.M}v{2.4.Q=2.I();2.4.1e(2.M)}2.2F()[2.1I].1e(2.4);2.1t();3(2.4.7.C){2.R=L}v{3(2.U!==0&&2.4.Z>2.U){2.4.7.C=2.U;2.4.7.2A="2x";2.R=L}v{a=2.22();2.4.7.C=(2.4.Z-a.13-a.12)+"11";2.R=J}}2.1r(2.1z);3(!2.15){2.B=[];f=["2q","1N","2p","2o","1M","2n","2m","2l","2k"];1o(i=0;i<f.1L;i++){2.B.1K(r.s.u.1c(2.4,f[i],c))}2.B.1K(r.s.u.1c(2.4,"1N",6(e){2.7.1J="2i"}))}2.T=r.s.u.1c(2.4,"2h",b);r.s.u.S(2,"2e")}};8.9.I=6(){5 a="";3(2.N!==""){a="<2c";a+=" 2b=\'"+2.N+"\'";a+=" 2a=12";a+=" 7=\'";a+=" Y: 29;";a+=" 1J: 28;";a+=" 27: "+2.1G+";";a+="\'>"}K a};8.9.1t=6(){5 a;3(2.N!==""){a=2.4.3f;2.z=r.s.u.1c(a,"1M",2.26())}v{2.z=t}};8.9.26=6(){5 a=2;K 6(e){e.20=L;3(e.1i){e.1i()}r.s.u.S(a,"3e");a.1u()}};8.9.1r=6(d){5 m;5 n;5 e=0,H=0;3(!d){m=2.1F();3(m 3d r.s.3c){3(!m.25().3a(2.E)){m.38(2.E)}n=m.25();5 a=m.37();5 h=a.Z;5 f=a.23;5 k=2.G.C;5 l=2.G.1k;5 g=2.4.Z;5 b=2.4.23;5 i=2.19.C;5 j=2.19.1k;5 o=2.21().35(2.E);3(o.x<(-k+i)){e=o.x+k-i}v 3((o.x+g+k+i)>h){e=o.x+g+k+i-h}3(2.17){3(o.y<(-l+j+b)){H=o.y+l-j-b}v 3((o.y+l+j)>f){H=o.y+l+j-f}}v{3(o.y<(-l+j)){H=o.y+l-j}v 3((o.y+b+l+j)>f){H=o.y+b+l+j-f}}3(!(e===0&&H===0)){5 c=m.33();m.32(e,H)}}}};8.9.1d=6(){5 i,F;3(2.4){2.4.30=2.1p;2.4.7.2Z="";F=2.1m;1o(i 2Y F){3(F.2X(i)){2.4.7[i]=F[i]}}3(p 2.4.7.1f!=="q"&&2.4.7.1f!==""){2.4.7.2V="2S(1f="+(2.4.7.1f*2R)+")"}2.4.7.Y="2P";2.4.7.P=\'1b\';3(2.X!==t){2.4.7.V=2.X}}};8.9.22=6(){5 c;5 a={1a:0,1h:0,13:0,12:0};5 b=2.4;3(16.1w&&16.1w.1X){c=b.2L.1w.1X(b,"");3(c){a.1a=D(c.1W,10)||0;a.1h=D(c.1V,10)||0;a.13=D(c.1U,10)||0;a.12=D(c.1T,10)||0}}v 3(16.2J.O){3(b.O){a.1a=D(b.O.1W,10)||0;a.1h=D(b.O.1V,10)||0;a.13=D(b.O.1U,10)||0;a.12=D(b.O.1T,10)||0}}K a};8.9.2H=6(){3(2.4){2.4.2G.2U(2.4);2.4=t}};8.9.1x=6(){2.24();5 a=2.21().2E(2.E);2.4.7.13=(a.x+2.G.C)+"11";3(2.17){2.4.7.1h=-(a.y+2.G.1k)+"11"}v{2.4.7.1a=(a.y+2.G.1k)+"11"}3(2.w){2.4.7.P=\'1b\'}v{2.4.7.P="A"}};8.9.2D=6(a){3(p a.1s!=="q"){2.1p=a.1s;2.1d()}3(p a.F!=="q"){2.1m=a.F;2.1d()}3(p a.1y!=="q"){2.1S(a.1y)}3(p a.1q!=="q"){2.1z=a.1q}3(p a.1H!=="q"){2.U=a.1H}3(p a.1B!=="q"){2.G=a.1B}3(p a.1n!=="q"){2.17=a.1n}3(p a.Y!=="q"){2.1D(a.Y)}3(p a.V!=="q"){2.1R(a.V)}3(p a.1E!=="q"){2.1G=a.1E}3(p a.1j!=="q"){2.N=a.1j}3(p a.1A!=="q"){2.19=a.1A}3(p a.18!=="q"){2.w=a.18}3(p a.A!=="q"){2.w=!a.A}3(p a.1l!=="q"){2.15=a.1l}3(2.4){2.1x()}};8.9.1S=6(a){2.M=a;3(2.4){3(2.z){r.s.u.W(2.z);2.z=t}3(!2.R){2.4.7.C=""}3(p a.1v==="q"){2.4.Q=2.I()+a}v{2.4.Q=2.I();2.4.1e(a)}3(!2.R){2.4.7.C=2.4.Z+"11";3(p a.1v==="q"){2.4.Q=2.I()+a}v{2.4.Q=2.I();2.4.1e(a)}}2.1t()}r.s.u.S(2,"2C")};8.9.1D=6(a){2.E=a;3(2.4){2.1x()}r.s.u.S(2,"1Q")};8.9.1R=6(a){2.X=a;3(2.4){2.4.7.V=a}r.s.u.S(2,"2z")};8.9.2y=6(a){2.w=!a;3(2.4){2.4.7.P=(2.w?"1b":"A")}};8.9.2w=6(){K 2.M};8.9.1C=6(){K 2.E};8.9.2v=6(){K 2.X};8.9.2u=6(){5 a;3((p 2.1F()==="q")||(2.1F()===t)){a=J}v{a=!2.w}K a};8.9.2t=6(){2.w=J;3(2.4){2.4.7.P="A"}};8.9.3b=6(){2.w=L;3(2.4){2.4.7.P="1b"}};8.9.2s=6(c,b){5 a=2;3(b){2.E=b.1C();2.14=r.s.u.2r(b,"1Q",6(){a.1D(2.1C())})}2.1O(c);3(2.4){2.1r()}};8.9.1u=6(){5 i;3(2.z){r.s.u.W(2.z);2.z=t}3(2.B){1o(i=0;i<2.B.1L;i++){r.s.u.W(2.B[i])}2.B=t}3(2.14){r.s.u.W(2.14);2.14=t}3(2.T){r.s.u.W(2.T);2.T=t}2.1O(t)};',62,202,"||this|if|div_|var|function|style|InfoBox|prototype||||||||||||||||typeof|undefined|google|maps|null|event|else|isHidden_|||closeListener_|visible|eventListeners_|width|parseInt|position_|boxStyle|pixelOffset_|yOffset|getCloseBoxImg_|false|return|true|content_|closeBoxURL_|currentStyle|visibility|innerHTML|fixedWidthSet_|trigger|contextListener_|maxWidth_|zIndex|removeListener|zIndex_|position|offsetWidth||px|right|left|moveListener_|enableEventPropagation_|document|alignBottom_|isHidden|infoBoxClearance_|top|hidden|addDomListener|setBoxStyle_|appendChild|opacity|new|bottom|stopPropagation|closeBoxURL|height|enableEventPropagation|boxStyle_|alignBottom|for|boxClass_|disableAutoPan|panBox_|boxClass|addClickHandler_|close|nodeType|defaultView|draw|content|disableAutoPan_|infoBoxClearance|pixelOffset|getPosition|setPosition|closeBoxMargin|getMap|closeBoxMargin_|maxWidth|pane_|cursor|push|length|click|mouseover|setMap|OverlayView|position_changed|setZIndex|setContent|borderRightWidth|borderLeftWidth|borderBottomWidth|borderTopWidth|getComputedStyle|Size|preventDefault|cancelBubble|getProjection|getBoxWidths_|offsetHeight|createInfoBoxDiv_|getBounds|getCloseClickHandler_|margin|pointer|relative|align|src|img|floatPane|domready|pane|infoBox|contextmenu|default|apply|touchmove|touchend|touchstart|dblclick|mouseup|mouseout|mousedown|addListener|open|show|getVisible|getZIndex|getContent|auto|setVisible|zindex_changed|overflow|LatLng|content_changed|setOptions|fromLatLngToDivPixel|getPanes|parentNode|onRemove|gif|documentElement|mapfiles|ownerDocument|div|createElement|en_us|absolute|intl|100|alpha|returnValue|removeChild|filter|com|hasOwnProperty|in|cssText|className|www|panBy|getCenter|http|fromLatLngToContainerPixel|arguments|getDiv|setCenter|2px|contains|hide|Map|instanceof|closeclick|firstChild".split("|"),0,{}));
(function(b){b.support.touch="ontouchend" in document;
if(!b.support.touch){return
}var c=b.ui.mouse.prototype,e=c._mouseInit,a;
function d(g,h){if(g.originalEvent.touches.length>1){return
}g.preventDefault();
var i=g.originalEvent.changedTouches[0],f=document.createEvent("MouseEvents");
f.initMouseEvent(h,true,true,window,1,i.screenX,i.screenY,i.clientX,i.clientY,false,false,false,false,0,null);
g.target.dispatchEvent(f)
}c._touchStart=function(g){var f=this;
if(a||!f._mouseCapture(g.originalEvent.changedTouches[0])){return
}a=true;
f._touchMoved=false;
d(g,"mouseover");
d(g,"mousemove");
d(g,"mousedown")
};
c._touchMove=function(f){if(!a){return
}this._touchMoved=true;
d(f,"mousemove")
};
c._touchEnd=function(f){if(!a){return
}d(f,"mouseup");
d(f,"mouseout");
if(!this._touchMoved){d(f,"click")
}a=false
};
c._mouseInit=function(){var f=this;
f.element.bind("touchstart",b.proxy(f,"_touchStart")).bind("touchmove",b.proxy(f,"_touchMove")).bind("touchend",b.proxy(f,"_touchEnd"));
e.call(f)
}
})(jQuery);
window.requireComponent=window.require;


!(function(){var GoogleMapStyle=[{featureType:"water",stylers:[{visibility:"simplified"},{color:"#81c9ea"}]},{featureType:"all",elementType:"labels.text.stroke",stylers:[{color:"#ffffff"}]},{featureType:"all",elementType:"labels.text.fill",stylers:[{color:"#393c3d"}]},{featureType:"road",elementType:"geometry.fill",stylers:[{color:"#ffffff"}]},{featureType:"road",elementType:"geometry.stroke",stylers:[{color:"#d1d1d1"}]},{featureType:"administrative",elementType:"labels.text.fill",stylers:[{color:"#393c3d"}]},{featureType:"administrative",elementType:"labels.text.stroke",stylers:[{color:"#ffffff"},{weight:4.5}]},{featureType:"poi.park",elementType:"geometry",stylers:[{color:"#b9db9a"}]}];
provide("map_search/GoogleMapStyle",GoogleMapStyle)
})();
!(function(){var MapPinPaths={primaryPin:new google.maps.MarkerImage("https://a1.muscache.com/airbnb/static/map_search/markers-a60404ecb490baee4c7b7014c87ab965.png",new google.maps.Size(22,30),new google.maps.Point(0,0)),viewedPrimaryPin:new google.maps.MarkerImage("https://a1.muscache.com/airbnb/static/map_search/markers-a60404ecb490baee4c7b7014c87ab965.png",new google.maps.Size(22,30),new google.maps.Point(0,40)),currentPrimaryPin:new google.maps.MarkerImage("https://a1.muscache.com/airbnb/static/map_search/markers-a60404ecb490baee4c7b7014c87ab965.png",new google.maps.Size(22,30),new google.maps.Point(53,0)),viewedCurrentPrimaryPin:new google.maps.MarkerImage("https://a1.muscache.com/airbnb/static/map_search/markers-a60404ecb490baee4c7b7014c87ab965.png",new google.maps.Size(22,30),new google.maps.Point(53,0)),wishListPin:new google.maps.MarkerImage("https://a1.muscache.com/airbnb/static/map_search/markers-a60404ecb490baee4c7b7014c87ab965.png",new google.maps.Size(31,27),new google.maps.Point(22,0)),currentWishListPin:new google.maps.MarkerImage("https://a1.muscache.com/airbnb/static/map_search/markers-a60404ecb490baee4c7b7014c87ab965.png",new google.maps.Size(31,27),new google.maps.Point(22,40)),addressPin:new google.maps.MarkerImage("https://a1.muscache.com/airbnb/static/map_search/markers-a60404ecb490baee4c7b7014c87ab965.png",new google.maps.Size(18,30),new google.maps.Point(52,39))};
provide("map_search/MapPinPaths",MapPinPaths)
})();
!(function(){var MapPinPaths=require("map_search/MapPinPaths");
var MapAddressPins=flight.component(function(){this.searchChanged=function(e,data){if(data.currentSearch.header.location!=this._location){if(this._addressPin){this._addressPin.setMap(null);
this._addressPin=undefined
}this._location=data.currentSearch.header.location;
this._geocoder.geocode({address:this._location},this.checkGeocoderResults.bind(this))
}};
this.checkGeocoderResults=function(results,status){if(status===google.maps.GeocoderStatus.OK&&results&&results.length&&results[0]&&results[0].types&&$.inArray("street_address",results[0].types)!=-1){this.dropAddressPin(results[0])
}};
this.dropAddressPin=function(place){this._addressPin=new google.maps.Marker({position:new google.maps.LatLng(place.geometry.location.ob,place.geometry.location.pb),map:this.attr.map,title:place.formatted_address,icon:MapPinPaths.addressPin,cursor:"grab"})
};
this.after("initialize",function(){this._geocoder=new google.maps.Geocoder();
this.on(".map-search","dataSearchResultsLoaded",this.searchChanged)
})
});
provide("map_search/MapAddressPins",MapAddressPins)
})();

!(function(){
	var withListings=function(){
		this.defaultAttrs({listingSelector:".listing",
						   listingContainerSelector:".search-result",
						   listingImageSelector:".listing-img",
						   nextSelector:".target-next",
						   prevSelector:".target-prev",
						   socialProofSelector:".social-proof",
						   imgContainerSelector:".listing-img-container"
						});
		this.nextListingImage=function(e,data){
				var $target=$(data.el),$img=$target.closest(this.attr.listingImageSelector).find("img");
				this.changeListingImage($target,$img,$img.data("current")+1)
				};
		
		this.prevListingImage=function(e,data){
				var $target=$(data.el),$img=$target.closest(this.attr.listingImageSelector).find("img");
				this.changeListingImage($target,$img,$img.data("current")-1)
				};
				
		this.changeListingImage=function($target,$img,newIndex){
				var $parent=$img.parents(this.attr.imgContainerSelector);
				if(newIndex>=$img.data("urls").length){
					newIndex=0
				}else{
					if(newIndex<0){
						newIndex=$img.data("urls").length-1
					}
				}
				$parent.addClass("loading");
				
				$img.one("load",function(){
					$parent.removeClass("loading")
				});
				
				$img.attr("src",$img.data("urls")[newIndex]);

				$img.data("current",newIndex);
				
				if(!$img.data("preloaded")){
					$img.data("urls").forEach(function(url){
						(new Image()).src=url
					});
					
					$img.data("preloaded",true)
				}
				
				this.hideSocialProof($target.closest(this.attr.listingSelector))
		};
		
		this.hideSocialProof=function($listing){
			var $socialProof=$listing.find(this.attr.socialProofSelector),timeoutId=window.setTimeout(function(){$socialProof.removeClass("hide")
				},5000);
			$socialProof.addClass("hide");
			window.clearTimeout($socialProof.data("hideTimeoutId"));
			$socialProof.data("hideTimeoutId",timeoutId)
		};

		this.clearListings=function(){this.select("listingSelector").remove()};
		
		this.initWishlistButtons=function(){Airbnb.WishListButton.init({placement:"map_search"})};
		
		this.updateWishlistButtons=function(){Airbnb.WishListButton.update()};
		
		//display all images; 
		this.displayImages=function($container){
			console.debug("display image processing ...");
			$container.find(this.attr.listingImageSelector).find("img").each(function(){
				$(this).attr("src",$(this).data("urls")[0]).removeClass("hide")
			})
		};
		
		this.isTouchDevice=function(){
			var userAgent=navigator.userAgent;
			return(userAgent.indexOf("iPhone")!==-1||userAgent.indexOf("iPad")!==-1||userAgent.indexOf("Android")!==-1)
		};
		
		this.after("initialize",function(){
			this.on("click",{nextSelector:this.nextListingImage,prevSelector:this.prevListingImage})})
		};
		
		provide("map_search/withListings",withListings)
	})();
!(function(){var SearchHeader=flight.component(function(){this.defaultAttrs({locationSelector:".location",searchButtonSelector:".search-button",formSelector:"form"});
this.triggerHeaderFieldsChanged=function(e){e.preventDefault();
var location=this.select("locationSelector").val();
if(!location){return
}this.trigger(".map-search","uiHeaderFieldsChanged",{location:location})
};
this.after("initialize",function(){new google.maps.places.Autocomplete(this.select("locationSelector").get(0),{types:["geocode"]});
this.on("submit",{formSelector:this.triggerHeaderFieldsChanged})
})
});
provide("map_search/SearchHeader",SearchHeader)
})();

!(function(){
	var MapPinPaths=require("map_search/MapPinPaths"),
		withListings=require("map_search/withListings"),
		MapAddressPins=require("map_search/MapAddressPins"),
		GoogleMapStyle=require("map_search/GoogleMapStyle");
	
	var Map=flight.component(function(){this.defaultAttrs({mapCanvasSelector:".map-canvas",closeInfoBoxSelector:".close-box",infoBoxSelector:".infoBox",autoRefreshPanelSelector:".map-auto-refresh",refreshButtonSelector:".map-manual-refresh",autoRefreshCheckboxSelector:".map-auto-refresh-checkbox",mapRefreshControlsSelector:".map-refresh-controls",pixelSideBorder:20,pixelTopBorder:40,pixelBottomBorder:30});
this.plotResults=function(e,data){if(!data.listingData.length){return
}this.closeInfoWindow();
var $listingNodes=data.$listings,mapBounds=new google.maps.LatLngBounds();
if(data.currentSearch.source==="initial"&&data.currentSearch.map.search_by_map){var mapData=data.currentSearch.map,swLatLng=new google.maps.LatLng(mapData.sw_lat,mapData.sw_lng),neLatLng=new google.maps.LatLng(mapData.ne_lat,mapData.ne_lng);
mapBounds=new google.maps.LatLngBounds(swLatLng,neLatLng);
if(data.currentSearch.map.zoom){this._map.setCenter(mapBounds.getCenter());
this._map.setZoom(parseInt(data.currentSearch.map.zoom,10))
}else{this._map.fitBounds(mapBounds)
}}this.clearMap();
data.listingData.forEach(function(listing,i){var position=new google.maps.LatLng(listing.lat,listing.lng),isWishlisted=this.wishlists&&this.wishlists.hasListing(listing.id),$close=$('<div class="close-box">&times;</div>'),$infoContent,marker=new google.maps.Marker({position:position,map:this._map,title:listing.name.toString(),icon:isWishlisted?MapPinPaths.wishListPin:MapPinPaths.primaryPin});
mapBounds.extend(position);
$infoContent=$listingNodes.find(".listing[data-id="+listing.id+"]").clone().prepend($close);
if(data.currentSearch.source==="initial"&&data.currentSearch.page===1){$(window).one("load",(function(){this.displayImages($infoContent)
}).bind(this))
}else{this.displayImages($infoContent)
}marker.infoContent=$infoContent.get(0);
google.maps.event.addListener(marker,"click",(function(){this.trigger("uiOpenInfoWindow",{marker:marker,map:this._map});
if(marker.icon===MapPinPaths.primaryPin){marker.setIcon(MapPinPaths.viewedPrimaryPin)
}}).bind(this));
this.currentMarkers[listing.id]=marker
},this);
this.updateWishlistButtons();
if(data.currentSearch.map.search_by_map){this.select("autoRefreshPanelSelector").removeClass("hide");
this.select("refreshButtonSelector").addClass("hide")
}else{this.detachZoomListener();
if(data.listingData.length){this._map.fitBounds(mapBounds)
}else{var geocoder=new google.maps.Geocoder();
geocoder.geocode({address:data.currentSearch.header.location},(function(results,status){if(status===google.maps.GeocoderStatus.OK){this._map.fitBounds(results[0].geometry.viewport)
}}).bind(this))
}if(this._map.getBounds()){window.setTimeout(this.attachZoomListener.bind(this),1000)
}}};
this.affectMarker=function(e,data){this.currentMarkers[data.id].setZIndex(google.maps.Marker.MAX_ZINDEX+1);
switch(this.currentMarkers[data.id].icon){case MapPinPaths.primaryPin:this.currentMarkers[data.id].setIcon(MapPinPaths.currentPrimaryPin);
break;
case MapPinPaths.viewedPrimaryPin:this.currentMarkers[data.id].setIcon(MapPinPaths.viewedCurrentPrimaryPin);
break;
case MapPinPaths.wishListPin:this.currentMarkers[data.id].setIcon(MapPinPaths.currentWishListPin);
break
}};
this.settleMarker=function(e,data){switch(this.currentMarkers[data.id].icon){case MapPinPaths.currentPrimaryPin:this.currentMarkers[data.id].setIcon(MapPinPaths.primaryPin);
break;
case MapPinPaths.viewedCurrentPrimaryPin:this.currentMarkers[data.id].setIcon(MapPinPaths.viewedPrimaryPin);
break;
case MapPinPaths.currentWishListPin:this.currentMarkers[data.id].setIcon(MapPinPaths.wishListPin);
break
}};
this.addWishlistMarker=function(e,data){this.currentMarkers[data.id].setIcon(MapPinPaths.wishListPin)
};
this.removeWishlistMarker=function(e,data){if(data.selectedIds.length===0){this.currentMarkers[data.id].setIcon(MapPinPaths.viewedPrimaryPin)
}};
this.loadWishlistsCollection=function(e,data){this.wishlists=data.wishlists;
Object.keys(this.currentMarkers).forEach(function(id){if(this.wishlists.hasListing(id)){this.addWishlistMarker({},{id:id})
}},this)
};
this.openInfoWindow=function(e,data){this._info.close();
this._info.setContent(data.marker.infoContent);
this._info.open(data.map,data.marker)
};
this.closeInfoWindow=function(){this._info.close();
this._map.setOptions({disableDoubleClickZoom:false,draggable:true})
};
this.onInfoWindow=function(){this._map.setOptions({disableDoubleClickZoom:true,draggable:false});
google.maps.event.clearListeners(this._map,"click")
};
this.offInfoWindow=function(){this._map.setOptions({disableDoubleClickZoom:false,draggable:true});
google.maps.event.addListener(this._map,"click",(function(){this.closeInfoWindow()
}).bind(this))
};
this.attachZoomListener=function(){if(this._zoomListener){google.maps.event.removeListener(this._zoomListener)
}this._zoomListener=google.maps.event.addListener(this._map,"zoom_changed",(this.mapMoved).bind(this))
};
this.detachZoomListener=function(){google.maps.event.removeListener(this._zoomListener)
};
this.toggleAutoRefresh=function(e,data){this._autoRefresh=$(data.el).prop("checked");
if(window.localStorage){if(this._autoRefresh){delete window.localStorage.magellanManualRefresh
}else{window.localStorage.magellanManualRefresh="1"
}}};
this.mapMovedEnough=function(){if(this._zoom!==this._map.zoom){return true
}var northEast=this._map.getBounds().getNorthEast(),southWest=this._map.getBounds().getSouthWest(),deltaLat=Math.abs(this._sw.lat()-southWest.lat()),deltaLng=Math.abs(this._sw.lng()-southWest.lng()),height=northEast.lat()-southWest.lat(),width=northEast.lng()-southWest.lng(),threshold=0.05;
height+=deltaLng;
width+=deltaLat;
return(deltaLat*width+deltaLng*height-deltaLat*deltaLng)/(width*height)>threshold
};
this.mapMoved=function(){if(this.mapMovedEnough()){if(this._autoRefresh){this.refreshMap()
}else{this.select("autoRefreshPanelSelector").addClass("hide");
this.select("refreshButtonSelector").removeClass("hide");
this.trigger("uiMapBoundsChangedWithoutAutoRefresh",this.getMapBounds())
}this._sw=this._map.getBounds().getSouthWest();
this._zoom=this._map.zoom
}};
this.clearMap=function(){this.clearListings();
Object.keys(this.currentMarkers).forEach(function(id){this.currentMarkers[id].setMap(null);
delete this.currentMarkers[id]
},this)
};
this.getMapBounds=function(){var pixelWidth=this.select("mapCanvasSelector").width(),mapWidth=this._map.getBounds().getNorthEast().lng()-this._map.getBounds().getSouthWest().lng(),mapSideBorder,mapTopBorder,mapBottomBorder,sw_lng,ne_lng,zoom;
if(mapWidth<0){mapWidth+=360
}mapSideBorder=(this.attr.pixelSideBorder/pixelWidth)*mapWidth;
mapTopBorder=(this.attr.pixelTopBorder/pixelWidth)*mapWidth;
mapBottomBorder=(this.attr.pixelBottomBorder/pixelWidth)*mapWidth;
sw_lng=this._map.getBounds().getSouthWest().lng()+mapSideBorder;
if(sw_lng>180){sw_lng-=360
}ne_lng=this._map.getBounds().getNorthEast().lng()-mapSideBorder;
if(ne_lng<-180){ne_lng+=360
}zoom=this._map.zoom;
return{sw_lat:this._map.getBounds().getSouthWest().lat()+mapBottomBorder,sw_lng:sw_lng,ne_lat:this._map.getBounds().getNorthEast().lat()-mapTopBorder,ne_lng:ne_lng,zoom:zoom,search_by_map:true}
};
this.refreshMap=function(){this.trigger("uiMapBoundsChanged",this.getMapBounds())
};
this.wrapLng=function(unwrappedLng){if(unwrappedLng<0){return((unwrappedLng-180)%360)+180
}else{return((unwrappedLng+180)%360)-180
}};
this.after("initialize",function(){var usingCustomGmapsStyle=true;
this._map=new google.maps.Map(this.select("mapCanvasSelector").get(0),{center:new google.maps.LatLng(37.768942,-122.402785),mapTypeId:google.maps.MapTypeId.ROADMAP,disableDefaultUI:true,zoomControl:true,zoomControlOptions:{style:google.maps.ZoomControlStyle.SMALL,position:google.maps.ControlPosition.TOP_LEFT},styles:GoogleMapStyle,maxZoom:18});
this._info=new InfoBox({closeBoxURL:"",pane:"floatPane",alignBottom:true,infoBoxClearance:new google.maps.Size(15,50),enableEventPropagation:true,pixelOffset:new google.maps.Size(-134,-30),zIndex:330});
this._autoRefresh=!(window.localStorage&&window.localStorage.magellanManualRefresh);
if(!this._autoRefresh){this.select("autoRefreshCheckboxSelector").prop("checked",false)
}if(this.isTouchDevice()){this.$node.addClass("touch")
}this.select("autoRefreshPanelSelector").removeClass("hide");
google.maps.event.addListener(this._map,"click",(function(){this.closeInfoWindow()
}).bind(this));
google.maps.event.addListenerOnce(this._map,"bounds_changed",(function(){this._sw=this._map.getBounds().getSouthWest();
this._ne=this._map.getBounds().getNorthEast();
this._zoom=this._map.zoom;
this.attachZoomListener();
this.$node.find(".gm-style").removeClass("gm-style")
}).bind(this));
google.maps.event.addListener(this._map,"bounds_changed",(function(){var center=this._map.getCenter(),zoom=this._map.getZoom(),lat=center.lat(),lng=this.wrapLng(center.lng());
if(lat>34.202338942225985&&lat<38.49650860060402&&lng>125.84092141017254&&lng<129.73008156642254&&zoom>6){if(usingCustomGmapsStyle){this._map.setOptions({styles:undefined});
usingCustomGmapsStyle=false
}}else{if(!usingCustomGmapsStyle){this._map.setOptions({styles:GoogleMapStyle});
usingCustomGmapsStyle=true
}}}).bind(this));
google.maps.event.addListener(this._map,"dragend",this.mapMoved.bind(this));
this.currentMarkers={};
this.on(".map-search","dataSearchResultsLoaded",this.plotResults);
this.on("uiOpenInfoWindow",this.openInfoWindow);
this.on(".map-search","uiListingFocused",this.affectMarker);
this.on(".map-search","uiListingBlurred",this.settleMarker);
this.on(document,"addListing.wishlists",this.addWishlistMarker);
this.on(document,"removeListing.wishlists",this.removeWishlistMarker);
this.on(document,"initialize.wishlists",this.loadWishlistsCollection);
this.on("mouseover",{infoBoxSelector:this.onInfoWindow});
this.on("mouseout",{infoBoxSelector:this.offInfoWindow});
this.on("click",{refreshButtonSelector:this.refreshMap,closeInfoBoxSelector:this.closeInfoWindow,autoRefreshCheckboxSelector:this.toggleAutoRefresh});
MapAddressPins.attachTo(this.$node,{map:this._map})
})
},withListings);
provide("map_search/Map",Map)
})();
!(function(){
	var withListings=require("map_search/withListings");
	var SearchResults=flight.component(function(){
	
		this.render=function(e,data){
		var $container=this.$node.find(".outer-listings-container");
		if(data.currentSearch.source!=="initial"){
			this.displayImages(data.$listings);
			$container.html(data.$listings);
			this.$node.removeClass("loading");
		
			this.trigger("uiSearchResultsRendered");
			this.updateWishlistButtons()
		}
	};

	this.setLoading=function(e,data){
		this.$node.addClass("loading")
	};
	
	this.triggerListingFocused=function(e,data){
		this.trigger("uiListingFocused",{id:$(data.el).data("id")})
	};
	
	this.triggerListingBlurred=function(e,data){
		this.trigger("uiListingBlurred",{id:$(data.el).data("id")})
	};
	
	this.after("initialize",function(){
		if(this.isTouchDevice()){
			this.$node.addClass("touch")
		}
		
		$(window).one("load",(function(){
			this.displayImages(this.$node)
		}).bind(this));
		
		this.initWishlistButtons();
		
		this.on(".map-search","dataSearchResultsLoading",this.setLoading);
		this.on(".map-search","dataSearchResultsLoaded",this.render);
		this.on("mouseover",{listingSelector:this.triggerListingFocused});
		this.on("mouseout",{listingSelector:this.triggerListingBlurred})
	})
	},withListings);

	provide("map_search/SearchResults",SearchResults)
})();

!(function(){
	var Filters=flight.component(function(){
		this.defaultAttrs({
			filtersSectionSelector:".filters-section",
			iconToggleSelector:".icon-toggle",
			searchButtonSelector:".search-button",
			tripFormSelector:".trip-form",
			locationSelector:".location",
			checkinSelector:".checkin",
			checkoutSelector:".checkout",
			guestsSelector:".guest-select",
			priceRangeSliderSelector:".price-range-slider",
			moreFiltersSelector:".filters-more",
			moreButtonSelector:".show-more",
			roomTypeGroupSelector:".room-type-group",
			expTypeGroupSelector:".exp-type-group",
			socialConnectionsSelector:".social-connections",
			employeeHostSelector:".employee-host",
			sizeSelector:".size-group select",
			checkboxGroupSelector:".checkbox-group",
			keywordsSelector:"input[name=keywords]",
			languageSelector:".languages",
			propertySelector:".property_type_id",
			amenitiesSelector:".hosting_amenities",
			neighborhoodsSelector:".neighborhoods",
			introFilterSelector:".intro-filter .icon-toggle, .intro-filter .price-range-slider, .intro-filter .checkbox input"});
		
		this.toggleSelected=function(e,data){$(data.el).toggleClass("selected")};
		
		this.toggleMoreFilters=function(e,data){
			var $section=$(data.el).closest(this.attr.filtersSectionSelector);
			$section.find(this.attr.moreFiltersSelector).toggleClass("hide");
			$section.find(this.attr.moreButtonSelector).find("span").toggleClass("hide")
		};

		this.initPriceSlider=function(options){
			var $slider=this.select("priceRangeSliderSelector"),monthly=options&&options.monthly,minPriceName=monthly?"minPriceMonthly":"minPriceDaily",maxPriceName=monthly?"maxPriceMonthly":"maxPriceDaily";
			$slider.data("monthly",monthly).data("minPrice",$slider.data(minPriceName)).data("maxPrice",$slider.data(maxPriceName));
	
			$slider.find(".min-price .price").html($slider.data("minPrice"));
	
			$slider.find(".max-price .price").html($slider.data("maxPrice"));
	
			var updateLabels=function(e,ui){
				$slider.find(".min-price .price").html(ui.values[0]);
				$slider.find(".max-price .price").html(ui.values[1])
			};

			$slider.slider({
				range:true,values:[$slider.data("minPrice"),$slider.data("maxPrice")],min:$slider.data("minPrice"),max:$slider.data("maxPrice"),step:5,slide:updateLabels,change:function(e,ui){updateLabels(e,ui);
				$slider.trigger("click")
				}})
		};

		this.loadBootstrapData=function(e,data){
			if(data.currentSearch.source!=="initial"){
				return
				}
			var currentFilters=data.currentSearch.filters,roomTypeGroup,expTypeGroup;
			
			this.select("tripFormSelector").airbnbInputDateSpan({
				onSuccess:this.introFiltersChanged.bind(this),onReset:this.introFiltersChanged.bind(this)
			});
			
			if(currentFilters.checkin){
				this.select("checkinSelector").val(currentFilters.checkin)
			}
			
			if(currentFilters.checkout){
				this.select("checkoutSelector").val(currentFilters.checkout)
			}
			
			if(currentFilters.guests){
				this.select("guestsSelector").find('[value="'+currentFilters.guests+'"]').prop("selected",true)
			}
			
			if(currentFilters.room_types){
				roomTypeGroup=this.select("roomTypeGroupSelector");
				currentFilters.room_types.forEach(function(type){
					roomTypeGroup.find('[data-name="'+type+'"]').addClass("selected")
				})
			}
			
			this.initPriceSlider({monthly:data.perMonth});
			
			if(currentFilters.price_min){
				this.select("priceRangeSliderSelector").slider("values",0,currentFilters.price_min)
			}
			
			if(currentFilters.price_max){
				this.select("priceRangeSliderSelector").slider("values",1,currentFilters.price_max)
			}
			
			this.select("sizeSelector").each(function(i,elem){
				var $this=$(this),value=currentFilters[$this.attr("name")];
				
				if(value){$this.val(value)}
			});
			
			if(currentFilters.exp_types){
				expTypeGroup=this.select("expTypeGroupSelector");
				currentFilters.exp_types.forEach(function(type){
					expTypeGroup.find('[data-name="'+type+'"]').addClass("selected")
				})
				
			}
			
			if(currentFilters.connected){
				this.select("socialConnectionsSelector").find(this.attr.iconToggleSelector).addClass("selected")
			}
			
			if(currentFilters.empHost){
				this.select("employeeHostSelector").find(this.attr.iconToggleSelector).addClass("selected")
			}
			
			["neighborhoods","languages","hosting_amenities","property_type_id"].forEach(function(category){
				var $section=this.select("checkboxGroupSelector").filter('[data-name="'+category+'"]');
				
				currentFilters[category]&&currentFilters[category].forEach(function(id){
					$section.find('[value="'+id+'"]').prop("checked",true)
				})
			},this);
			
			this.hideEmptyFilters();
			
			if(currentFilters.keywords){
				this.select("keywordsSelector").val(currentFilters.keywords)
			}
			
			this.lastFilterData=this.processFilters()
		};//end of load bootstrap data
		
		this.updateFilters=function(e,data){
			var $priceSlider=this.select("priceRangeSliderSelector"),newFilters;
			["neighborhoods","languages","hosting_amenities","property_type_id"].forEach(function(category){
				data.currentFilters[category]&&data.currentFilters[category].forEach(function(id){
					data.$filters.filter('[data-name="'+category+'"]').find('[value="'+id+'"]').prop("checked",true)
				})
			},this);
			
			newFilters=data.$filters.filter(this.attr.checkboxGroupSelector);
			
			this.select("checkboxGroupSelector").wrapAll("<div>").parent().replaceWith(newFilters);
			
			this.hideEmptyFilters()
		};
		
		this.hideEmptyFilters=function(){
			this.select("checkboxGroupSelector").each(function(){
				var $this=$(this);
			
			if(!$this.find(".checkbox").length){
				$this.hide()
			}else{
				if(!$this.find(".filters-more .checkbox").length){$this.find(".show-more").hide()
				}
			}
			})
		};
		
		this.processFilters=function(){
			var filterData={},
			checkin=this.select("checkinSelector").val(),
			checkout=this.select("checkoutSelector").val(),
			isMonthly=this.isMonthly(checkin,checkout),
			guests=parseInt(this.select("guestsSelector").val()),
			$slider=this.select("priceRangeSliderSelector"),
			keywords=this.select("keywordsSelector").val(),
			$activeRoomTypes=this.select("roomTypeGroupSelector").find(this.attr.iconToggleSelector).filter(".selected"),
			$activeExpTypes=this.select("expTypeGroupSelector").find(this.attr.iconToggleSelector).filter(".selected"),
			$socialConnections=this.select("socialConnectionsSelector").find(this.attr.iconToggleSelector).filter(".selected"),
			$employeeHost=this.select("employeeHostSelector").find(this.attr.iconToggleSelector).filter(".selected");
			
			if(checkin){
				filterData.checkin=checkin
			}
			
			if(checkout){
				filterData.checkout=checkout
			}
			
			if(guests&&guests>1){
				filterData.guests=guests
			}
			
			if($activeRoomTypes.length){
				filterData.room_types=$activeRoomTypes.map(function(i,elem){
					return $(this).data("name")
				}).get()
			}
			
			if(isMonthly===$slider.data("monthly")){
				if($slider.slider("values")[0]>$slider.data("minPrice")){
					filterData.price_min=$slider.slider("values")[0]
				}
				
				if($slider.slider("values")[1]<$slider.data("maxPrice")){
					filterData.price_max=$slider.slider("values")[1]
				}
			}else{
				$slider.slider("destroy");
			
				this.initPriceSlider({monthly:isMonthly})
			}
			
			this.select("sizeSelector").each(function(i,elem){
				var $this=$(this),num=parseFloat($this.val());
				
				if(num>0){filterData[$this.attr("name")]=num}
			});
			
			
			if($activeExpTypes.length){
				filterData.exp_types=$activeExpTypes.map(function(i,elem){return $(this).data("name")}).get()
			}
			
			if($socialConnections.length){
				filterData.connected=true
			}
			
			if($employeeHost.length){
				filterData.empHost=true
			}
			
			this.select("checkboxGroupSelector").each(function(i,elem){
				var $this=$(this),selected=$this.find(":checked").map(function(i,elem){
					return $(this).val()
				}).get();
			
				if(selected.length){filterData[$this.data("name")]=selected}
			});
			
			
			if(keywords){
				filterData.keywords=keywords
			}
			
			return filterData
		};//end of processFilter;
		
		this.triggerFiltersChanged=function(e){
			var filterData=this.processFilters(),
			filtersChanged=!_.isEqual(filterData,this.lastFilterData);
			
			this.trigger("uiFiltersChanged",{filterData:filterData,changed:filtersChanged});
			
			this.lastFilterData=filterData
		};
		
		this.introFiltersChanged=function(e){
			if(this.$node.hasClass("collapse")){this.triggerFiltersChanged(e)}
		};
		
		this.keywordFormSubmitted=function(e){
			this.triggerFiltersChanged(e);
			e.preventDefault()
		};
		
		this.resetFilter=function(e,data){
			switch(data.selectedFilter){
				case"room_types":
					this.select("roomTypeGroupSelector").find(this.attr.iconToggleSelector).removeClass("selected");
					this.triggerFiltersChanged();
					break;
				case"exp_types":
					this.select("expTypeGroupSelector").find(this.attr.iconToggleSelector).removeClass("selected");
					this.triggerFiltersChanged();
					break;
				case"price":
					var $slider=this.select("priceRangeSliderSelector");
					$slider.slider("values",0,$slider.slider("option","min"));
					$slider.slider("values",1,$slider.slider("option","max"));
					break;
				case"size":
					this.select("sizeSelector").val("");
					this.triggerFiltersChanged();
					break;
				case"connected":
					this.select("socialConnectionsSelector").find(this.attr.iconToggleSelector).removeClass("selected");
					this.triggerFiltersChanged();
					break;
				case"empHost":
					this.select("employeeHostSelector").find(this.attr.iconToggleSelector).removeClass("selected");
					this.triggerFiltersChanged();
					break;
				case"languages":
					this.select("languageSelector").find("input").prop("checked",false);
					this.triggerFiltersChanged();
					break;
				case"property_type_id":
					this.select("propertySelector").find("input").prop("checked",false);
					this.triggerFiltersChanged();
					break;
				case"hosting_amenities":
					this.select("amenitiesSelector").find("input").prop("checked",false);
					this.triggerFiltersChanged();
					break;
				case"neighborhoods":
					this.select("neighborhoodsSelector").find("input").prop("checked",false);
					this.triggerFiltersChanged();
					break;
				case"keywords":
					this.select("keywordsSelector").val("");
					this.triggerFiltersChanged();
					break
			}
		};//end of resetFilter;

		this.isMonthly=function(start,end){
			if(!start||!end){
				return false
			}
			
			var startDate=$.datepicker.parseDate(start),endDate=$.datepicker.parseDate(end);
			
			return((endDate-startDate)/86400000)>=28
		};
		
		this.scrollView=function(e,data){
			if(Math.abs(window.orientation)===90){
				window.setTimeout(function(){$("body").scrollTop(data.el.offset().top)},250)
			}
		};
		
		this.chooseExperienceTypeDisplay=function(e,data){
			if(data.currentSearch.source==="initial"){
				this._expTypes=data.trebuchet_experience_types
			}
			var market=data.geo&&data.geo.market,showExpTypes=(market==="Dublin"||market==="London")&&this._expTypes;
			
			this.select("expTypeGroupSelector").toggleClass("hide",!showExpTypes)
		};
		
		this.after("initialize",function(){
			this.on(".map-search","dataSearchResultsLoaded",this.loadBootstrapData);
		
			this.on(".map-search","dataSearchResultsLoaded",this.chooseExperienceTypeDisplay);
		
			this.on(".map-search","dataFiltersLoaded",this.updateFilters);
		
			this.on(".map-search","uiFilterReset",this.resetFilter);
		
			this.on("click",{
				iconToggleSelector:this.toggleSelected,
				searchButtonSelector:this.triggerFiltersChanged,
				introFilterSelector:this.introFiltersChanged,
				moreButtonSelector:this.toggleMoreFilters});
			
			this.on(this.select("keywordsSelector").closes qt("form"),"submit",this.keywordFormSubmitted);
		
			if(navigator.userAgent.indexOf("iPad")!==-1){
				this.on("beforeShow.datepicker",this.scrollView)
			}
		
			this.on("change",{guestsSelector:this.introFiltersChanged})
		})
	});
provide("map_search/Filters",Filters)
})();

!(function(){
	var SidebarHeader=flight.component(function(){
		this.defaultAttrs({showFiltersSelector:".show-filters",
						   resultsCountSelector:".results-count",
						   appliedFilterGroupSelector:".applied-filters",
						   appliedFilterSelector:".applied-filters li",});
		this.filtersButtonClicked=function(){
			this.$node.addClass("hide");
			this.trigger("uiFiltersButtonClicked")
		};
		
		this.show=function(e,data){
			this.$node.removeClass("hide")
		};
		
		this.updateAppliedFilters=function(e,data){
			var filters=data.currentSearch.filters;
			this.$appliedFilters.addClass("hide");
			$.each(filters,(function(key){
				if(key==="min_bedrooms"||key==="min_bathrooms"||key==="min_beds"){
					this.select("appliedFilterGroupSelector").find('li[data-applied-filter="size"]').removeClass("hide")
				}else{
					if(key==="price_min"||key==="price_max"){
						this.select("appliedFilterGroupSelector").find('li[data-applied-filter="price"]').removeClass("hide")
					}else{
						this.select("appliedFilterGroupSelector").find('li[data-applied-filter="'+key+'"]').removeClass("hide")
					}
				}
			}).bind(this))
		};
		
		this.removeAppliedFilter=function(e,data){
			var selectedFilter=$(data.el).data("applied-filter");
			this.trigger("uiFilterReset",{selectedFilter:selectedFilter});
			$(data.el).removeClass("applied")
		};
		
		this.updateResultsCount=function(e,data){
			this.select("resultsCountSelector").html(data.results_count_string)
		};
		
		this.after("initialize",function(){
			this.$appliedFilters=this.select("appliedFilterSelector").not(".results-count-item");
			this.on("click",{showFiltersSelector:this.filtersButtonClicked,appliedFilterSelector:this.removeAppliedFilter,});
			this.on(".map-search","dataResultsLoaded",this.updateResultsCount);
			this.on(".map-search","dataSearchResultsLoaded",this.updateAppliedFilters);
			this.on(".map-search","uiFiltersChanged",this.show)
		})
	});
	
	provide("map_search/SidebarHeader",SidebarHeader)
})();



!(function(){
	var Filters=require("map_search/Filters"),
	SearchResults=require("map_search/SearchResults"),
	SidebarHeader=require("map_search/SidebarHeader");

	var Sidebar=flight.component(function(){
		this.defaultAttrs({
			filtersSelector:".filters",
			searchResultsSelector:".search-results",
			sidebarHeaderSelector:".sidebar-header",
			sidebarHeaderPlaceholderSelector:".sidebar-header-placeholder",
			scrollPositionStorageKey:"magellanScrollPosition"});
		
		this.openFiltersPanel=function(){
			this.select("filtersSelector").removeClass("hide").removeClass("collapse")
		};
		
		this.closeFiltersPanel=function(e,data){
			var $filters=this.select("filtersSelector");
			$filters.addClass("collapse");
			if(!data.changed&&this._topPage&&this._topPage>1){
				$filters.addClass("hide")
			}};
			
		this.initSidebarHeader=function(){
			var $searchResults=this.select("searchResultsSelector"),
			$body=$(document.body),
			$sidebarHeader=this.select("sidebarHeaderSelector"),
			$sidebarHeaderPlaceholder=this.select("sidebarHeaderPlaceholderSelector");
				
			var prevIsStuck=false;
			this.$node.on("scroll",(function(){
					var searchResultsPos=$searchResults.offset();
					var isStuck=(searchResultsPos.top<=100);
					if(isStuck!==prevIsStuck){prevIsStuck=isStuck;
					$body.toggleClass("stuck",isStuck);
					if(isStuck){
						$sidebarHeader.insertBefore(this.$node)
					}else{
						$sidebarHeader.insertBefore($sidebarHeaderPlaceholder)
					}}}).bind(this))
		};
			
			
		this.updatePaginationButtons=function(data){
				$(".results-footer").replaceWith(data.pagination_html);
				$(".pagination").find("a").each(function(){
					var _this=$(this);
					_this.click(function(e){
						e.preventDefault();
						var newPage=parseInt(_this.attr("target"),10);
						_this.trigger("uiPageRequested",{page:newPage});
						return false
					})
				})
		};
			
		this.scrollToTop=function(){this.$node.scrollTop(0)};
			
		this.getScrollPos=function(){return this.$node.scrollTop()};
			
		this.updateCountAndPagination=function(e,data){
				this.select("resultsCountSelector").html(data.results_count_string);
				this.updatePaginationButtons(data);
				if(data.source==="initial"){this.restoreScrollPosition()}
		};
			
		this.restoreScrollPosition=function(){
				var savedPosition=amplify.store(this.attr.scrollPositionStorageKey);
				if(savedPosition&&savedPosition.url===window.location.href){
					this.$node.scrollTop(savedPosition.pos)
				}
		};
			
		this.after("initialize",function(){
				Filters.attachTo(".filters");
			
				SearchResults.attachTo(".search-results");
			
				SidebarHeader.attachTo(".sidebar-header");
			
				$(window).on("unload",(function(){amplify.store(this.attr.scrollPositionStorageKey,{pos:this.$node.scrollTop(),url:window.location.href},{expires:30*60*1000})}).bind(this));
			
				this.initSidebarHeader();
			
				this.on(".map-search","dataResultsLoaded",this.updateCountAndPagination);
			
				this.on("uiSearchResultsRendered",this.scrollToTop);
			
				this.on(".map-search","uiFiltersButtonClicked",this.openFiltersPanel);
			
				this.on("uiFiltersChanged",this.closeFiltersPanel)
		})
	});//end of component sideBar
	
	provide("map_search/Sidebar",Sidebar)
})();


!(function(){var History=flight.component(function(){this.updateLocation=function(e,data){if(data.currentSearch.source==="initial"){return
}var paramsForUrl={},path=window.location.pathname,paramString="";
$.extend(paramsForUrl,data.currentSearch.filters,data.currentSearch.map,data.currentSearch.header,data.currentSearch.developer);
if(data.currentSearch.source==="page"&&data.currentSearch.page>1){$.extend(paramsForUrl,{page:data.currentSearch.page})
}if(paramsForUrl.location){path=this.stripLocationFromPath(path);
paramString=Airbnb.SearchUtils.location_to_url_parameter(paramsForUrl.location);
delete paramsForUrl.location
}if(Object.keys(paramsForUrl).length){paramString+="?"+$.param(paramsForUrl)
}if(this.hasPushState){this.historyId++;
window.history.pushState({id:this.historyId},null,path+paramString)
}else{window.location.hash="!"+paramString
}};
this.stripLocationFromPath=function(path){return"/"+path.split("/")[1]+"/"
};
this.getLocationFromPath=function(path){return path.split("/")[2]
};
this.after("initialize",function(){if(window.location.hash&&window.location.hash.indexOf("!")!==-1){window.location.replace(this.stripLocationFromPath(window.location.pathname)+window.location.hash.replace("#!",""))
}this.hasPushState=(typeof window.history.pushState==="function");
if(this.hasPushState){window.addEventListener("popstate",(function(e){if(e.state&&e.state.id!==this.historyId){window.location=window.location
}}).bind(this));
if(window.history.state){this.historyId=window.history.state.id
}else{this.historyId=1;
window.history.replaceState({id:this.historyId},null,window.location)
}}this.on("dataSearchResultsLoading",this.updateLocation)
})
});
provide("map_search/History",History)
})();
!(function(){var FooterToggle=flight.component(function(){this.defaultAttrs({footerContainerSelector:"#footer"});
this.toggleFooter=function(){this.$footer.slideToggle("fast",(function(){this.$node.toggleClass("open")
}).bind(this))
};
this.after("initialize",function(){this.$footer=$(this.attr.footerContainerSelector);
this.on("click",this.toggleFooter)
})
});
provide("map_search/FooterToggle",FooterToggle)
})();
!(function(){var Disaster=flight.component(function(){this.defaultAttrs({disasterNameSelector:".disaster-name",disasterGuestButtonSelector:".disaster-guest",disasterHostButtonSelector:".disaster-host"});
this.checkDisaster=function(e,searchData){$.ajax({type:"GET",url:"/disaster/lookup",dataType:"json",data:{lat:searchData.center_lat,lng:searchData.center_lng},success:(function(data){if(data.disaster){this.displayDisasterRooster(data.disaster.disaster,searchData)
}else{this.hideDisasterRooster()
}}).bind(this)})
};
this.displayDisasterRooster=function(disaster,searchData){var $guestBtn=this.select("disasterGuestButtonSelector"),$hostBtn=this.select("disasterHostButtonSelector"),today=new Date();
var checkin=searchData.currentSearch.filters.checkin||today.toLocaleDateString(I18n.locale()),checkout=searchData.currentSearch.filters.checkout||(new Date(today.getTime()+24*60*60*1000)).toLocaleDateString(I18n.locale());
var hostUrl=$hostBtn.data("urlPrefix")+disaster.canonical_name,guestUrl=$guestBtn.data("urlPrefix")+$.param({collection_id:disaster.collection_id,checkin:searchData.currentSearch.filters.checkin||checkin,checkout:searchData.currentSearch.filters.checkout||checkout});
this.select("disasterNameSelector").html(disaster.name);
$hostBtn.attr("href",hostUrl);
$guestBtn.attr("href",guestUrl);
this.$node.removeClass("hide")
};
this.hideDisasterRooster=function(){this.$node.addClass("hide")
};
this.after("initialize",function(){this.on(".map-search","dataSearchResultsLoaded",this.checkDisaster)
})
});
provide("map_search/Disaster",Disaster)
})();
!(function(){
	var MapSearchData=flight.component(function(){
		this.SEARCH_PARAMS={map:["sw_lat","sw_lng","ne_lat","ne_lng","search_by_map"],header:["location"],filters:["checkin","checkout","guests","exp_types","empHost","room_types","price_min","price_max","min_bedrooms","min_bathrooms","min_beds","neighborhoods","languages","hosting_amenities","property_type_id","connected","keywords"],logging:["s_tag"],developer:["deb","inst","ops","exps","ib","collection_id","host_id","show_listing"]};
		this.defaultAttrs({sTagRegex:/([\?&]s=)[0-9a-zA-Z_\-]+/g});
		
		this.mergedParams=function(){
			var mapParams={};
			for(var i=0;i<this.SEARCH_PARAMS.map.length;i++){
				mapParams[this.SEARCH_PARAMS.map[i]]=this.currentSearch.map[this.SEARCH_PARAMS.map[i]]
			}
			return $.extend({page:this.currentSearch.page},mapParams,this.currentSearch.header,this.currentSearch.filters,this.currentSearch.logging,this.currentSearch.developer)
		};

		this.fetchResults=function(){
			var params=this.mergedParams();
			if(this.currentSearch.source!=="page"){
				params.page=1;
				this.currentSearch.page=1;
				delete params.s_tag
			}
			
			this.trigger("dataSearchResultsLoading",{
				currentSearch:this.currentSearch});
			if(this._activeRequest){
				this._activeRequest.abort()
			}

			this._activeRequest=$.get("/search/search_results",params,(function(data){
				if(this.currentSearch.source!=="page"){
					this.currentSearch.logging.s_tag=data.url_tag
				}
				
				this.dataLoaded("dataSearchResultsLoaded",data);
				this._activeRequest=false
			}).bind(this))
		};
		
		this.loadBootstrapData=function(){
			var urlParams=urlParams=$.query.load(window.location.href).keys;
			var bootstrapData=this.$node.data("bootstrapData");
			
			console.debug(bootstrapData);
			
			var bootstrapFilter=function(param){
				return bootstrapData[param]!==undefined
			};
			this.currentSearch={
					page:1,source:"initial",map:{},header:{},filters:{},logging:{},developer:{}
			};
			
			Object.keys(this.SEARCH_PARAMS).forEach(function(category){
				this.SEARCH_PARAMS[category].filter(bootstrapFilter).forEach(function(param){
					this.currentSearch[category][param]=bootstrapData[param]
				},this)
			},this);
			
			this.currentSearch.page=bootstrapData.page;
			
			if(this.currentSearch.map.search_by_map&&urlParams.zoom){
				this.currentSearch.map.zoom=urlParams.zoom
			}
			
			this.dataLoaded("dataSearchResultsLoaded",{
				results:$(".listings-container"),
				filters:$(),
				visible_results_count:bootstrapData.visible_results_count,
				results_count_string:bootstrapData.results_count_string,
				per_month:bootstrapData.per_month,
				center_lat:bootstrapData.center_lat,
				center_lng:bootstrapData.center_lng,
				geo:bootstrapData.geo,
				trebuchet_experience_types:bootstrapData.trebuchet_experience_types,
				pagination_footer:bootstrapData.pagination_footer})
			};
			
			this.dataLoaded=function(eventName,data){
				var $results,results=data.results,$filters=$(data.filters),listingData;
				
				if(eventName==="dataSearchResultsLoaded"&&this.currentSearch.source==="page"&&this.currentSearch.logging.s_tag){
					results=results.replace(this.attr.sTagRegex,"$1"+this.currentSearch.logging.s_tag)
				}
				
				$results=$(results);
				
				listingData=$results.find(".listing").map(function(){
					return $(this).data()
				}).get();
				
				this.trigger(eventName,{listingData:listingData,$listings:$results.clone(),currentSearch:this.currentSearch,perMonth:data.per_month,center_lat:data.center_lat,center_lng:data.center_lng,geo:data.geo,trebuchet_experience_types:data.trebuchet_experience_types});
				
				if($filters.length){
					this.trigger("dataFiltersLoaded",{$filters:$filters,currentFilters:this.currentSearch.filters,perMonth:data.per_month})
				}
				
				this.triggerResultsLoaded(data)
			};
			
			this.triggerResultsLoaded=function(data){
				this.trigger("dataResultsLoaded",{count:data.visible_results_count,page:this.currentSearch.page,results_count_string:data.results_count_string,pagination_html:data.pagination_footer,source:this.currentSearch.source})
			};
			
			this.searchFromFilters=function(e,params){
				if(params.changed){
					this.//end of component mapsearchdata;.filters=params.filterData;
					this.currentSearch.source="filters";
					this.fetchResults()
				}
			};
			
			this.searchFromHeader=function(e,params){
				if(params.location&&params.location!==this.currentSearch.header.location){
					delete this.currentSearch.map.sw_lat;
					delete this.currentSearch.map.sw_lng;
					delete this.currentSearch.map.ne_lat;
					delete this.currentSearch.map.ne_lng;
					delete this.currentSearch.map.search_by_map;
					delete this.currentSearch.map.zoom;
					delete this.currentSearch.filters.neighborhoods;
					this.trigger("uiLocationChanged")
				}
				
				this.currentSearch.header=params;
				this.currentSearch.source="header";
				this.fetchResults()
			};
			
			this.searchFromMap=function(e,params){
				delete this.currentSearch.filters.neighborhoods;
				this.currentSearch.map=params;
				this.currentSearch.source="map";
				this.fetchResults()
			};
			
			this.updateFromMap=function(e,params){
				if(this.currentSearch.map.search_by_map){
					this.currentSearch.map=params
				}
			};
			
			this.updateFromPagination=function(e,data){
				this.currentSearch.page=data.page;
				this.currentSearch.source="page";
				this.fetchResults()
			};
			
			this.after("initialize",function(){
				this.loadBootstrapData();
				this.on("uiHeaderFieldsChanged",this.searchFromHeader);
				this.on("uiFiltersChanged",this.searchFromFilters);
				this.on("uiMapBoundsChanged",this.searchFromMap);
				this.on("uiPageRequested",this.updateFromPagination)
			})
});
	provide("map_search/MapSearchData",MapSearchData)
})();
!(function(){
	var Map=requireComponent("map_search/Map"),
	History=requireComponent("map_search/History"),
	Sidebar=requireComponent("map_search/Sidebar"),
	Disaster=requireComponent("map_search/Disaster"),
	SearchHeader=requireComponent("map_search/SearchHeader"),
	FooterToggle=requireComponent("map_search/FooterToggle"),
	MapSearchData=requireComponent("map_search/MapSearchData");
	
	var MapSearchPage=flight.component(function(){
		this.after("initialize",function(){
		Map.attachTo(".map");
		History.attachTo(this.$node);
		Sidebar.attachTo(".sidebar");
		Disaster.attachTo(".disaster-rooster");
		SearchHeader.attachTo(".search-header");
		FooterToggle.attachTo(".footer-toggle");
		MapSearchData.attachTo(this.$node);
		
		try{
			FastClick.attach(document.body)
		}catch(error){}})
	});

	provide("map_search/MapSearchPage",MapSearchPage)
})();