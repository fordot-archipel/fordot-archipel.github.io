var ObjectiveJ={};
(function(_1,_2){
if(!Object.create){
Object.create=function(o){
if(arguments.length>1){
throw new Error("Object.create implementation only accepts the first parameter.");
}
function F(){
};
F.prototype=o;
return new F();
};
}
if(!Object.keys){
Object.keys=(function(){
var _3=Object.prototype.hasOwnProperty,_4=!({toString:null}).propertyIsEnumerable("toString"),_5=["toString","toLocaleString","valueOf","hasOwnProperty","isPrototypeOf","propertyIsEnumerable","constructor"],_6=_5.length;
return function(_7){
if(typeof _7!=="object"&&typeof _7!=="function"||_7===null){
throw new TypeError("Object.keys called on non-object");
}
var _8=[];
for(var _9 in _7){
if(_3.call(_7,_9)){
_8.push(_9);
}
}
if(_4){
for(var i=0;i<_6;i++){
if(_3.call(_7,_5[i])){
_8.push(_5[i]);
}
}
}
return _8;
};
})();
}
if(!Array.prototype.indexOf){
Array.prototype.indexOf=function(_a){
"use strict";
if(this===null){
throw new TypeError();
}
var t=new Object(this),_b=t.length>>>0;
if(_b===0){
return -1;
}
var n=0;
if(arguments.length>1){
n=Number(arguments[1]);
if(n!=n){
n=0;
}else{
if(n!==0&&n!=Infinity&&n!=-Infinity){
n=(n>0||-1)*Math.floor(Math.abs(n));
}
}
}
if(n>=_b){
return -1;
}
var k=n>=0?n:Math.max(_b-Math.abs(n),0);
for(;k<_b;k++){
if(k in t&&t[k]===_a){
return k;
}
}
return -1;
};
}
if(!this.JSON){
JSON={};
}
(function(){
function f(n){
return n<10?"0"+n:n;
};
if(typeof Date.prototype.toJSON!=="function"){
Date.prototype.toJSON=function(_c){
return this.getUTCFullYear()+"-"+f(this.getUTCMonth()+1)+"-"+f(this.getUTCDate())+"T"+f(this.getUTCHours())+":"+f(this.getUTCMinutes())+":"+f(this.getUTCSeconds())+"Z";
};
String.prototype.toJSON=Number.prototype.toJSON=Boolean.prototype.toJSON=function(_d){
return this.valueOf();
};
}
var cx=new RegExp("[\\u0000\\u00ad\\u0600-\\u0604\\u070f\\u17b4\\u17b5\\u200c-\\u200f\\u2028-\\u202f\\u2060-\\u206f\\ufeff\\ufff0-\\uffff]","g");
var _e=new RegExp("[\\\\\\\"\\x00-\\x1f\\x7f-\\x9f\\u00ad\\u0600-\\u0604\\u070f\\u17b4\\u17b5\\u200c-\\u200f\\u2028-\\u202f\\u2060-\\u206f\\ufeff\\ufff0-\\uffff]","g");
var _f,_10,_11={"\b":"\\b","\t":"\\t","\n":"\\n","\f":"\\f","\r":"\\r","\"":"\\\"","\\":"\\\\"},rep;
function _12(_13){
_e.lastIndex=0;
return _e.test(_13)?"\""+_13.replace(_e,function(a){
var c=_11[a];
return typeof c==="string"?c:"\\u"+("0000"+a.charCodeAt(0).toString(16)).slice(-4);
})+"\"":"\""+_13+"\"";
};
function str(key,_14){
var i,k,v,_15,_16=_f,_17,_18=_14[key];
if(_18&&typeof _18==="object"&&typeof _18.toJSON==="function"){
_18=_18.toJSON(key);
}
if(typeof rep==="function"){
_18=rep.call(_14,key,_18);
}
switch(typeof _18){
case "string":
return _12(_18);
case "number":
return isFinite(_18)?String(_18):"null";
case "boolean":
case "null":
return String(_18);
case "object":
if(!_18){
return "null";
}
_f+=_10;
_17=[];
if(Object.prototype.toString.apply(_18)==="[object Array]"){
_15=_18.length;
for(i=0;i<_15;i+=1){
_17[i]=str(i,_18)||"null";
}
v=_17.length===0?"[]":_f?"[\n"+_f+_17.join(",\n"+_f)+"\n"+_16+"]":"["+_17.join(",")+"]";
_f=_16;
return v;
}
if(rep&&typeof rep==="object"){
_15=rep.length;
for(i=0;i<_15;i+=1){
k=rep[i];
if(typeof k==="string"){
v=str(k,_18);
if(v){
_17.push(_12(k)+(_f?": ":":")+v);
}
}
}
}else{
for(k in _18){
if(Object.hasOwnProperty.call(_18,k)){
v=str(k,_18);
if(v){
_17.push(_12(k)+(_f?": ":":")+v);
}
}
}
}
v=_17.length===0?"{}":_f?"{\n"+_f+_17.join(",\n"+_f)+"\n"+_16+"}":"{"+_17.join(",")+"}";
_f=_16;
return v;
}
};
if(typeof JSON.stringify!=="function"){
JSON.stringify=function(_19,_1a,_1b){
var i;
_f="";
_10="";
if(typeof _1b==="number"){
for(i=0;i<_1b;i+=1){
_10+=" ";
}
}else{
if(typeof _1b==="string"){
_10=_1b;
}
}
rep=_1a;
if(_1a&&typeof _1a!=="function"&&(typeof _1a!=="object"||typeof _1a.length!=="number")){
throw new Error("JSON.stringify");
}
return str("",{"":_19});
};
}
if(typeof JSON.parse!=="function"){
JSON.parse=function(_1c,_1d){
var j;
function _1e(_1f,key){
var k,v,_20=_1f[key];
if(_20&&typeof _20==="object"){
for(k in _20){
if(Object.hasOwnProperty.call(_20,k)){
v=_1e(_20,k);
if(v!==_2f){
_20[k]=v;
}else{
delete _20[k];
}
}
}
}
return _1d.call(_1f,key,_20);
};
cx.lastIndex=0;
if(cx.test(_1c)){
_1c=_1c.replace(cx,function(a){
return "\\u"+("0000"+a.charCodeAt(0).toString(16)).slice(-4);
});
}
if(/^[\],:{}\s]*$/.test(_1c.replace(/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g,"@").replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g,"]").replace(/(?:^|:|,)(?:\s*\[)+/g,""))){
j=eval("("+_1c+")");
return typeof _1d==="function"?_1e({"":j},""):j;
}
throw new SyntaxError("JSON.parse");
};
}
}());
var _21=new RegExp("([^%]+|%(?:\\d+\\$)?[\\+\\-\\ \\#0]*[0-9\\*]*(.[0-9\\*]+)?[hlL]?[cbBdieEfgGosuxXpn%@])","g");
var _22=new RegExp("(%)(?:(\\d+)\\$)?([\\+\\-\\ \\#0]*)([0-9\\*]*)((?:.[0-9\\*]+)?)([hlL]?)([cbBdieEfgGosuxXpn%@])");
_2.sprintf=function(_23){
var _23=arguments[0],_24=_23.match(_21),_25=0,_26="",arg=1;
for(var i=0;i<_24.length;i++){
var t=_24[i];
if(_23.substring(_25,_25+t.length)!=t){
return _26;
}
_25+=t.length;
if(t.charAt(0)!=="%"){
_26+=t;
}else{
if(t==="%%"){
_26+="%";
}else{
var _27=t.match(_22);
if(_27.length!=8||_27[0]!=t){
return _26;
}
var _28=_27[1],_29=_27[2],_2a=_27[3],_2b=_27[4],_2c=_27[5],_2d=_27[6],_2e=_27[7];
if(_29===_2f||_29===null||_29===""){
_29=arg++;
}else{
_29=Number(_29);
}
var _30=null;
if(_2b=="*"){
_30=arguments[_29];
}else{
if(_2b!=""){
_30=Number(_2b);
}
}
var _31=null;
if(_2c==".*"){
_31=arguments[_29];
}else{
if(_2c!=""){
_31=Number(_2c.substring(1));
}
}
var _32=(_2a.indexOf("-")>=0);
var _33=(_2a.indexOf("0")>=0);
var _34="";
if(RegExp("[bBdiufeExXo]").test(_2e)){
var num=Number(arguments[_29]);
var _35="";
if(num<0){
_35="-";
}else{
if(_2a.indexOf("+")>=0){
_35="+";
}else{
if(_2a.indexOf(" ")>=0){
_35=" ";
}
}
}
if(_2e=="d"||_2e=="i"||_2e=="u"){
var _36=String(Math.abs(Math.floor(num)));
_34=_37(_35,"",_36,"",_30,_32,_33);
}
if(_2e=="f"){
var _36=String((_31!=null)?Math.abs(num).toFixed(_31):Math.abs(num));
var _38=(_2a.indexOf("#")>=0&&_36.indexOf(".")<0)?".":"";
_34=_37(_35,"",_36,_38,_30,_32,_33);
}
if(_2e=="e"||_2e=="E"){
var _36=String(Math.abs(num).toExponential(_31!=null?_31:21));
var _38=(_2a.indexOf("#")>=0&&_36.indexOf(".")<0)?".":"";
_34=_37(_35,"",_36,_38,_30,_32,_33);
}
if(_2e=="x"||_2e=="X"){
var _36=String(Math.abs(num).toString(16));
var _39=(_2a.indexOf("#")>=0&&num!=0)?"0x":"";
_34=_37(_35,_39,_36,"",_30,_32,_33);
}
if(_2e=="b"||_2e=="B"){
var _36=String(Math.abs(num).toString(2));
var _39=(_2a.indexOf("#")>=0&&num!=0)?"0b":"";
_34=_37(_35,_39,_36,"",_30,_32,_33);
}
if(_2e=="o"){
var _36=String(Math.abs(num).toString(8));
var _39=(_2a.indexOf("#")>=0&&num!=0)?"0":"";
_34=_37(_35,_39,_36,"",_30,_32,_33);
}
if(RegExp("[A-Z]").test(_2e)){
_34=_34.toUpperCase();
}else{
_34=_34.toLowerCase();
}
}else{
var _34="";
if(_2e=="%"){
_34="%";
}else{
if(_2e=="c"){
_34=String(arguments[_29]).charAt(0);
}else{
if(_2e=="s"||_2e=="@"){
_34=String(arguments[_29]);
}else{
if(_2e=="p"||_2e=="n"){
_34="";
}
}
}
}
_34=_37("","",_34,"",_30,_32,false);
}
_26+=_34;
}
}
}
return _26;
};
function _37(_3a,_3b,_3c,_3d,_3e,_3f,_40){
var _41=(_3a.length+_3b.length+_3c.length+_3d.length);
if(_3f){
return _3a+_3b+_3c+_3d+pad(_3e-_41," ");
}else{
if(_40){
return _3a+_3b+pad(_3e-_41,"0")+_3c+_3d;
}else{
return pad(_3e-_41," ")+_3a+_3b+_3c+_3d;
}
}
};
function pad(n,ch){
return Array(MAX(0,n)+1).join(ch);
};
CPLogDisable=false;
var _42="Cappuccino";
var _43=["fatal","error","warn","info","debug","trace"];
var _44=_43[3];
var _45={};
for(var i=0;i<_43.length;i++){
_45[_43[i]]=i;
}
var _46={};
CPLogRegister=function(_47,_48,_49){
CPLogRegisterRange(_47,_43[0],_48||_43[_43.length-1],_49);
};
CPLogRegisterRange=function(_4a,_4b,_4c,_4d){
var min=_45[_4b];
var max=_45[_4c];
if(min!==_2f&&max!==_2f&&min<=max){
for(var i=min;i<=max;i++){
CPLogRegisterSingle(_4a,_43[i],_4d);
}
}
};
CPLogRegisterSingle=function(_4e,_4f,_50){
if(!_46[_4f]){
_46[_4f]=[];
}
for(var i=0;i<_46[_4f].length;i++){
if(_46[_4f][i][0]===_4e){
_46[_4f][i][1]=_50;
return;
}
}
_46[_4f].push([_4e,_50]);
};
CPLogUnregister=function(_51){
for(var _52 in _46){
for(var i=0;i<_46[_52].length;i++){
if(_46[_52][i][0]===_51){
_46[_52].splice(i--,1);
}
}
}
};
function _53(_54,_55,_56){
if(_56==_2f){
_56=_42;
}
if(_55==_2f){
_55=_44;
}
var _57=(typeof _54[0]=="string"&&_54.length>1)?_2.sprintf.apply(null,_54):String(_54[0]);
if(_46[_55]){
for(var i=0;i<_46[_55].length;i++){
var _58=_46[_55][i];
_58[0](_57,_55,_56,_58[1]);
}
}
};
CPLog=function(){
_53(arguments);
};
for(var i=0;i<_43.length;i++){
CPLog[_43[i]]=(function(_59){
return function(){
_53(arguments,_59);
};
})(_43[i]);
}
var _5a=function(_5b,_5c,_5d){
var now=new Date(),_5e;
if(_5c===null){
_5c="";
}else{
_5c=_5c||"info";
_5c="["+CPLogColorize(_5c,_5c)+"]";
}
_5d=_5d||"";
if(_5d&&_5c){
_5d+=" ";
}
_5e=_5d+_5c;
if(_5e){
_5e+=": ";
}
if(typeof _2.sprintf=="function"){
return _2.sprintf("%4d-%02d-%02d %02d:%02d:%02d.%03d %s%s",now.getFullYear(),now.getMonth()+1,now.getDate(),now.getHours(),now.getMinutes(),now.getSeconds(),now.getMilliseconds(),_5e,_5b);
}else{
return now+" "+_5e+": "+_5b;
}
};
CPLogConsole=function(_5f,_60,_61,_62){
if(typeof console!="undefined"){
var _63=(_62||_5a)(_5f,_60,_61),_64={"fatal":"error","error":"error","warn":"warn","info":"info","debug":"debug","trace":"debug"}[_60];
if(_64&&console[_64]){
console[_64](_63);
}else{
if(console.log){
console.log(_63);
}
}
}
};
CPLogColorize=function(_65,_66){
return _65;
};
CPLogAlert=function(_67,_68,_69,_6a){
if(typeof alert!="undefined"&&!CPLogDisable){
var _6b=(_6a||_5a)(_67,_68,_69);
CPLogDisable=!confirm(_6b+"\n\n(Click cancel to stop log alerts)");
}
};
var _6c=null;
CPLogPopup=function(_6d,_6e,_6f,_70){
try{
if(CPLogDisable||window.open==_2f){
return;
}
if(!_6c||!_6c.document){
_6c=window.open("","_blank","width=600,height=400,status=no,resizable=yes,scrollbars=yes");
if(!_6c){
CPLogDisable=!confirm(_6d+"\n\n(Disable pop-up blocking for CPLog window; Click cancel to stop log alerts)");
return;
}
_71(_6c);
}
var _72=_6c.document.createElement("div");
_72.setAttribute("class",_6e||"fatal");
var _73=(_70||_5a)(_6d,_70?_6e:null,_6f);
_72.appendChild(_6c.document.createTextNode(_73));
_6c.log.appendChild(_72);
if(_6c.focusEnabled.checked){
_6c.focus();
}
if(_6c.blockEnabled.checked){
_6c.blockEnabled.checked=_6c.confirm(_73+"\nContinue blocking?");
}
if(_6c.scrollEnabled.checked){
_6c.scrollToBottom();
}
}
catch(e){
}
};
var _74="<style type=\"text/css\" media=\"screen\"> body{font:10px Monaco,Courier,\"Courier New\",monospace,mono;padding-top:15px;} div > .fatal,div > .error,div > .warn,div > .info,div > .debug,div > .trace{display:none;overflow:hidden;white-space:pre;padding:0px 5px 0px 5px;margin-top:2px;-moz-border-radius:5px;-webkit-border-radius:5px;} div[wrap=\"yes\"] > div{white-space:normal;} .fatal{background-color:#ffb2b3;} .error{background-color:#ffe2b2;} .warn{background-color:#fdffb2;} .info{background-color:#e4ffb2;} .debug{background-color:#a0e5a0;} .trace{background-color:#99b9ff;} .enfatal .fatal,.enerror .error,.enwarn .warn,.eninfo .info,.endebug .debug,.entrace .trace{display:block;} div#header{background-color:rgba(240,240,240,0.82);position:fixed;top:0px;left:0px;width:100%;border-bottom:1px solid rgba(0,0,0,0.33);text-align:center;} ul#enablers{display:inline-block;margin:1px 15px 0 15px;padding:2px 0 2px 0;} ul#enablers li{display:inline;padding:0px 5px 0px 5px;margin-left:4px;-moz-border-radius:5px;-webkit-border-radius:5px;} [enabled=\"no\"]{opacity:0.25;} ul#options{display:inline-block;margin:0 15px 0px 15px;padding:0 0px;} ul#options li{margin:0 0 0 0;padding:0 0 0 0;display:inline;} </style>";
function _71(_75){
var doc=_75.document;
doc.writeln("<html><head><title></title>"+_74+"</head><body></body></html>");
doc.title=_42+" Run Log";
var _76=doc.getElementsByTagName("head")[0];
var _77=doc.getElementsByTagName("body")[0];
var _78=window.location.protocol+"//"+window.location.host+window.location.pathname;
_78=_78.substring(0,_78.lastIndexOf("/")+1);
var div=doc.createElement("div");
div.setAttribute("id","header");
_77.appendChild(div);
var ul=doc.createElement("ul");
ul.setAttribute("id","enablers");
div.appendChild(ul);
for(var i=0;i<_43.length;i++){
var li=doc.createElement("li");
li.setAttribute("id","en"+_43[i]);
li.setAttribute("class",_43[i]);
li.setAttribute("onclick","toggle(this);");
li.setAttribute("enabled","yes");
li.appendChild(doc.createTextNode(_43[i]));
ul.appendChild(li);
}
var ul=doc.createElement("ul");
ul.setAttribute("id","options");
div.appendChild(ul);
var _79={"focus":["Focus",false],"block":["Block",false],"wrap":["Wrap",false],"scroll":["Scroll",true],"close":["Close",true]};
for(o in _79){
var li=doc.createElement("li");
ul.appendChild(li);
_75[o+"Enabled"]=doc.createElement("input");
_75[o+"Enabled"].setAttribute("id",o);
_75[o+"Enabled"].setAttribute("type","checkbox");
if(_79[o][1]){
_75[o+"Enabled"].setAttribute("checked","checked");
}
li.appendChild(_75[o+"Enabled"]);
var _7a=doc.createElement("label");
_7a.setAttribute("for",o);
_7a.appendChild(doc.createTextNode(_79[o][0]));
li.appendChild(_7a);
}
_75.log=doc.createElement("div");
_75.log.setAttribute("class","enerror endebug enwarn eninfo enfatal entrace");
_77.appendChild(_75.log);
_75.toggle=function(_7b){
var _7c=(_7b.getAttribute("enabled")=="yes")?"no":"yes";
_7b.setAttribute("enabled",_7c);
if(_7c=="yes"){
_75.log.className+=" "+_7b.id;
}else{
_75.log.className=_75.log.className.replace(new RegExp("[\\s]*"+_7b.id,"g"),"");
}
};
_75.scrollToBottom=function(){
_75.scrollTo(0,_77.offsetHeight);
};
_75.wrapEnabled.addEventListener("click",function(){
_75.log.setAttribute("wrap",_75.wrapEnabled.checked?"yes":"no");
},false);
_75.addEventListener("keydown",function(e){
var e=e||_75.event;
if(e.keyCode==75&&(e.ctrlKey||e.metaKey)){
while(_75.log.firstChild){
_75.log.removeChild(_75.log.firstChild);
}
e.preventDefault();
}
},"false");
window.addEventListener("unload",function(){
if(_75&&_75.closeEnabled&&_75.closeEnabled.checked){
CPLogDisable=true;
_75.close();
}
},false);
_75.addEventListener("unload",function(){
if(!CPLogDisable){
CPLogDisable=!confirm("Click cancel to stop logging");
}
},false);
};
CPLogDefault=(typeof window==="object"&&window.console)?CPLogConsole:CPLogPopup;
var _2f;
if(typeof window!=="undefined"){
window.setNativeTimeout=window.setTimeout;
window.clearNativeTimeout=window.clearTimeout;
window.setNativeInterval=window.setInterval;
window.clearNativeInterval=window.clearInterval;
}
NO=false;
YES=true;
nil=null;
Nil=null;
NULL=null;
ABS=Math.abs;
ASIN=Math.asin;
ACOS=Math.acos;
ATAN=Math.atan;
ATAN2=Math.atan2;
SIN=Math.sin;
COS=Math.cos;
TAN=Math.tan;
EXP=Math.exp;
POW=Math.pow;
CEIL=Math.ceil;
FLOOR=Math.floor;
ROUND=Math.round;
MIN=Math.min;
MAX=Math.max;
RAND=Math.random;
SQRT=Math.sqrt;
E=Math.E;
LN2=Math.LN2;
LN10=Math.LN10;
LOG=Math.log;
LOG2E=Math.LOG2E;
LOG10E=Math.LOG10E;
PI=Math.PI;
PI2=Math.PI*2;
PI_2=Math.PI/2;
SQRT1_2=Math.SQRT1_2;
SQRT2=Math.SQRT2;
function _7d(_7e){
this._eventListenersForEventNames={};
this._owner=_7e;
};
_7d.prototype.addEventListener=function(_7f,_80){
var _81=this._eventListenersForEventNames;
if(!_82.call(_81,_7f)){
var _83=[];
_81[_7f]=_83;
}else{
var _83=_81[_7f];
}
var _84=_83.length;
while(_84--){
if(_83[_84]===_80){
return;
}
}
_83.push(_80);
};
_7d.prototype.removeEventListener=function(_85,_86){
var _87=this._eventListenersForEventNames;
if(!_82.call(_87,_85)){
return;
}
var _88=_87[_85],_89=_88.length;
while(_89--){
if(_88[_89]===_86){
return _88.splice(_89,1);
}
}
};
_7d.prototype.dispatchEvent=function(_8a){
var _8b=_8a.type,_8c=this._eventListenersForEventNames;
if(_82.call(_8c,_8b)){
var _8d=this._eventListenersForEventNames[_8b],_8e=0,_8f=_8d.length;
for(;_8e<_8f;++_8e){
_8d[_8e](_8a);
}
}
var _90=(this._owner||this)["on"+_8b];
if(_90){
_90(_8a);
}
};
var _91=0,_92=null,_93=[];
function _94(_95){
var _96=_91;
if(_92===null){
window.setNativeTimeout(function(){
var _97=_93,_98=0,_99=_93.length;
++_91;
_92=null;
_93=[];
for(;_98<_99;++_98){
_97[_98]();
}
},0);
}
return function(){
var _9a=arguments;
if(_91>_96){
_95.apply(this,_9a);
}else{
_93.push(function(){
_95.apply(this,_9a);
});
}
};
};
var _9b=null;
if(window.ActiveXObject!==_2f){
var _9c=["Msxml2.XMLHTTP.3.0","Msxml2.XMLHTTP.6.0"],_9d=_9c.length;
while(_9d--){
try{
var _9e=_9c[_9d];
new ActiveXObject(_9e);
_9b=function(){
return new ActiveXObject(_9e);
};
break;
}
catch(anException){
}
}
}
if(!_9b){
_9b=window.XMLHttpRequest;
}
CFHTTPRequest=function(){
this._isOpen=false;
this._requestHeaders={};
this._mimeType=null;
this._eventDispatcher=new _7d(this);
this._nativeRequest=new _9b();
var _9f=this;
this._stateChangeHandler=function(){
_b2(_9f);
};
this._nativeRequest.onreadystatechange=this._stateChangeHandler;
if(CFHTTPRequest.AuthenticationDelegate!==nil){
this._eventDispatcher.addEventListener("HTTP403",function(){
CFHTTPRequest.AuthenticationDelegate(_9f);
});
}
};
CFHTTPRequest.UninitializedState=0;
CFHTTPRequest.LoadingState=1;
CFHTTPRequest.LoadedState=2;
CFHTTPRequest.InteractiveState=3;
CFHTTPRequest.CompleteState=4;
CFHTTPRequest.AuthenticationDelegate=nil;
CFHTTPRequest.prototype.status=function(){
try{
return this._nativeRequest.status||0;
}
catch(anException){
return 0;
}
};
CFHTTPRequest.prototype.statusText=function(){
try{
return this._nativeRequest.statusText||"";
}
catch(anException){
return "";
}
};
CFHTTPRequest.prototype.readyState=function(){
return this._nativeRequest.readyState;
};
CFHTTPRequest.prototype.success=function(){
var _a0=this.status();
if(_a0>=200&&_a0<300){
return YES;
}
return _a0===0&&this.responseText()&&this.responseText().length;
};
CFHTTPRequest.prototype.responseXML=function(){
var _a1=this._nativeRequest.responseXML;
if(_a1&&(_9b===window.XMLHttpRequest)){
return _a1;
}
return _a2(this.responseText());
};
CFHTTPRequest.prototype.responsePropertyList=function(){
var _a3=this.responseText();
if(CFPropertyList.sniffedFormatOfString(_a3)===CFPropertyList.FormatXML_v1_0){
return CFPropertyList.propertyListFromXML(this.responseXML());
}
return CFPropertyList.propertyListFromString(_a3);
};
CFHTTPRequest.prototype.responseText=function(){
return this._nativeRequest.responseText;
};
CFHTTPRequest.prototype.setRequestHeader=function(_a4,_a5){
this._requestHeaders[_a4]=_a5;
};
CFHTTPRequest.prototype.getResponseHeader=function(_a6){
return this._nativeRequest.getResponseHeader(_a6);
};
CFHTTPRequest.prototype.getAllResponseHeaders=function(){
return this._nativeRequest.getAllResponseHeaders();
};
CFHTTPRequest.prototype.overrideMimeType=function(_a7){
this._mimeType=_a7;
};
CFHTTPRequest.prototype.open=function(_a8,_a9,_aa,_ab,_ac){
this._isOpen=true;
this._URL=_a9;
this._async=_aa;
this._method=_a8;
this._user=_ab;
this._password=_ac;
return this._nativeRequest.open(_a8,_a9,_aa,_ab,_ac);
};
CFHTTPRequest.prototype.send=function(_ad){
if(!this._isOpen){
delete this._nativeRequest.onreadystatechange;
this._nativeRequest.open(this._method,this._URL,this._async,this._user,this._password);
this._nativeRequest.onreadystatechange=this._stateChangeHandler;
}
for(var i in this._requestHeaders){
if(this._requestHeaders.hasOwnProperty(i)){
this._nativeRequest.setRequestHeader(i,this._requestHeaders[i]);
}
}
if(this._mimeType&&"overrideMimeType" in this._nativeRequest){
this._nativeRequest.overrideMimeType(this._mimeType);
}
this._isOpen=false;
try{
return this._nativeRequest.send(_ad);
}
catch(anException){
this._eventDispatcher.dispatchEvent({type:"failure",request:this});
}
};
CFHTTPRequest.prototype.abort=function(){
this._isOpen=false;
return this._nativeRequest.abort();
};
CFHTTPRequest.prototype.addEventListener=function(_ae,_af){
this._eventDispatcher.addEventListener(_ae,_af);
};
CFHTTPRequest.prototype.removeEventListener=function(_b0,_b1){
this._eventDispatcher.removeEventListener(_b0,_b1);
};
function _b2(_b3){
var _b4=_b3._eventDispatcher;
_b4.dispatchEvent({type:"readystatechange",request:_b3});
var _b5=_b3._nativeRequest,_b6=["uninitialized","loading","loaded","interactive","complete"];
if(_b6[_b3.readyState()]==="complete"){
var _b7="HTTP"+_b3.status();
_b4.dispatchEvent({type:_b7,request:_b3});
var _b8=_b3.success()?"success":"failure";
_b4.dispatchEvent({type:_b8,request:_b3});
_b4.dispatchEvent({type:_b6[_b3.readyState()],request:_b3});
}else{
_b4.dispatchEvent({type:_b6[_b3.readyState()],request:_b3});
}
};
function _b9(_ba,_bb,_bc){
var _bd=new CFHTTPRequest();
if(_ba.pathExtension()==="plist"){
_bd.overrideMimeType("text/xml");
}
if(_2.asyncLoader){
_bd.onsuccess=_94(_bb);
_bd.onfailure=_94(_bc);
}else{
_bd.onsuccess=_bb;
_bd.onfailure=_bc;
}
_bd.open("GET",_ba.absoluteString(),_2.asyncLoader);
_bd.send("");
};
_2.asyncLoader=YES;
_2.Asynchronous=_94;
_2.determineAndDispatchHTTPRequestEvents=_b2;
var _be=0;
objj_generateObjectUID=function(){
return _be++;
};
CFPropertyList=function(){
this._UID=objj_generateObjectUID();
};
CFPropertyList.DTDRE=/^\s*(?:<\?\s*xml\s+version\s*=\s*\"1.0\"[^>]*\?>\s*)?(?:<\!DOCTYPE[^>]*>\s*)?/i;
CFPropertyList.XMLRE=/^\s*(?:<\?\s*xml\s+version\s*=\s*\"1.0\"[^>]*\?>\s*)?(?:<\!DOCTYPE[^>]*>\s*)?<\s*plist[^>]*\>/i;
CFPropertyList.FormatXMLDTD="<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">";
CFPropertyList.Format280NorthMagicNumber="280NPLIST";
CFPropertyList.FormatOpenStep=1,CFPropertyList.FormatXML_v1_0=100,CFPropertyList.FormatBinary_v1_0=200,CFPropertyList.Format280North_v1_0=-1000;
CFPropertyList.sniffedFormatOfString=function(_bf){
if(_bf.match(CFPropertyList.XMLRE)){
return CFPropertyList.FormatXML_v1_0;
}
if(_bf.substr(0,CFPropertyList.Format280NorthMagicNumber.length)===CFPropertyList.Format280NorthMagicNumber){
return CFPropertyList.Format280North_v1_0;
}
return NULL;
};
CFPropertyList.dataFromPropertyList=function(_c0,_c1){
var _c2=new CFMutableData();
_c2.setRawString(CFPropertyList.stringFromPropertyList(_c0,_c1));
return _c2;
};
CFPropertyList.stringFromPropertyList=function(_c3,_c4){
if(!_c4){
_c4=CFPropertyList.Format280North_v1_0;
}
var _c5=_c6[_c4];
return _c5["start"]()+_c7(_c3,_c5)+_c5["finish"]();
};
function _c7(_c8,_c9){
var _ca=typeof _c8,_cb=_c8.valueOf(),_cc=typeof _cb;
if(_ca!==_cc){
_ca=_cc;
_c8=_cb;
}
if(_c8===YES||_c8===NO){
_ca="boolean";
}else{
if(_ca==="number"){
if(FLOOR(_c8)===_c8&&(""+_c8).indexOf("e")==-1){
_ca="integer";
}else{
_ca="real";
}
}else{
if(_ca!=="string"){
if(_c8.slice){
_ca="array";
}else{
_ca="dictionary";
}
}
}
}
return _c9[_ca](_c8,_c9);
};
var _c6={};
_c6[CFPropertyList.FormatXML_v1_0]={"start":function(){
return CFPropertyList.FormatXMLDTD+"<plist version = \"1.0\">";
},"finish":function(){
return "</plist>";
},"string":function(_cd){
return "<string>"+_ce(_cd)+"</string>";
},"boolean":function(_cf){
return _cf?"<true/>":"<false/>";
},"integer":function(_d0){
return "<integer>"+_d0+"</integer>";
},"real":function(_d1){
return "<real>"+_d1+"</real>";
},"array":function(_d2,_d3){
var _d4=0,_d5=_d2.length,_d6="<array>";
for(;_d4<_d5;++_d4){
_d6+=_c7(_d2[_d4],_d3);
}
return _d6+"</array>";
},"dictionary":function(_d7,_d8){
var _d9=_d7._keys,_9d=0,_da=_d9.length,_db="<dict>";
for(;_9d<_da;++_9d){
var key=_d9[_9d];
_db+="<key>"+key+"</key>";
_db+=_c7(_d7.valueForKey(key),_d8);
}
return _db+"</dict>";
}};
var _dc="A",_dd="D",_de="f",_df="d",_e0="S",_e1="T",_e2="F",_e3="K",_e4="E";
_c6[CFPropertyList.Format280North_v1_0]={"start":function(){
return CFPropertyList.Format280NorthMagicNumber+";1.0;";
},"finish":function(){
return "";
},"string":function(_e5){
return _e0+";"+_e5.length+";"+_e5;
},"boolean":function(_e6){
return (_e6?_e1:_e2)+";";
},"integer":function(_e7){
var _e8=""+_e7;
return _df+";"+_e8.length+";"+_e8;
},"real":function(_e9){
var _ea=""+_e9;
return _de+";"+_ea.length+";"+_ea;
},"array":function(_eb,_ec){
var _ed=0,_ee=_eb.length,_ef=_dc+";";
for(;_ed<_ee;++_ed){
_ef+=_c7(_eb[_ed],_ec);
}
return _ef+_e4+";";
},"dictionary":function(_f0,_f1){
var _f2=_f0._keys,_9d=0,_f3=_f2.length,_f4=_dd+";";
for(;_9d<_f3;++_9d){
var key=_f2[_9d];
_f4+=_e3+";"+key.length+";"+key;
_f4+=_c7(_f0.valueForKey(key),_f1);
}
return _f4+_e4+";";
}};
var _f5="xml",_f6="#document",_f7="plist",_f8="key",_f9="dict",_fa="array",_fb="string",_fc="date",_fd="true",_fe="false",_ff="real",_100="integer",_101="data";
var _102=function(_103){
var text="",_9d=0,_104=_103.length;
for(;_9d<_104;++_9d){
var node=_103[_9d];
if(node.nodeType===3||node.nodeType===4){
text+=node.nodeValue;
}else{
if(node.nodeType!==8){
text+=_102(node.childNodes);
}
}
}
return text;
};
var _105=function(_106,_107,_108){
var node=_106;
node=(node.firstChild);
if(node!==NULL&&((node.nodeType)===8||(node.nodeType)===3)){
while((node=(node.nextSibling))&&((node.nodeType)===8||(node.nodeType)===3)){
}
}
if(node){
return node;
}
if((String(_106.nodeName))===_fa||(String(_106.nodeName))===_f9){
_108.pop();
}else{
if(node===_107){
return NULL;
}
node=_106;
while((node=(node.nextSibling))&&((node.nodeType)===8||(node.nodeType)===3)){
}
if(node){
return node;
}
}
node=_106;
while(node){
var next=node;
while((next=(next.nextSibling))&&((next.nodeType)===8||(next.nodeType)===3)){
}
if(next){
return next;
}
var node=(node.parentNode);
if(_107&&node===_107){
return NULL;
}
_108.pop();
}
return NULL;
};
CFPropertyList.propertyListFromData=function(_109,_10a){
return CFPropertyList.propertyListFromString(_109.rawString(),_10a);
};
CFPropertyList.propertyListFromString=function(_10b,_10c){
if(!_10c){
_10c=CFPropertyList.sniffedFormatOfString(_10b);
}
if(_10c===CFPropertyList.FormatXML_v1_0){
return CFPropertyList.propertyListFromXML(_10b);
}
if(_10c===CFPropertyList.Format280North_v1_0){
return _10d(_10b);
}
return NULL;
};
var _dc="A",_dd="D",_de="f",_df="d",_e0="S",_e1="T",_e2="F",_e3="K",_e4="E";
function _10d(_10e){
var _10f=new _110(_10e),_111=NULL,key="",_112=NULL,_113=NULL,_114=[],_115=NULL;
while(_111=_10f.getMarker()){
if(_111===_e4){
_114.pop();
continue;
}
var _116=_114.length;
if(_116){
_115=_114[_116-1];
}
if(_111===_e3){
key=_10f.getString();
_111=_10f.getMarker();
}
switch(_111){
case _dc:
_112=[];
_114.push(_112);
break;
case _dd:
_112=new CFMutableDictionary();
_114.push(_112);
break;
case _de:
_112=parseFloat(_10f.getString());
break;
case _df:
_112=parseInt(_10f.getString(),10);
break;
case _e0:
_112=_10f.getString();
break;
case _e1:
_112=YES;
break;
case _e2:
_112=NO;
break;
default:
throw new Error("*** "+_111+" marker not recognized in Plist.");
}
if(!_113){
_113=_112;
}else{
if(_115){
if(_115.slice){
_115.push(_112);
}else{
_115.setValueForKey(key,_112);
}
}
}
}
return _113;
};
function _ce(_117){
return _117.replace(/&/g,"&amp;").replace(/"/g,"&quot;").replace(/'/g,"&apos;").replace(/</g,"&lt;").replace(/>/g,"&gt;");
};
function _118(_119){
return _119.replace(/&quot;/g,"\"").replace(/&apos;/g,"'").replace(/&lt;/g,"<").replace(/&gt;/g,">").replace(/&amp;/g,"&");
};
function _a2(_11a){
if(window.DOMParser){
return (new window.DOMParser().parseFromString(_11a,"text/xml").documentElement);
}else{
if(window.ActiveXObject){
XMLNode=new ActiveXObject("Microsoft.XMLDOM");
var _11b=_11a.match(CFPropertyList.DTDRE);
if(_11b){
_11a=_11a.substr(_11b[0].length);
}
XMLNode.loadXML(_11a);
return XMLNode;
}
}
return NULL;
};
CFPropertyList.propertyListFromXML=function(_11c){
var _11d=_11c;
if(_11c.valueOf&&typeof _11c.valueOf()==="string"){
_11d=_a2(_11c);
}
while(((String(_11d.nodeName))===_f6)||((String(_11d.nodeName))===_f5)){
_11d=(_11d.firstChild);
}
if(_11d!==NULL&&((_11d.nodeType)===8||(_11d.nodeType)===3)){
while((_11d=(_11d.nextSibling))&&((_11d.nodeType)===8||(_11d.nodeType)===3)){
}
}
if(((_11d.nodeType)===10)){
while((_11d=(_11d.nextSibling))&&((_11d.nodeType)===8||(_11d.nodeType)===3)){
}
}
if(!((String(_11d.nodeName))===_f7)){
return NULL;
}
var key="",_11e=NULL,_11f=NULL,_120=_11d,_121=[],_122=NULL;
while(_11d=_105(_11d,_120,_121)){
var _123=_121.length;
if(_123){
_122=_121[_123-1];
}
if((String(_11d.nodeName))===_f8){
key=(_11d.textContent||(_11d.textContent!==""&&_102([_11d])));
while((_11d=(_11d.nextSibling))&&((_11d.nodeType)===8||(_11d.nodeType)===3)){
}
}
switch(String((String(_11d.nodeName)))){
case _fa:
_11e=[];
_121.push(_11e);
break;
case _f9:
_11e=new CFMutableDictionary();
_121.push(_11e);
break;
case _ff:
_11e=parseFloat((_11d.textContent||(_11d.textContent!==""&&_102([_11d]))));
break;
case _100:
_11e=parseInt((_11d.textContent||(_11d.textContent!==""&&_102([_11d]))),10);
break;
case _fb:
if((_11d.getAttribute("type")==="base64")){
_11e=(_11d.firstChild)?CFData.decodeBase64ToString((_11d.textContent||(_11d.textContent!==""&&_102([_11d])))):"";
}else{
_11e=_118((_11d.firstChild)?(_11d.textContent||(_11d.textContent!==""&&_102([_11d]))):"");
}
break;
case _fc:
var _124=Date.parseISO8601((_11d.textContent||(_11d.textContent!==""&&_102([_11d]))));
_11e=isNaN(_124)?new Date():new Date(_124);
break;
case _fd:
_11e=YES;
break;
case _fe:
_11e=NO;
break;
case _101:
_11e=new CFMutableData();
var _125=(_11d.firstChild)?CFData.decodeBase64ToArray((_11d.textContent||(_11d.textContent!==""&&_102([_11d]))),YES):[];
_11e.setBytes(_125);
break;
default:
throw new Error("*** "+(String(_11d.nodeName))+" tag not recognized in Plist.");
}
if(!_11f){
_11f=_11e;
}else{
if(_122){
if(_122.slice){
_122.push(_11e);
}else{
_122.setValueForKey(key,_11e);
}
}
}
}
return _11f;
};
kCFPropertyListOpenStepFormat=CFPropertyList.FormatOpenStep;
kCFPropertyListXMLFormat_v1_0=CFPropertyList.FormatXML_v1_0;
kCFPropertyListBinaryFormat_v1_0=CFPropertyList.FormatBinary_v1_0;
kCFPropertyList280NorthFormat_v1_0=CFPropertyList.Format280North_v1_0;
CFPropertyListCreate=function(){
return new CFPropertyList();
};
CFPropertyListCreateFromXMLData=function(data){
return CFPropertyList.propertyListFromData(data,CFPropertyList.FormatXML_v1_0);
};
CFPropertyListCreateXMLData=function(_126){
return CFPropertyList.dataFromPropertyList(_126,CFPropertyList.FormatXML_v1_0);
};
CFPropertyListCreateFrom280NorthData=function(data){
return CFPropertyList.propertyListFromData(data,CFPropertyList.Format280North_v1_0);
};
CFPropertyListCreate280NorthData=function(_127){
return CFPropertyList.dataFromPropertyList(_127,CFPropertyList.Format280North_v1_0);
};
CPPropertyListCreateFromData=function(data,_128){
return CFPropertyList.propertyListFromData(data,_128);
};
CPPropertyListCreateData=function(_129,_12a){
return CFPropertyList.dataFromPropertyList(_129,_12a);
};
CFDictionary=function(_12b){
this._keys=[];
this._count=0;
this._buckets={};
this._UID=objj_generateObjectUID();
};
var _12c=Array.prototype.indexOf,_82=Object.prototype.hasOwnProperty;
CFDictionary.prototype.copy=function(){
return this;
};
CFDictionary.prototype.mutableCopy=function(){
var _12d=new CFMutableDictionary(),keys=this._keys,_12e=this._count;
_12d._keys=keys.slice();
_12d._count=_12e;
var _12f=0,_130=this._buckets,_131=_12d._buckets;
for(;_12f<_12e;++_12f){
var key=keys[_12f];
_131[key]=_130[key];
}
return _12d;
};
CFDictionary.prototype.containsKey=function(aKey){
return _82.apply(this._buckets,[aKey]);
};
CFDictionary.prototype.containsValue=function(_132){
var keys=this._keys,_133=this._buckets,_9d=0,_134=keys.length;
for(;_9d<_134;++_9d){
if(_133[keys[_9d]]===_132){
return YES;
}
}
return NO;
};
CFDictionary.prototype.count=function(){
return this._count;
};
CFDictionary.prototype.countOfKey=function(aKey){
return this.containsKey(aKey)?1:0;
};
CFDictionary.prototype.countOfValue=function(_135){
var keys=this._keys,_136=this._buckets,_9d=0,_137=keys.length,_138=0;
for(;_9d<_137;++_9d){
if(_136[keys[_9d]]===_135){
++_138;
}
}
return _138;
};
CFDictionary.prototype.keys=function(){
return this._keys.slice();
};
CFDictionary.prototype.valueForKey=function(aKey){
var _139=this._buckets;
if(!_82.apply(_139,[aKey])){
return nil;
}
return _139[aKey];
};
CFDictionary.prototype.toString=function(){
var _13a="{\n",keys=this._keys,_9d=0,_13b=this._count;
for(;_9d<_13b;++_9d){
var key=keys[_9d];
_13a+="\t"+key+" = \""+String(this.valueForKey(key)).split("\n").join("\n\t")+"\"\n";
}
return _13a+"}";
};
CFMutableDictionary=function(_13c){
CFDictionary.apply(this,[]);
};
CFMutableDictionary.prototype=new CFDictionary();
CFMutableDictionary.prototype.copy=function(){
return this.mutableCopy();
};
CFMutableDictionary.prototype.addValueForKey=function(aKey,_13d){
if(this.containsKey(aKey)){
return;
}
++this._count;
this._keys.push(aKey);
this._buckets[aKey]=_13d;
};
CFMutableDictionary.prototype.removeValueForKey=function(aKey){
var _13e=-1;
if(_12c){
_13e=_12c.call(this._keys,aKey);
}else{
var keys=this._keys,_9d=0,_13f=keys.length;
for(;_9d<_13f;++_9d){
if(keys[_9d]===aKey){
_13e=_9d;
break;
}
}
}
if(_13e===-1){
return;
}
--this._count;
this._keys.splice(_13e,1);
delete this._buckets[aKey];
};
CFMutableDictionary.prototype.removeAllValues=function(){
this._count=0;
this._keys=[];
this._buckets={};
};
CFMutableDictionary.prototype.replaceValueForKey=function(aKey,_140){
if(!this.containsKey(aKey)){
return;
}
this._buckets[aKey]=_140;
};
CFMutableDictionary.prototype.setValueForKey=function(aKey,_141){
if(_141===nil||_141===_2f){
this.removeValueForKey(aKey);
}else{
if(this.containsKey(aKey)){
this.replaceValueForKey(aKey,_141);
}else{
this.addValueForKey(aKey,_141);
}
}
};
CFData=function(){
this._rawString=NULL;
this._propertyList=NULL;
this._propertyListFormat=NULL;
this._JSONObject=NULL;
this._bytes=NULL;
this._base64=NULL;
};
CFData.prototype.propertyList=function(){
if(!this._propertyList){
this._propertyList=CFPropertyList.propertyListFromString(this.rawString());
}
return this._propertyList;
};
CFData.prototype.JSONObject=function(){
if(!this._JSONObject){
try{
this._JSONObject=JSON.parse(this.rawString());
}
catch(anException){
}
}
return this._JSONObject;
};
CFData.prototype.rawString=function(){
if(this._rawString===NULL){
if(this._propertyList){
this._rawString=CFPropertyList.stringFromPropertyList(this._propertyList,this._propertyListFormat);
}else{
if(this._JSONObject){
this._rawString=JSON.stringify(this._JSONObject);
}else{
if(this._bytes){
this._rawString=CFData.bytesToString(this._bytes);
}else{
if(this._base64){
this._rawString=CFData.decodeBase64ToString(this._base64,true);
}else{
throw new Error("Can't convert data to string.");
}
}
}
}
}
return this._rawString;
};
CFData.prototype.bytes=function(){
if(this._bytes===NULL){
var _142=CFData.stringToBytes(this.rawString());
this.setBytes(_142);
}
return this._bytes;
};
CFData.prototype.base64=function(){
if(this._base64===NULL){
var _143;
if(this._bytes){
_143=CFData.encodeBase64Array(this._bytes);
}else{
_143=CFData.encodeBase64String(this.rawString());
}
this.setBase64String(_143);
}
return this._base64;
};
CFMutableData=function(){
CFData.call(this);
};
CFMutableData.prototype=new CFData();
function _144(_145){
this._rawString=NULL;
this._propertyList=NULL;
this._propertyListFormat=NULL;
this._JSONObject=NULL;
this._bytes=NULL;
this._base64=NULL;
};
CFMutableData.prototype.setPropertyList=function(_146,_147){
_144(this);
this._propertyList=_146;
this._propertyListFormat=_147;
};
CFMutableData.prototype.setJSONObject=function(_148){
_144(this);
this._JSONObject=_148;
};
CFMutableData.prototype.setRawString=function(_149){
_144(this);
this._rawString=_149;
};
CFMutableData.prototype.setBytes=function(_14a){
_144(this);
this._bytes=_14a;
};
CFMutableData.prototype.setBase64String=function(_14b){
_144(this);
this._base64=_14b;
};
var _14c=["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","+","/","="],_14d=[];
for(var i=0;i<_14c.length;i++){
_14d[_14c[i].charCodeAt(0)]=i;
}
CFData.decodeBase64ToArray=function(_14e,_14f){
if(_14f){
_14e=_14e.replace(/[^A-Za-z0-9\+\/\=]/g,"");
}
var pad=(_14e[_14e.length-1]=="="?1:0)+(_14e[_14e.length-2]=="="?1:0),_150=_14e.length,_151=[];
var i=0;
while(i<_150){
var bits=(_14d[_14e.charCodeAt(i++)]<<18)|(_14d[_14e.charCodeAt(i++)]<<12)|(_14d[_14e.charCodeAt(i++)]<<6)|(_14d[_14e.charCodeAt(i++)]);
_151.push((bits&16711680)>>16);
_151.push((bits&65280)>>8);
_151.push(bits&255);
}
if(pad>0){
return _151.slice(0,-1*pad);
}
return _151;
};
CFData.encodeBase64Array=function(_152){
var pad=(3-(_152.length%3))%3,_153=_152.length+pad,_154=[];
if(pad>0){
_152.push(0);
}
if(pad>1){
_152.push(0);
}
var i=0;
while(i<_153){
var bits=(_152[i++]<<16)|(_152[i++]<<8)|(_152[i++]);
_154.push(_14c[(bits&16515072)>>18]);
_154.push(_14c[(bits&258048)>>12]);
_154.push(_14c[(bits&4032)>>6]);
_154.push(_14c[bits&63]);
}
if(pad>0){
_154[_154.length-1]="=";
_152.pop();
}
if(pad>1){
_154[_154.length-2]="=";
_152.pop();
}
return _154.join("");
};
CFData.decodeBase64ToString=function(_155,_156){
return CFData.bytesToString(CFData.decodeBase64ToArray(_155,_156));
};
CFData.decodeBase64ToUtf16String=function(_157,_158){
return CFData.bytesToUtf16String(CFData.decodeBase64ToArray(_157,_158));
};
CFData.bytesToString=function(_159){
return String.fromCharCode.apply(NULL,_159);
};
CFData.stringToBytes=function(_15a){
var temp=[];
for(var i=0;i<_15a.length;i++){
temp.push(_15a.charCodeAt(i));
}
return temp;
};
CFData.encodeBase64String=function(_15b){
var temp=[];
for(var i=0;i<_15b.length;i++){
temp.push(_15b.charCodeAt(i));
}
return CFData.encodeBase64Array(temp);
};
CFData.bytesToUtf16String=function(_15c){
var temp=[];
for(var i=0;i<_15c.length;i+=2){
temp.push(_15c[i+1]<<8|_15c[i]);
}
return String.fromCharCode.apply(NULL,temp);
};
CFData.encodeBase64Utf16String=function(_15d){
var temp=[];
for(var i=0;i<_15d.length;i++){
var c=_15d.charCodeAt(i);
temp.push(c&255);
temp.push((c&65280)>>8);
}
return CFData.encodeBase64Array(temp);
};
var _15e,_15f,_160=0;
function _161(){
if(++_160!==1){
return;
}
_15e={};
_15f={};
};
function _162(){
_160=MAX(_160-1,0);
if(_160!==0){
return;
}
delete _15e;
delete _15f;
};
var _163=new RegExp("^"+"(?:"+"([^:/?#]+):"+")?"+"(?:"+"(//)"+"("+"(?:"+"("+"([^:@]*)"+":?"+"([^:@]*)"+")?"+"@"+")?"+"([^:/?#]*)"+"(?::(\\d*))?"+")"+")?"+"([^?#]*)"+"(?:\\?([^#]*))?"+"(?:#(.*))?");
var _164=["url","scheme","authorityRoot","authority","userInfo","user","password","domain","portNumber","path","queryString","fragment"];
function _165(aURL){
if(aURL._parts){
return aURL._parts;
}
var _166=aURL.string(),_167=_166.match(/^mhtml:/);
if(_167){
_166=_166.substr("mhtml:".length);
}
if(_160>0&&_82.call(_15f,_166)){
aURL._parts=_15f[_166];
return aURL._parts;
}
aURL._parts={};
var _168=aURL._parts,_169=_163.exec(_166),_9d=_169.length;
while(_9d--){
_168[_164[_9d]]=_169[_9d]||NULL;
}
_168.portNumber=parseInt(_168.portNumber,10);
if(isNaN(_168.portNumber)){
_168.portNumber=-1;
}
_168.pathComponents=[];
if(_168.path){
var _16a=_168.path.split("/"),_16b=_168.pathComponents,_16c=_16a.length;
for(_9d=0;_9d<_16c;++_9d){
var _16d=_16a[_9d];
if(_16d){
_16b.push(_16d);
}else{
if(_9d===0){
_16b.push("/");
}
}
}
_168.pathComponents=_16b;
}
if(_167){
_168.url="mhtml:"+_168.url;
_168.scheme="mhtml:"+_168.scheme;
}
if(_160>0){
_15f[_166]=_168;
}
return _168;
};
CFURL=function(aURL,_16e){
aURL=aURL||"";
if(aURL instanceof CFURL){
if(!_16e){
return new CFURL(aURL.absoluteString());
}
var _16f=aURL.baseURL();
if(_16f){
_16e=new CFURL(_16f.absoluteURL(),_16e);
}
aURL=aURL.string();
}
if(_160>0){
var _170=aURL+" "+(_16e&&_16e.UID()||"");
if(_82.call(_15e,_170)){
return _15e[_170];
}
_15e[_170]=this;
}
if(aURL.match(/^data:/)){
var _171={},_9d=_164.length;
while(_9d--){
_171[_164[_9d]]="";
}
_171.url=aURL;
_171.scheme="data";
_171.pathComponents=[];
this._parts=_171;
this._standardizedURL=this;
this._absoluteURL=this;
}
this._UID=objj_generateObjectUID();
this._string=aURL;
this._baseURL=_16e;
};
CFURL.prototype.UID=function(){
return this._UID;
};
var _172={};
CFURL.prototype.mappedURL=function(){
return _172[this.absoluteString()]||this;
};
CFURL.setMappedURLForURL=function(_173,_174){
_172[_173.absoluteString()]=_174;
};
CFURL.prototype.schemeAndAuthority=function(){
var _175="",_176=this.scheme();
if(_176){
_175+=_176+":";
}
var _177=this.authority();
if(_177){
_175+="//"+_177;
}
return _175;
};
CFURL.prototype.absoluteString=function(){
if(this._absoluteString===_2f){
this._absoluteString=this.absoluteURL().string();
}
return this._absoluteString;
};
CFURL.prototype.toString=function(){
return this.absoluteString();
};
function _178(aURL){
aURL=aURL.standardizedURL();
var _179=aURL.baseURL();
if(!_179){
return aURL;
}
var _17a=((aURL)._parts||_165(aURL)),_17b,_17c=_179.absoluteURL(),_17d=((_17c)._parts||_165(_17c));
if(_17a.scheme||_17a.authority){
_17b=_17a;
}else{
_17b={};
_17b.scheme=_17d.scheme;
_17b.authority=_17d.authority;
_17b.userInfo=_17d.userInfo;
_17b.user=_17d.user;
_17b.password=_17d.password;
_17b.domain=_17d.domain;
_17b.portNumber=_17d.portNumber;
_17b.queryString=_17a.queryString;
_17b.fragment=_17a.fragment;
var _17e=_17a.pathComponents;
if(_17e.length&&_17e[0]==="/"){
_17b.path=_17a.path;
_17b.pathComponents=_17e;
}else{
var _17f=_17d.pathComponents,_180=_17f.concat(_17e);
if(!_179.hasDirectoryPath()&&_17f.length){
_180.splice(_17f.length-1,1);
}
if(_17e.length&&(_17e[0]===".."||_17e[0]===".")){
_181(_180,YES);
}
_17b.pathComponents=_180;
_17b.path=_182(_180,_17e.length<=0||aURL.hasDirectoryPath());
}
}
var _183=_184(_17b),_185=new CFURL(_183);
_185._parts=_17b;
_185._standardizedURL=_185;
_185._standardizedString=_183;
_185._absoluteURL=_185;
_185._absoluteString=_183;
return _185;
};
function _182(_186,_187){
var path=_186.join("/");
if(path.length&&path.charAt(0)==="/"){
path=path.substr(1);
}
if(_187){
path+="/";
}
return path;
};
function _181(_188,_189){
var _18a=0,_18b=0,_18c=_188.length,_18d=_189?_188:[],_18e=NO;
for(;_18a<_18c;++_18a){
var _18f=_188[_18a];
if(_18f===""){
continue;
}
if(_18f==="."){
_18e=_18b===0;
continue;
}
if(_18f!==".."||_18b===0||_18d[_18b-1]===".."){
_18d[_18b]=_18f;
_18b++;
continue;
}
if(_18b>0&&_18d[_18b-1]!=="/"){
--_18b;
}
}
if(_18e&&_18b===0){
_18d[_18b++]=".";
}
_18d.length=_18b;
return _18d;
};
function _184(_190){
var _191="",_192=_190.scheme;
if(_192){
_191+=_192+":";
}
var _193=_190.authority;
if(_193){
_191+="//"+_193;
}
_191+=_190.path;
var _194=_190.queryString;
if(_194){
_191+="?"+_194;
}
var _195=_190.fragment;
if(_195){
_191+="#"+_195;
}
return _191;
};
CFURL.prototype.absoluteURL=function(){
if(this._absoluteURL===_2f){
this._absoluteURL=_178(this);
}
return this._absoluteURL;
};
CFURL.prototype.standardizedURL=function(){
if(this._standardizedURL===_2f){
var _196=((this)._parts||_165(this)),_197=_196.pathComponents,_198=_181(_197,NO);
var _199=_182(_198,this.hasDirectoryPath());
if(_196.path===_199){
this._standardizedURL=this;
}else{
var _19a=_19b(_196);
_19a.pathComponents=_198;
_19a.path=_199;
var _19c=new CFURL(_184(_19a),this.baseURL());
_19c._parts=_19a;
_19c._standardizedURL=_19c;
this._standardizedURL=_19c;
}
}
return this._standardizedURL;
};
function _19b(_19d){
var _19e={},_19f=_164.length;
while(_19f--){
var _1a0=_164[_19f];
_19e[_1a0]=_19d[_1a0];
}
return _19e;
};
CFURL.prototype.string=function(){
return this._string;
};
CFURL.prototype.authority=function(){
var _1a1=((this)._parts||_165(this)).authority;
if(_1a1){
return _1a1;
}
var _1a2=this.baseURL();
return _1a2&&_1a2.authority()||"";
};
CFURL.prototype.hasDirectoryPath=function(){
var _1a3=this._hasDirectoryPath;
if(_1a3===_2f){
var path=this.path();
if(!path){
return NO;
}
if(path.charAt(path.length-1)==="/"){
return YES;
}
var _1a4=this.lastPathComponent();
_1a3=_1a4==="."||_1a4==="..";
this._hasDirectoryPath=_1a3;
}
return _1a3;
};
CFURL.prototype.hostName=function(){
return this.authority();
};
CFURL.prototype.fragment=function(){
return ((this)._parts||_165(this)).fragment;
};
CFURL.prototype.lastPathComponent=function(){
if(this._lastPathComponent===_2f){
var _1a5=this.pathComponents(),_1a6=_1a5.length;
if(!_1a6){
this._lastPathComponent="";
}else{
this._lastPathComponent=_1a5[_1a6-1];
}
}
return this._lastPathComponent;
};
CFURL.prototype.path=function(){
return ((this)._parts||_165(this)).path;
};
CFURL.prototype.createCopyDeletingLastPathComponent=function(){
var _1a7=((this)._parts||_165(this)),_1a8=_181(_1a7.pathComponents,NO);
if(_1a8.length>0){
if(_1a8.length>1||_1a8[0]!=="/"){
_1a8.pop();
}
}
var _1a9=_1a8.length===1&&_1a8[0]==="/";
_1a7.pathComponents=_1a8;
_1a7.path=_1a9?"/":_182(_1a8,NO);
return new CFURL(_184(_1a7));
};
CFURL.prototype.pathComponents=function(){
return ((this)._parts||_165(this)).pathComponents;
};
CFURL.prototype.pathExtension=function(){
var _1aa=this.lastPathComponent();
if(!_1aa){
return NULL;
}
_1aa=_1aa.replace(/^\.*/,"");
var _1ab=_1aa.lastIndexOf(".");
return _1ab<=0?"":_1aa.substring(_1ab+1);
};
CFURL.prototype.queryString=function(){
return ((this)._parts||_165(this)).queryString;
};
CFURL.prototype.scheme=function(){
var _1ac=this._scheme;
if(_1ac===_2f){
_1ac=((this)._parts||_165(this)).scheme;
if(!_1ac){
var _1ad=this.baseURL();
_1ac=_1ad&&_1ad.scheme();
}
this._scheme=_1ac;
}
return _1ac;
};
CFURL.prototype.user=function(){
return ((this)._parts||_165(this)).user;
};
CFURL.prototype.password=function(){
return ((this)._parts||_165(this)).password;
};
CFURL.prototype.portNumber=function(){
return ((this)._parts||_165(this)).portNumber;
};
CFURL.prototype.domain=function(){
return ((this)._parts||_165(this)).domain;
};
CFURL.prototype.baseURL=function(){
return this._baseURL;
};
CFURL.prototype.asDirectoryPathURL=function(){
if(this.hasDirectoryPath()){
return this;
}
var _1ae=this.lastPathComponent();
if(_1ae!=="/"){
_1ae="./"+_1ae;
}
return new CFURL(_1ae+"/",this);
};
function _1af(aURL){
if(!aURL._resourcePropertiesForKeys){
aURL._resourcePropertiesForKeys=new CFMutableDictionary();
}
return aURL._resourcePropertiesForKeys;
};
CFURL.prototype.resourcePropertyForKey=function(aKey){
return _1af(this).valueForKey(aKey);
};
CFURL.prototype.setResourcePropertyForKey=function(aKey,_1b0){
_1af(this).setValueForKey(aKey,_1b0);
};
CFURL.prototype.staticResourceData=function(){
var data=new CFMutableData();
data.setRawString(_1b1.resourceAtURL(this).contents());
return data;
};
function _110(_1b2){
this._string=_1b2;
var _1b3=_1b2.indexOf(";");
this._magicNumber=_1b2.substr(0,_1b3);
this._location=_1b2.indexOf(";",++_1b3);
this._version=_1b2.substring(_1b3,this._location++);
};
_110.prototype.magicNumber=function(){
return this._magicNumber;
};
_110.prototype.version=function(){
return this._version;
};
_110.prototype.getMarker=function(){
var _1b4=this._string,_1b5=this._location;
if(_1b5>=_1b4.length){
return null;
}
var next=_1b4.indexOf(";",_1b5);
if(next<0){
return null;
}
var _1b6=_1b4.substring(_1b5,next);
if(_1b6==="e"){
return null;
}
this._location=next+1;
return _1b6;
};
_110.prototype.getString=function(){
var _1b7=this._string,_1b8=this._location;
if(_1b8>=_1b7.length){
return null;
}
var next=_1b7.indexOf(";",_1b8);
if(next<0){
return null;
}
var size=parseInt(_1b7.substring(_1b8,next),10),text=_1b7.substr(next+1,size);
this._location=next+1+size;
return text;
};
var _1b9=0,_1ba=1<<0,_1bb=1<<1,_1bc=1<<2,_1bd=1<<3,_1be=1<<4;
var _1bf={},_1c0={},_1c1={},_1c2=new Date().getTime(),_1c3=0,_1c4=0;
CFBundle=function(aURL){
aURL=_1c5(aURL).asDirectoryPathURL();
var _1c6=aURL.absoluteString(),_1c7=_1bf[_1c6];
if(_1c7){
return _1c7;
}
_1bf[_1c6]=this;
this._bundleURL=aURL;
this._resourcesDirectoryURL=new CFURL("Resources/",aURL);
this._staticResource=NULL;
this._isValid=NO;
this._loadStatus=_1b9;
this._loadRequests=[];
this._infoDictionary=new CFDictionary();
this._eventDispatcher=new _7d(this);
};
CFBundle.environments=function(){
return ["Browser","ObjJ"];
};
CFBundle.bundleContainingURL=function(aURL){
aURL=new CFURL(".",_1c5(aURL));
var _1c8,_1c9=aURL.absoluteString();
while(!_1c8||_1c8!==_1c9){
var _1ca=_1bf[_1c9];
if(_1ca&&_1ca._isValid){
return _1ca;
}
aURL=new CFURL("..",aURL);
_1c8=_1c9;
_1c9=aURL.absoluteString();
}
return NULL;
};
CFBundle.mainBundle=function(){
return new CFBundle(_1cb);
};
function _1cc(_1cd,_1ce){
if(_1ce){
_1c0[_1cd.name]=_1ce;
}
};
function _1cf(){
_1bf={};
_1c0={};
_1c1={};
_1c3=0;
_1c4=0;
};
CFBundle.bundleForClass=function(_1d0){
return _1c0[_1d0.name]||CFBundle.mainBundle();
};
CFBundle.bundleWithIdentifier=function(_1d1){
return _1c1[_1d1]||NULL;
};
CFBundle.prototype.bundleURL=function(){
return this._bundleURL.absoluteURL();
};
CFBundle.prototype.resourcesDirectoryURL=function(){
return this._resourcesDirectoryURL;
};
CFBundle.prototype.resourceURL=function(_1d2,_1d3,_1d4){
if(_1d3){
_1d2=_1d2+"."+_1d3;
}
if(_1d4){
_1d2=_1d4+"/"+_1d2;
}
var _1d5=(new CFURL(_1d2,this.resourcesDirectoryURL())).mappedURL();
return _1d5.absoluteURL();
};
CFBundle.prototype.mostEligibleEnvironmentURL=function(){
if(this._mostEligibleEnvironmentURL===_2f){
this._mostEligibleEnvironmentURL=new CFURL(this.mostEligibleEnvironment()+".environment/",this.bundleURL());
}
return this._mostEligibleEnvironmentURL;
};
CFBundle.prototype.executableURL=function(){
if(this._executableURL===_2f){
var _1d6=this.valueForInfoDictionaryKey("CPBundleExecutable");
if(!_1d6){
this._executableURL=NULL;
}else{
this._executableURL=new CFURL(_1d6,this.mostEligibleEnvironmentURL());
}
}
return this._executableURL;
};
CFBundle.prototype.infoDictionary=function(){
return this._infoDictionary;
};
CFBundle.prototype.valueForInfoDictionaryKey=function(aKey){
return this._infoDictionary.valueForKey(aKey);
};
CFBundle.prototype.identifier=function(){
return this._infoDictionary.valueForKey("CPBundleIdentifier");
};
CFBundle.prototype.hasSpritedImages=function(){
var _1d7=this._infoDictionary.valueForKey("CPBundleEnvironmentsWithImageSprites")||[],_9d=_1d7.length,_1d8=this.mostEligibleEnvironment();
while(_9d--){
if(_1d7[_9d]===_1d8){
return YES;
}
}
return NO;
};
CFBundle.prototype.environments=function(){
return this._infoDictionary.valueForKey("CPBundleEnvironments")||["ObjJ"];
};
CFBundle.prototype.mostEligibleEnvironment=function(_1d9){
_1d9=_1d9||this.environments();
var _1da=CFBundle.environments(),_9d=0,_1db=_1da.length,_1dc=_1d9.length;
for(;_9d<_1db;++_9d){
var _1dd=0,_1de=_1da[_9d];
for(;_1dd<_1dc;++_1dd){
if(_1de===_1d9[_1dd]){
return _1de;
}
}
}
return NULL;
};
CFBundle.prototype.isLoading=function(){
return this._loadStatus&_1ba;
};
CFBundle.prototype.isLoaded=function(){
return !!(this._loadStatus&_1be);
};
CFBundle.prototype.load=function(_1df){
if(this._loadStatus!==_1b9){
return;
}
this._loadStatus=_1ba|_1bb;
var self=this,_1e0=this.bundleURL(),_1e1=new CFURL("..",_1e0);
if(_1e1.absoluteString()===_1e0.absoluteString()){
_1e1=_1e1.schemeAndAuthority();
}
_1b1.resolveResourceAtURL(_1e1,YES,function(_1e2){
var _1e3=_1e0.lastPathComponent();
self._staticResource=_1e2._children[_1e3]||new _1b1(_1e0,_1e2,YES,NO);
function _1e4(_1e5){
self._loadStatus&=~_1bb;
var _1e6=_1e5.request.responsePropertyList();
self._isValid=!!_1e6||CFBundle.mainBundle()===self;
if(_1e6){
self._infoDictionary=_1e6;
var _1e7=self._infoDictionary.valueForKey("CPBundleIdentifier");
if(_1e7){
_1c1[_1e7]=self;
}
}
if(!self._infoDictionary){
_1e9(self,new Error("Could not load bundle at \""+path+"\""));
return;
}
if(self===CFBundle.mainBundle()&&self.valueForInfoDictionaryKey("CPApplicationSize")){
_1c4=self.valueForInfoDictionaryKey("CPApplicationSize").valueForKey("executable")||0;
}
_1ed(self,_1df);
};
function _1e8(){
self._isValid=CFBundle.mainBundle()===self;
self._loadStatus=_1b9;
_1e9(self,new Error("Could not load bundle at \""+self.bundleURL()+"\""));
};
new _b9(new CFURL("Info.plist",self.bundleURL()),_1e4,_1e8);
});
};
function _1e9(_1ea,_1eb){
_1ec(_1ea._staticResource);
_1ea._eventDispatcher.dispatchEvent({type:"error",error:_1eb,bundle:_1ea});
};
function _1ed(_1ee,_1ef){
if(!_1ee.mostEligibleEnvironment()){
return _1f0();
}
_1f1(_1ee,_1f2,_1f0);
_1f3(_1ee,_1f2,_1f0);
if(_1ee._loadStatus===_1ba){
return _1f2();
}
function _1f0(_1f4){
var _1f5=_1ee._loadRequests,_1f6=_1f5.length;
while(_1f6--){
_1f5[_1f6].abort();
}
this._loadRequests=[];
_1ee._loadStatus=_1b9;
_1e9(_1ee,_1f4||new Error("Could not recognize executable code format in Bundle "+_1ee));
};
function _1f2(){
if((typeof CPApp==="undefined"||!CPApp||!CPApp._finishedLaunching)&&typeof OBJJ_PROGRESS_CALLBACK==="function"&&_1c4){
OBJJ_PROGRESS_CALLBACK(MAX(MIN(1,_1c3/_1c4),0),_1c4,_1ee.bundlePath());
}
if(_1ee._loadStatus===_1ba){
_1ee._loadStatus=_1be;
}else{
return;
}
_1ec(_1ee._staticResource);
function _1f7(){
_1ee._eventDispatcher.dispatchEvent({type:"load",bundle:_1ee});
};
if(_1ef){
_1f8(_1ee,_1f7);
}else{
_1f7();
}
};
};
function _1f1(_1f9,_1fa,_1fb){
var _1fc=_1f9.executableURL();
if(!_1fc){
return;
}
_1f9._loadStatus|=_1bc;
new _b9(_1fc,function(_1fd){
try{
_1c3+=_1fd.request.responseText().length;
_1fe(_1f9,_1fd.request.responseText(),_1fc);
_1f9._loadStatus&=~_1bc;
_1fa();
}
catch(anException){
_1fb(anException);
}
},_1fb);
};
function _1ff(_200){
return "mhtml:"+new CFURL("MHTMLTest.txt",_200.mostEligibleEnvironmentURL());
};
function _201(_202){
if(_203===_204){
return new CFURL("dataURLs.txt",_202.mostEligibleEnvironmentURL());
}
if(_203===_205||_203===_206){
return new CFURL("MHTMLPaths.txt",_202.mostEligibleEnvironmentURL());
}
return NULL;
};
function _1f3(_207,_208,_209){
if(!_207.hasSpritedImages()){
return;
}
_207._loadStatus|=_1bd;
if(!_20a()){
return _20b(_1ff(_207),function(){
_1f3(_207,_208,_209);
});
}
var _20c=_201(_207);
if(!_20c){
_207._loadStatus&=~_1bd;
return _208();
}
new _b9(_20c,function(_20d){
try{
_1c3+=_20d.request.responseText().length;
_1fe(_207,_20d.request.responseText(),_20c);
_207._loadStatus&=~_1bd;
}
catch(anException){
_209(anException);
}
_208();
},_209);
};
var _20e=[],_203=-1,_20f=0,_204=1,_205=2,_206=3;
function _20a(){
return _203!==-1;
};
function _20b(_210,_211){
if(_20a()){
return;
}
_20e.push(_211);
if(_20e.length>1){
return;
}
_20e.push(function(){
var size=0,_212=CFBundle.mainBundle().valueForInfoDictionaryKey("CPApplicationSize");
if(!_212){
return;
}
switch(_203){
case _204:
size=_212.valueForKey("data");
break;
case _205:
case _206:
size=_212.valueForKey("mhtml");
break;
}
_1c4+=size;
});
_213([_204,"data:image/gif;base64,R0lGODlhAQABAIAAAMc9BQAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==",_205,_210+"!test",_206,_210+"?"+_1c2+"!test"]);
};
function _214(){
var _215=_20e.length;
while(_215--){
_20e[_215]();
}
};
function _213(_216){
if(!("Image" in _1)||_216.length<2){
_203=_20f;
_214();
return;
}
var _217=new Image();
_217.onload=function(){
if(_217.width===1&&_217.height===1){
_203=_216[0];
_214();
}else{
_217.onerror();
}
};
_217.onerror=function(){
_213(_216.slice(2));
};
_217.src=_216[1];
};
function _1f8(_218,_219){
var _21a=[_218._staticResource];
function _21b(_21c){
for(;_21c<_21a.length;++_21c){
var _21d=_21a[_21c];
if(_21d.isNotFound()){
continue;
}
if(_21d.isFile()){
var _21e=new _5e8(_21d.URL());
if(_21e.hasLoadedFileDependencies()){
_21e.execute();
}else{
_21e.loadFileDependencies(function(){
_21b(_21c);
});
return;
}
}else{
if(_21d.URL().absoluteString()===_218.resourcesDirectoryURL().absoluteString()){
continue;
}
var _21f=_21d.children();
for(var name in _21f){
if(_82.call(_21f,name)){
_21a.push(_21f[name]);
}
}
}
}
_219();
};
_21b(0);
};
var _220="@STATIC",_221="p",_222="u",_223="c",_224="t",_225="I",_226="i";
function _1fe(_227,_228,_229){
var _22a=new _110(_228);
if(_22a.magicNumber()!==_220){
throw new Error("Could not read static file: "+_229);
}
if(_22a.version()!=="1.0"){
throw new Error("Could not read static file: "+_229);
}
var _22b,_22c=_227.bundleURL(),file=NULL;
while(_22b=_22a.getMarker()){
var text=_22a.getString();
if(_22b===_221){
var _22d=new CFURL(text,_22c),_22e=_1b1.resourceAtURL(new CFURL(".",_22d),YES);
file=new _1b1(_22d,_22e,NO,YES);
}else{
if(_22b===_222){
var URL=new CFURL(text,_22c),_22f=_22a.getString();
if(_22f.indexOf("mhtml:")===0){
_22f="mhtml:"+new CFURL(_22f.substr("mhtml:".length),_22c);
if(_203===_206){
var _230=_22f.indexOf("!"),_231=_22f.substring(0,_230),_232=_22f.substring(_230);
_22f=_231+"?"+_1c2+_232;
}
}
CFURL.setMappedURLForURL(URL,new CFURL(_22f));
var _22e=_1b1.resourceAtURL(new CFURL(".",URL),YES);
new _1b1(URL,_22e,NO,YES);
}else{
if(_22b===_224){
file.write(text);
}
}
}
}
};
CFBundle.prototype.addEventListener=function(_233,_234){
this._eventDispatcher.addEventListener(_233,_234);
};
CFBundle.prototype.removeEventListener=function(_235,_236){
this._eventDispatcher.removeEventListener(_235,_236);
};
CFBundle.prototype.onerror=function(_237){
throw _237.error;
};
CFBundle.prototype.bundlePath=function(){
return this.bundleURL().path();
};
CFBundle.prototype.path=function(){
CPLog.warn("CFBundle.prototype.path is deprecated, use CFBundle.prototype.bundlePath instead.");
return this.bundlePath.apply(this,arguments);
};
CFBundle.prototype.pathForResource=function(_238){
return this.resourceURL(_238).absoluteString();
};
var _239={};
function _1b1(aURL,_23a,_23b,_23c,_23d){
this._parent=_23a;
this._eventDispatcher=new _7d(this);
var name=aURL.absoluteURL().lastPathComponent()||aURL.schemeAndAuthority();
this._name=name;
this._URL=aURL;
this._isResolved=!!_23c;
this._filenameTranslateDictionary=_23d;
if(_23b){
this._URL=this._URL.asDirectoryPathURL();
}
if(!_23a){
_239[name]=this;
}
this._isDirectory=!!_23b;
this._isNotFound=NO;
if(_23a){
_23a._children[name]=this;
}
if(_23b){
this._children={};
}else{
this._contents="";
}
};
_1b1.rootResources=function(){
return _239;
};
function _23e(x){
var _23f=0;
for(var k in x){
if(x.hasOwnProperty(k)){
++_23f;
}
}
return _23f;
};
_1b1.resetRootResources=function(){
_239={};
};
_1b1.prototype.filenameTranslateDictionary=function(){
return this._filenameTranslateDictionary||{};
};
_2.StaticResource=_1b1;
function _1ec(_240){
_240._isResolved=YES;
_240._eventDispatcher.dispatchEvent({type:"resolve",staticResource:_240});
};
_1b1.prototype.resolve=function(){
if(this.isDirectory()){
var _241=new CFBundle(this.URL());
_241.onerror=function(){
};
_241.load(NO);
}else{
var self=this;
function _242(_243){
self._contents=_243.request.responseText();
_1ec(self);
};
function _244(){
self._isNotFound=YES;
_1ec(self);
};
var url=this.URL(),_245=this.filenameTranslateDictionary();
if(_245){
var _246=url.toString(),_247=url.lastPathComponent(),_248=_246.substring(0,_246.length-_247.length),_249=_245[_247];
if(_249&&_246.slice(-_249.length)!==_249){
url=new CFURL(_248+_249);
}
}
new _b9(url,_242,_244);
}
};
_1b1.prototype.name=function(){
return this._name;
};
_1b1.prototype.URL=function(){
return this._URL;
};
_1b1.prototype.contents=function(){
return this._contents;
};
_1b1.prototype.children=function(){
return this._children;
};
_1b1.prototype.parent=function(){
return this._parent;
};
_1b1.prototype.isResolved=function(){
return this._isResolved;
};
_1b1.prototype.write=function(_24a){
this._contents+=_24a;
};
function _24b(_24c){
var _24d=_24c.schemeAndAuthority(),_24e=_239[_24d];
if(!_24e){
_24e=new _1b1(new CFURL(_24d),NULL,YES,YES);
}
return _24e;
};
_1b1.resourceAtURL=function(aURL,_24f){
aURL=_1c5(aURL).absoluteURL();
var _250=_24b(aURL),_251=aURL.pathComponents(),_9d=0,_252=_251.length;
for(;_9d<_252;++_9d){
var name=_251[_9d];
if(_82.call(_250._children,name)){
_250=_250._children[name];
}else{
if(_24f){
if(name!=="/"){
name="./"+name;
}
_250=new _1b1(new CFURL(name,_250.URL()),_250,YES,YES);
}else{
throw new Error("Static Resource at "+aURL+" is not resolved (\""+name+"\")");
}
}
}
return _250;
};
_1b1.prototype.resourceAtURL=function(aURL,_253){
return _1b1.resourceAtURL(new CFURL(aURL,this.URL()),_253);
};
_1b1.resolveResourceAtURL=function(aURL,_254,_255,_256){
aURL=_1c5(aURL).absoluteURL();
_257(_24b(aURL),_254,aURL.pathComponents(),0,_255,_256);
};
_1b1.prototype.resolveResourceAtURL=function(aURL,_258,_259){
_1b1.resolveResourceAtURL(new CFURL(aURL,this.URL()).absoluteURL(),_258,_259);
};
function _257(_25a,_25b,_25c,_25d,_25e,_25f){
var _260=_25c.length;
for(;_25d<_260;++_25d){
var name=_25c[_25d],_261=_82.call(_25a._children,name)&&_25a._children[name];
if(!_261){
_261=new _1b1(new CFURL(name,_25a.URL()),_25a,_25d+1<_260||_25b,NO,_25f);
_261.resolve();
}
if(!_261.isResolved()){
return _261.addEventListener("resolve",function(){
_257(_25a,_25b,_25c,_25d,_25e,_25f);
});
}
if(_261.isNotFound()){
return _25e(null,new Error("File not found: "+_25c.join("/")));
}
if((_25d+1<_260)&&_261.isFile()){
return _25e(null,new Error("File is not a directory: "+_25c.join("/")));
}
_25a=_261;
}
_25e(_25a);
};
function _262(aURL,_263,_264){
var _265=_1b1.includeURLs(),_266=new CFURL(aURL,_265[_263]).absoluteURL();
_1b1.resolveResourceAtURL(_266,NO,function(_267){
if(!_267){
if(_263+1<_265.length){
_262(aURL,_263+1,_264);
}else{
_264(NULL);
}
return;
}
_264(_267);
});
};
_1b1.resolveResourceAtURLSearchingIncludeURLs=function(aURL,_268){
_262(aURL,0,_268);
};
_1b1.prototype.addEventListener=function(_269,_26a){
this._eventDispatcher.addEventListener(_269,_26a);
};
_1b1.prototype.removeEventListener=function(_26b,_26c){
this._eventDispatcher.removeEventListener(_26b,_26c);
};
_1b1.prototype.isNotFound=function(){
return this._isNotFound;
};
_1b1.prototype.isFile=function(){
return !this._isDirectory;
};
_1b1.prototype.isDirectory=function(){
return this._isDirectory;
};
_1b1.prototype.toString=function(_26d){
if(this.isNotFound()){
return "<file not found: "+this.name()+">";
}
var _26e=this.name();
if(this.isDirectory()){
var _26f=this._children;
for(var name in _26f){
if(_26f.hasOwnProperty(name)){
var _270=_26f[name];
if(_26d||!_270.isNotFound()){
_26e+="\n\t"+_26f[name].toString(_26d).split("\n").join("\n\t");
}
}
}
}
return _26e;
};
var _271=NULL;
_1b1.includeURLs=function(){
if(_271!==NULL){
return _271;
}
_271=[];
if(!_1.OBJJ_INCLUDE_PATHS&&!_1.OBJJ_INCLUDE_URLS){
_271=["Frameworks","Frameworks/Debug"];
}else{
_271=(_1.OBJJ_INCLUDE_PATHS||[]).concat(_1.OBJJ_INCLUDE_URLS||[]);
}
var _272=_271.length;
while(_272--){
_271[_272]=new CFURL(_271[_272]).asDirectoryPathURL();
}
return _271;
};
var _273="accessors",_274="class",_275="end",_276="function",_277="implementation",_278="import",_279="each",_27a="outlet",_27b="action",_27c="new",_27d="selector",_27e="super",_27f="var",_280="in",_281="pragma",_282="mark",_283="=",_284="+",_285="-",_286=":",_287=",",_288=".",_289="*",_28a=";",_28b="<",_28c="{",_28d="}",_28e=">",_28f="[",_290="\"",_291="@",_292="#",_293="]",_294="?",_295="(",_296=")",_297=/^(?:(?:\s+$)|(?:\/(?:\/|\*)))/,_298=/^[+-]?\d+(([.]\d+)*([eE][+-]?\d+))?$/,_299=/^[a-zA-Z_$](\w|$)*$/;
function _29a(_29b){
this._index=-1;
this._tokens=(_29b+"\n").match(/\/\/.*(\r|\n)?|\/\*(?:.|\n|\r)*?\*\/|\w+\b|[+-]?\d+(([.]\d+)*([eE][+-]?\d+))?|"[^"\\]*(\\[\s\S][^"\\]*)*"|'[^'\\]*(\\[\s\S][^'\\]*)*'|\s+|./g);
this._context=[];
return this;
};
_29a.prototype.push=function(){
this._context.push(this._index);
};
_29a.prototype.pop=function(){
this._index=this._context.pop();
};
_29a.prototype.peek=function(_29c){
if(_29c){
this.push();
var _29d=this.skip_whitespace();
this.pop();
return _29d;
}
return this._tokens[this._index+1];
};
_29a.prototype.next=function(){
return this._tokens[++this._index];
};
_29a.prototype.previous=function(){
return this._tokens[--this._index];
};
_29a.prototype.last=function(){
if(this._index<0){
return NULL;
}
return this._tokens[this._index-1];
};
_29a.prototype.skip_whitespace=function(_29e){
var _29f;
if(_29e){
while((_29f=this.previous())&&_297.test(_29f)){
}
}else{
while((_29f=this.next())&&_297.test(_29f)){
}
}
return _29f;
};
_2.Lexer=_29a;
function _2a0(){
this.atoms=[];
};
_2a0.prototype.toString=function(){
return this.atoms.join("");
};
_2.preprocess=function(_2a1,aURL,_2a2){
return new _2a3(_2a1,aURL,_2a2).executable();
};
_2.eval=function(_2a4){
return eval(_2.preprocess(_2a4).code());
};
var _2a3=function(_2a5,aURL,_2a6){
this._URL=new CFURL(aURL);
_2a5=_2a5.replace(/^#[^\n]+\n/,"\n");
this._currentSelector="";
this._currentClass="";
this._currentSuperClass="";
this._currentSuperMetaClass="";
this._buffer=new _2a0();
this._preprocessed=NULL;
this._dependencies=[];
this._tokens=new _29a(_2a5);
this._flags=_2a6;
this._classMethod=false;
this._executable=NULL;
this._classLookupTable={};
this._classVars={};
var _2a7=new objj_class();
for(var i in _2a7){
this._classVars[i]=1;
}
this.preprocess(this._tokens,this._buffer);
};
_2a3.prototype.setClassInfo=function(_2a8,_2a9,_2aa){
this._classLookupTable[_2a8]={superClassName:_2a9,ivars:_2aa};
};
_2a3.prototype.getClassInfo=function(_2ab){
return this._classLookupTable[_2ab];
};
_2a3.prototype.allIvarNamesForClassName=function(_2ac){
var _2ad={},_2ae=this.getClassInfo(_2ac);
while(_2ae){
for(var i in _2ae.ivars){
_2ad[i]=1;
}
_2ae=this.getClassInfo(_2ae.superClassName);
}
return _2ad;
};
_2.Preprocessor=_2a3;
_2a3.Flags={};
_2a3.Flags.IncludeDebugSymbols=1<<0;
_2a3.Flags.IncludeTypeSignatures=1<<1;
_2a3.prototype.executable=function(){
if(!this._executable){
this._executable=new _2af(this._buffer.toString(),this._dependencies,this._URL);
}
return this._executable;
};
_2a3.prototype.accessors=function(_2b0){
var _2b1=_2b0.skip_whitespace(),_2b2={};
if(_2b1!=_295){
_2b0.previous();
return _2b2;
}
while((_2b1=_2b0.skip_whitespace())!=_296){
var name=_2b1,_2b3=true;
if(!/^\w+$/.test(name)){
throw new SyntaxError(this.error_message("*** @accessors attribute name not valid."));
}
if((_2b1=_2b0.skip_whitespace())==_283){
_2b3=_2b0.skip_whitespace();
if(!/^\w+$/.test(_2b3)){
throw new SyntaxError(this.error_message("*** @accessors attribute value not valid."));
}
if(name=="setter"){
if((_2b1=_2b0.next())!=_286){
throw new SyntaxError(this.error_message("*** @accessors setter attribute requires argument with \":\" at end of selector name."));
}
_2b3+=":";
}
_2b1=_2b0.skip_whitespace();
}
_2b2[name]=_2b3;
if(_2b1==_296){
break;
}
if(_2b1!=_287){
throw new SyntaxError(this.error_message("*** Expected ',' or ')' in @accessors attribute list."));
}
}
return _2b2;
};
_2a3.prototype.brackets=function(_2b4,_2b5){
var _2b6=[];
while(this.preprocess(_2b4,NULL,NULL,NULL,_2b6[_2b6.length]=[])){
}
if(_2b6[0].length===1){
_2b5.atoms[_2b5.atoms.length]="[";
_2b5.atoms[_2b5.atoms.length]=_2b6[0][0];
_2b5.atoms[_2b5.atoms.length]="]";
}else{
var _2b7=new _2a0();
if(_2b6[0][0].atoms[0]==_27e){
_2b5.atoms[_2b5.atoms.length]="objj_msgSendSuper(";
_2b5.atoms[_2b5.atoms.length]="{ receiver:self, super_class:"+(this._classMethod?this._currentSuperMetaClass:this._currentSuperClass)+" }";
}else{
_2b5.atoms[_2b5.atoms.length]="objj_msgSend(";
_2b5.atoms[_2b5.atoms.length]=_2b6[0][0];
}
_2b7.atoms[_2b7.atoms.length]=_2b6[0][1];
var _2b8=1,_2b9=_2b6.length,_2ba=new _2a0();
for(;_2b8<_2b9;++_2b8){
var pair=_2b6[_2b8];
_2b7.atoms[_2b7.atoms.length]=pair[1];
_2ba.atoms[_2ba.atoms.length]=", "+pair[0];
}
_2b5.atoms[_2b5.atoms.length]=", \"";
_2b5.atoms[_2b5.atoms.length]=_2b7;
_2b5.atoms[_2b5.atoms.length]="\"";
_2b5.atoms[_2b5.atoms.length]=_2ba;
_2b5.atoms[_2b5.atoms.length]=")";
}
};
_2a3.prototype.directive=function(_2bb,_2bc,_2bd){
var _2be=_2bc?_2bc:new _2a0(),_2bf=_2bb.next();
if(_2bf.charAt(0)==_290){
_2be.atoms[_2be.atoms.length]=_2bf;
}else{
if(_2bf===_274){
_2bb.skip_whitespace();
return;
}else{
if(_2bf===_277){
this.implementation(_2bb,_2be);
}else{
if(_2bf===_278){
this._import(_2bb);
}else{
if(_2bf===_27d){
this.selector(_2bb,_2be);
}
}
}
}
}
if(!_2bc){
return _2be;
}
};
_2a3.prototype.hash=function(_2c0,_2c1){
var _2c2=_2c1?_2c1:new _2a0(),_2c3=_2c0.next();
if(_2c3===_281){
_2c3=_2c0.skip_whitespace();
if(_2c3===_282){
while((_2c3=_2c0.next()).indexOf("\n")<0){
}
}
}else{
throw new SyntaxError(this.error_message("*** Expected \"pragma\" to follow # but instead saw \""+_2c3+"\"."));
}
};
_2a3.prototype.implementation=function(_2c4,_2c5){
var _2c6=_2c5,_2c7="",_2c8=NO,_2c9=_2c4.skip_whitespace(),_2ca="Nil",_2cb=new _2a0(),_2cc=new _2a0();
if(!(/^\w/).test(_2c9)){
throw new Error(this.error_message("*** Expected class name, found \""+_2c9+"\"."));
}
this._currentSuperClass="objj_getClass(\""+_2c9+"\").super_class";
this._currentSuperMetaClass="objj_getMetaClass(\""+_2c9+"\").super_class";
this._currentClass=_2c9;
this._currentSelector="";
if((_2c7=_2c4.skip_whitespace())==_295){
_2c7=_2c4.skip_whitespace();
if(_2c7==_296){
throw new SyntaxError(this.error_message("*** Can't Have Empty Category Name for class \""+_2c9+"\"."));
}
if(_2c4.skip_whitespace()!=_296){
throw new SyntaxError(this.error_message("*** Improper Category Definition for class \""+_2c9+"\"."));
}
_2c6.atoms[_2c6.atoms.length]="{\nvar the_class = objj_getClass(\""+_2c9+"\")\n";
_2c6.atoms[_2c6.atoms.length]="if(!the_class) throw new SyntaxError(\"*** Could not find definition for class \\\""+_2c9+"\\\"\");\n";
_2c6.atoms[_2c6.atoms.length]="var meta_class = the_class.isa;";
}else{
if(_2c7==_286){
_2c7=_2c4.skip_whitespace();
if(!_299.test(_2c7)){
throw new SyntaxError(this.error_message("*** Expected class name, found \""+_2c7+"\"."));
}
_2ca=_2c7;
_2c7=_2c4.skip_whitespace();
}
_2c6.atoms[_2c6.atoms.length]="{var the_class = objj_allocateClassPair("+_2ca+", \""+_2c9+"\"),\nmeta_class = the_class.isa;";
if(_2c7==_28c){
var _2cd={},_2ce=0,_2cf=[],_2d0,_2d1={},_2d2=[];
while((_2c7=_2c4.skip_whitespace())&&_2c7!=_28d){
if(_2c7===_291){
_2c7=_2c4.next();
if(_2c7===_273){
_2d0=this.accessors(_2c4);
}else{
if(_2c7!==_27a){
throw new SyntaxError(this.error_message("*** Unexpected '@' token in ivar declaration ('@"+_2c7+"')."));
}else{
_2d2.push("@"+_2c7);
}
}
}else{
if(_2c7==_28a){
if(_2ce++===0){
_2c6.atoms[_2c6.atoms.length]="class_addIvars(the_class, [";
}else{
_2c6.atoms[_2c6.atoms.length]=", ";
}
var name=_2cf[_2cf.length-1];
if(this._flags&_2a3.Flags.IncludeTypeSignatures){
_2c6.atoms[_2c6.atoms.length]="new objj_ivar(\""+name+"\", \""+_2d2.slice(0,_2d2.length-1).join(" ")+"\")";
}else{
_2c6.atoms[_2c6.atoms.length]="new objj_ivar(\""+name+"\")";
}
_2cd[name]=1;
_2cf=[];
_2d2=[];
if(_2d0){
_2d1[name]=_2d0;
_2d0=NULL;
}
}else{
_2cf.push(_2c7);
_2d2.push(_2c7);
}
}
}
if(_2cf.length){
throw new SyntaxError(this.error_message("*** Expected ';' in ivar declaration, found '}'."));
}
if(_2ce){
_2c6.atoms[_2c6.atoms.length]="]);\n";
}
if(!_2c7){
throw new SyntaxError(this.error_message("*** Expected '}'"));
}
this.setClassInfo(_2c9,_2ca==="Nil"?null:_2ca,_2cd);
var _2cd=this.allIvarNamesForClassName(_2c9);
for(ivar_name in _2d1){
var _2d3=_2d1[ivar_name],_2d4=_2d3["property"]||ivar_name;
var _2d5=_2d3["getter"]||_2d4,_2d6="(id)"+_2d5+"\n{\nreturn "+ivar_name+";\n}";
if(_2cb.atoms.length!==0){
_2cb.atoms[_2cb.atoms.length]=",\n";
}
_2cb.atoms[_2cb.atoms.length]=this.method(new _29a(_2d6),_2cd);
if(_2d3["readonly"]){
continue;
}
var _2d7=_2d3["setter"];
if(!_2d7){
var _2d8=_2d4.charAt(0)=="_"?1:0;
_2d7=(_2d8?"_":"")+"set"+_2d4.substr(_2d8,1).toUpperCase()+_2d4.substring(_2d8+1)+":";
}
var _2d9="(void)"+_2d7+"(id)newValue\n{\n";
if(_2d3["copy"]){
_2d9+="if ("+ivar_name+" !== newValue)\n"+ivar_name+" = [newValue copy];\n}";
}else{
_2d9+=ivar_name+" = newValue;\n}";
}
if(_2cb.atoms.length!==0){
_2cb.atoms[_2cb.atoms.length]=",\n";
}
_2cb.atoms[_2cb.atoms.length]=this.method(new _29a(_2d9),_2cd);
}
}else{
_2c4.previous();
}
_2c6.atoms[_2c6.atoms.length]="objj_registerClassPair(the_class);\n";
}
if(!_2cd){
var _2cd=this.allIvarNamesForClassName(_2c9);
}
while((_2c7=_2c4.skip_whitespace())){
if(_2c7==_284){
this._classMethod=true;
if(_2cc.atoms.length!==0){
_2cc.atoms[_2cc.atoms.length]=", ";
}
_2cc.atoms[_2cc.atoms.length]=this.method(_2c4,this._classVars);
}else{
if(_2c7==_285){
this._classMethod=false;
if(_2cb.atoms.length!==0){
_2cb.atoms[_2cb.atoms.length]=", ";
}
_2cb.atoms[_2cb.atoms.length]=this.method(_2c4,_2cd);
}else{
if(_2c7==_292){
this.hash(_2c4,_2c6);
}else{
if(_2c7==_291){
if((_2c7=_2c4.next())==_275){
break;
}else{
throw new SyntaxError(this.error_message("*** Expected \"@end\", found \"@"+_2c7+"\"."));
}
}
}
}
}
}
if(_2cb.atoms.length!==0){
_2c6.atoms[_2c6.atoms.length]="class_addMethods(the_class, [";
_2c6.atoms[_2c6.atoms.length]=_2cb;
_2c6.atoms[_2c6.atoms.length]="]);\n";
}
if(_2cc.atoms.length!==0){
_2c6.atoms[_2c6.atoms.length]="class_addMethods(meta_class, [";
_2c6.atoms[_2c6.atoms.length]=_2cc;
_2c6.atoms[_2c6.atoms.length]="]);\n";
}
_2c6.atoms[_2c6.atoms.length]="}";
this._currentClass="";
};
_2a3.prototype._import=function(_2da){
var _2db="",_2dc=_2da.skip_whitespace(),_2dd=(_2dc!==_28b);
if(_2dc===_28b){
while((_2dc=_2da.next())&&_2dc!==_28e){
_2db+=_2dc;
}
if(!_2dc){
throw new SyntaxError(this.error_message("*** Unterminated import statement."));
}
}else{
if(_2dc.charAt(0)===_290){
_2db=_2dc.substr(1,_2dc.length-2);
}else{
throw new SyntaxError(this.error_message("*** Expecting '<' or '\"', found \""+_2dc+"\"."));
}
}
this._buffer.atoms[this._buffer.atoms.length]="objj_executeFile(\"";
this._buffer.atoms[this._buffer.atoms.length]=_2db;
this._buffer.atoms[this._buffer.atoms.length]=_2dd?"\", YES);":"\", NO);";
this._dependencies.push(new _2de(new CFURL(_2db),_2dd));
};
_2a3.prototype.method=function(_2df,_2e0){
var _2e1=new _2a0(),_2e2,_2e3="",_2e4=[],_2e5=[null];
_2e0=_2e0||{};
while((_2e2=_2df.skip_whitespace())&&_2e2!==_28c&&_2e2!==_28a){
if(_2e2==_286){
var type="";
_2e3+=_2e2;
_2e2=_2df.skip_whitespace();
if(_2e2==_295){
while((_2e2=_2df.skip_whitespace())&&_2e2!=_296){
type+=_2e2;
}
_2e2=_2df.skip_whitespace();
}
_2e5[_2e4.length+1]=type||null;
_2e4[_2e4.length]=_2e2;
if(_2e2 in _2e0){
CPLog.warn(this.error_message("*** Warning: Method ( "+_2e3+" ) uses a parameter name that is already in use ( "+_2e2+" )"));
}
}else{
if(_2e2==_295){
var type="";
while((_2e2=_2df.skip_whitespace())&&_2e2!=_296){
type+=_2e2;
}
_2e5[0]=type||null;
}else{
if(_2e2==_287){
if((_2e2=_2df.skip_whitespace())!=_288||_2df.next()!=_288||_2df.next()!=_288){
throw new SyntaxError(this.error_message("*** Argument list expected after ','."));
}
}else{
_2e3+=_2e2;
}
}
}
}
if(_2e2===_28a){
_2e2=_2df.skip_whitespace();
if(_2e2!==_28c){
throw new SyntaxError(this.error_message("Invalid semi-colon in method declaration. "+"Semi-colons are allowed only to terminate the method signature, before the open brace."));
}
}
var _2e6=0,_2e7=_2e4.length;
_2e1.atoms[_2e1.atoms.length]="new objj_method(sel_getUid(\"";
_2e1.atoms[_2e1.atoms.length]=_2e3;
_2e1.atoms[_2e1.atoms.length]="\"), function";
this._currentSelector=_2e3;
if(this._flags&_2a3.Flags.IncludeDebugSymbols){
_2e1.atoms[_2e1.atoms.length]=" $"+this._currentClass+"__"+_2e3.replace(/:/g,"_");
}
_2e1.atoms[_2e1.atoms.length]="(self, _cmd";
for(;_2e6<_2e7;++_2e6){
_2e1.atoms[_2e1.atoms.length]=", ";
_2e1.atoms[_2e1.atoms.length]=_2e4[_2e6];
}
_2e1.atoms[_2e1.atoms.length]=")\n{ with(self)\n{";
_2e1.atoms[_2e1.atoms.length]=this.preprocess(_2df,NULL,_28d,_28c);
_2e1.atoms[_2e1.atoms.length]="}\n}";
if(this._flags&_2a3.Flags.IncludeDebugSymbols){
_2e1.atoms[_2e1.atoms.length]=","+JSON.stringify(_2e5);
}
_2e1.atoms[_2e1.atoms.length]=")";
this._currentSelector="";
return _2e1;
};
_2a3.prototype.preprocess=function(_2e8,_2e9,_2ea,_2eb,_2ec){
var _2ed=_2e9?_2e9:new _2a0(),_2ee=0,_2ef="";
if(_2ec){
_2ec[0]=_2ed;
var _2f0=false,_2f1=[0,0,0];
}
while((_2ef=_2e8.next())&&((_2ef!==_2ea)||_2ee)){
if(_2ec){
if(_2ef===_294){
++_2f1[2];
}else{
if(_2ef===_28c){
++_2f1[0];
}else{
if(_2ef===_28d){
--_2f1[0];
}else{
if(_2ef===_295){
++_2f1[1];
}else{
if(_2ef===_296){
--_2f1[1];
}else{
if((_2ef===_286&&_2f1[2]--===0||(_2f0=(_2ef===_293)))&&_2f1[0]===0&&_2f1[1]===0){
_2e8.push();
var _2f2=_2f0?_2e8.skip_whitespace(true):_2e8.previous(),_2f3=_297.test(_2f2);
if(_2f3||_299.test(_2f2)&&_297.test(_2e8.previous())){
_2e8.push();
var last=_2e8.skip_whitespace(true),_2f4=true,_2f5=false;
if(last==="+"||last==="-"){
if(_2e8.previous()!==last){
_2f4=false;
}else{
last=_2e8.skip_whitespace(true);
_2f5=true;
}
}
_2e8.pop();
_2e8.pop();
if(_2f4&&((!_2f5&&(last===_28d))||last===_296||last===_293||last===_288||_298.test(last)||last.charAt(last.length-1)==="\""||last.charAt(last.length-1)==="'"||_299.test(last)&&!/^(new|return|case|var)$/.test(last))){
if(_2f3){
_2ec[1]=":";
}else{
_2ec[1]=_2f2;
if(!_2f0){
_2ec[1]+=":";
}
var _2ee=_2ed.atoms.length;
while(_2ed.atoms[_2ee--]!==_2f2){
}
_2ed.atoms.length=_2ee;
}
return !_2f0;
}
if(_2f0){
return NO;
}
}
_2e8.pop();
if(_2f0){
return NO;
}
}
}
}
}
}
}
_2f1[2]=MAX(_2f1[2],0);
}
if(_2eb){
if(_2ef===_2eb){
++_2ee;
}else{
if(_2ef===_2ea){
--_2ee;
}
}
}
if(_2ef===_276){
var _2f6="";
while((_2ef=_2e8.next())&&_2ef!==_295&&!(/^\w/).test(_2ef)){
_2f6+=_2ef;
}
if(_2ef===_295){
if(_2eb===_295){
++_2ee;
}
_2ed.atoms[_2ed.atoms.length]="function"+_2f6+"(";
if(_2ec){
++_2f1[1];
}
}else{
_2ed.atoms[_2ed.atoms.length]=_2ef+" = function";
}
}else{
if(_2ef==_291){
this.directive(_2e8,_2ed);
}else{
if(_2ef==_292){
this.hash(_2e8,_2ed);
}else{
if(_2ef==_28f){
this.brackets(_2e8,_2ed);
}else{
_2ed.atoms[_2ed.atoms.length]=_2ef;
}
}
}
}
}
if(_2ec){
throw new SyntaxError(this.error_message("*** Expected ']' - Unterminated message send or array."));
}
if(!_2e9){
return _2ed;
}
};
_2a3.prototype.selector=function(_2f7,_2f8){
var _2f9=_2f8?_2f8:new _2a0();
_2f9.atoms[_2f9.atoms.length]="sel_getUid(\"";
if(_2f7.skip_whitespace()!=_295){
throw new SyntaxError(this.error_message("*** Expected '('"));
}
var _2fa=_2f7.skip_whitespace();
if(_2fa==_296){
throw new SyntaxError(this.error_message("*** Unexpected ')', can't have empty @selector()"));
}
_2f8.atoms[_2f8.atoms.length]=_2fa;
var _2fb,_2fc=true;
while((_2fb=_2f7.next())&&_2fb!=_296){
if(_2fc&&/^\d+$/.test(_2fb)||!(/^(\w|$|\:)/.test(_2fb))){
if(!(/\S/).test(_2fb)){
if(_2f7.skip_whitespace()==_296){
break;
}else{
throw new SyntaxError(this.error_message("*** Unexpected whitespace in @selector()."));
}
}else{
throw new SyntaxError(this.error_message("*** Illegal character '"+_2fb+"' in @selector()."));
}
}
_2f9.atoms[_2f9.atoms.length]=_2fb;
_2fc=(_2fb==_286);
}
_2f9.atoms[_2f9.atoms.length]="\")";
if(!_2f8){
return _2f9;
}
};
_2a3.prototype.error_message=function(_2fd){
return _2fd+" <Context File: "+this._URL+(this._currentClass?" Class: "+this._currentClass:"")+(this._currentSelector?" Method: "+this._currentSelector:"")+">";
};
if(typeof _2!="undefined"&&!_2.acorn){
_2.acorn={};
_2.acorn.walk={};
}
(function(_2fe){
"use strict";
_2fe.version="0.1.01";
var _2ff,_300,_301,_302;
_2fe.parse=function(inpt,opts){
_300=String(inpt);
_301=_300.length;
_303(opts);
_304();
return _305(_2ff.program);
};
var _306=_2fe.defaultOptions={ecmaVersion:5,strictSemicolons:false,allowTrailingCommas:true,forbidReserved:false,trackComments:false,trackSpaces:false,locations:false,ranges:false,program:null,sourceFile:null,objj:true,preprocess:true,preprocessAddMacro:_307,preprocessGetMacro:_308,preprocessUndefineMacro:_309,preprocessIsMacro:_30a};
function _303(opts){
_2ff=opts||{};
for(var opt in _306){
if(!_2ff.hasOwnProperty(opt)){
_2ff[opt]=_306[opt];
}
}
_302=_2ff.sourceFile||null;
};
var _30b;
var _30c;
function _307(_30d){
_30b[_30d.identifier]=_30d;
_30c=null;
};
function _308(_30e){
return _30b[_30e];
};
function _309(_30f){
delete _30b[_30f];
_30c=null;
};
function _30a(_310){
var x=Object.keys(_30b).join(" ");
return (_30c||(_30c=_311(x)))(_310);
};
var _312=_2fe.getLineInfo=function(_313,_314){
for(var line=1,cur=0;;){
_315.lastIndex=cur;
var _316=_315.exec(_313);
if(_316&&_316.index<_314){
++line;
cur=_316.index+_316[0].length;
}else{
break;
}
}
return {line:line,column:_314-cur,lineStart:cur,lineEnd:(_316?_316.index+_316[0].length:_313.length)};
};
_2fe.tokenize=function(inpt,opts){
_300=String(inpt);
_301=_300.length;
_303(opts);
_304();
var t={};
function _317(_318){
_3bd(_318);
t.start=_320;
t.end=_321;
t.startLoc=_322;
t.endLoc=_323;
t.type=_324;
t.value=_325;
return t;
};
_317.jumpTo=function(pos,_319){
_31a=pos;
if(_2ff.locations){
_31b=_31c=_315.lastIndex=0;
var _31d;
while((_31d=_315.exec(_300))&&_31d.index<pos){
++_31b;
_31c=_31d.index+_31d[0].length;
}
}
var ch=_300.charAt(pos-1);
_31e=_319;
_31f();
};
return _317;
};
var _31a;
var _320,_321;
var _322,_323;
var _324,_325;
var _326,_327,_328;
var _329,_32a,_32b;
var _31e,_32c,_32d;
var _31b,_31c,_32e;
var _32f,_330;
var _331,_332,_333;
var _334;
var _335;
var _336,_337,_338;
var _339,_33a,_33b,_33c,_33d;
var _33e,_33f;
var _340=[];
var _341=false;
function _342(pos,_343){
if(typeof pos=="number"){
pos=_312(_300,pos);
}
var _344=new SyntaxError(_343);
_344.line=pos.line;
_344.column=pos.column;
_344.lineStart=pos.lineStart;
_344.lineEnd=pos.lineEnd;
_344.fileName=_302;
throw _344;
};
var _345={type:"num"},_346={type:"regexp"},_347={type:"string"};
var _348={type:"name"},_349={type:"eof"},_34a={type:"eol"};
var _34b={keyword:"break"},_34c={keyword:"case",beforeExpr:true},_34d={keyword:"catch"};
var _34e={keyword:"continue"},_34f={keyword:"debugger"},_350={keyword:"default"};
var _351={keyword:"do",isLoop:true},_352={keyword:"else",beforeExpr:true};
var _353={keyword:"finally"},_354={keyword:"for",isLoop:true},_355={keyword:"function"};
var _356={keyword:"if"},_357={keyword:"return",beforeExpr:true},_358={keyword:"switch"};
var _359={keyword:"throw",beforeExpr:true},_35a={keyword:"try"},_35b={keyword:"var"};
var _35c={keyword:"while",isLoop:true},_35d={keyword:"with"},_35e={keyword:"new",beforeExpr:true};
var _35f={keyword:"this"};
var _360={keyword:"void",prefix:true,beforeExpr:true};
var _361={keyword:"null",atomValue:null},_362={keyword:"true",atomValue:true};
var _363={keyword:"false",atomValue:false};
var _364={keyword:"in",binop:7,beforeExpr:true};
var _365={keyword:"implementation"},_366={keyword:"outlet"},_367={keyword:"accessors"};
var _368={keyword:"end"},_369={keyword:"import",afterImport:true};
var _36a={keyword:"action"},_36b={keyword:"selector"},_36c={keyword:"class"},_36d={keyword:"global"};
var _36e={keyword:"{"},_36f={keyword:"["};
var _370={keyword:"ref"},_371={keyword:"deref"};
var _372={keyword:"filename"},_373={keyword:"unsigned",okAsIdent:true},_374={keyword:"signed",okAsIdent:true};
var _375={keyword:"byte",okAsIdent:true},_376={keyword:"char",okAsIdent:true},_377={keyword:"short",okAsIdent:true};
var _378={keyword:"int",okAsIdent:true},_379={keyword:"long",okAsIdent:true},_37a={keyword:"#"};
var _37b={keyword:"define"};
var _37c={keyword:"undef"};
var _37d={keyword:"ifdef"};
var _37e={keyword:"ifndef"};
var _37f={keyword:"if"};
var _380={keyword:"else"};
var _381={keyword:"endif"};
var _382={keyword:"elif"};
var _383={keyword:"pragma"};
var _384={keyword:"defined"};
var _385={keyword:"\\"};
var _386={type:"preprocessParamItem"};
var _387={"break":_34b,"case":_34c,"catch":_34d,"continue":_34e,"debugger":_34f,"default":_350,"do":_351,"else":_352,"finally":_353,"for":_354,"function":_355,"if":_356,"return":_357,"switch":_358,"throw":_359,"try":_35a,"var":_35b,"while":_35c,"with":_35d,"null":_361,"true":_362,"false":_363,"new":_35e,"in":_364,"instanceof":{keyword:"instanceof",binop:7,beforeExpr:true},"this":_35f,"typeof":{keyword:"typeof",prefix:true,beforeExpr:true},"void":_360,"delete":{keyword:"delete",prefix:true,beforeExpr:true}};
var _388={"IBAction":_36a,"IBOutlet":_366,"unsigned":_373,"signed":_374,"byte":_375,"char":_376,"short":_377,"int":_378,"long":_379};
var _389={"implementation":_365,"outlet":_366,"accessors":_367,"end":_368,"import":_369,"action":_36a,"selector":_36b,"class":_36c,"global":_36d,"ref":_370,"deref":_371};
var _38a={"define":_37b,"pragma":_383,"ifdef":_37d,"ifndef":_37e,"undef":_37c,"if":_37f,"endif":_381,"else":_380,"elif":_382,"defined":_384};
var _38b={type:"[",beforeExpr:true},_38c={type:"]"},_38d={type:"{",beforeExpr:true};
var _38e={type:"}"},_38f={type:"(",beforeExpr:true},_390={type:")"};
var _391={type:",",beforeExpr:true},_392={type:";",beforeExpr:true};
var _393={type:":",beforeExpr:true},_394={type:"."},_395={type:"?",beforeExpr:true};
var _396={type:"@"},_397={type:"..."},_398={type:"#"};
var _399={binop:10,beforeExpr:true,preprocess:true},_39a={isAssign:true,beforeExpr:true,preprocess:true};
var _39b={isAssign:true,beforeExpr:true},_39c={binop:9,prefix:true,beforeExpr:true,preprocess:true};
var _39d={postfix:true,prefix:true,isUpdate:true},_39e={prefix:true,beforeExpr:true};
var _39f={binop:1,beforeExpr:true,preprocess:true},_3a0={binop:2,beforeExpr:true,preprocess:true};
var _3a1={binop:3,beforeExpr:true,preprocess:true},_3a2={binop:4,beforeExpr:true,preprocess:true};
var _3a3={binop:5,beforeExpr:true,preprocess:true},_3a4={binop:6,beforeExpr:true,preprocess:true};
var _3a5={binop:7,beforeExpr:true,preprocess:true},_3a6={binop:8,beforeExpr:true,preprocess:true};
var _3a7={binop:10,beforeExpr:true,preprocess:true};
_2fe.tokTypes={bracketL:_38b,bracketR:_38c,braceL:_38d,braceR:_38e,parenL:_38f,parenR:_390,comma:_391,semi:_392,colon:_393,dot:_394,question:_395,slash:_399,eq:_39a,name:_348,eof:_349,num:_345,regexp:_346,string:_347};
for(var kw in _387){
_2fe.tokTypes[kw]=_387[kw];
}
function _311(_3a8){
_3a8=_3a8.split(" ");
var f="",cats=[];
out:
for(var i=0;i<_3a8.length;++i){
for(var j=0;j<cats.length;++j){
if(cats[j][0].length==_3a8[i].length){
cats[j].push(_3a8[i]);
continue out;
}
}
cats.push([_3a8[i]]);
}
function _3a9(arr){
if(arr.length==1){
return f+="return str === "+JSON.stringify(arr[0])+";";
}
f+="switch(str){";
for(var i=0;i<arr.length;++i){
f+="case "+JSON.stringify(arr[i])+":";
}
f+="return true}return false;";
};
if(cats.length>3){
cats.sort(function(a,b){
return b.length-a.length;
});
f+="switch(str.length){";
for(var i=0;i<cats.length;++i){
var cat=cats[i];
f+="case "+cat[0].length+":";
_3a9(cat);
}
f+="}";
}else{
_3a9(_3a8);
}
return new Function("str",f);
};
_2fe.makePredicate=_311;
var _3aa=_311("abstract boolean byte char class double enum export extends final float goto implements import int interface long native package private protected public short static super synchronized throws transient volatile");
var _3ab=_311("class enum extends super const export import");
var _3ac=_311("implements interface let package private protected public static yield");
var _3ad=_311("eval arguments");
var _3ae=_311("break case catch continue debugger default do else finally for function if return switch throw try var while with null true false instanceof typeof void delete new in this");
var _3af=_311("IBAction IBOutlet byte char short int long unsigned signed");
var _3b0=_311("define pragma if ifdef ifndef else elif endif defined");
var _3b1=/[\u1680\u180e\u2000-\u200a\u2028\u2029\u202f\u205f\u3000\ufeff]/;
var _3b2=/[\u1680\u180e\u2000-\u200a\u202f\u205f\u3000\ufeff]/;
var _3b3="ªµºÀ-ÖØ-öø-ˁˆ-ˑˠ-ˤˬˮͰ-ʹͶͷͺ-ͽΆΈ-ΊΌΎ-ΡΣ-ϵϷ-ҁҊ-ԧԱ-Ֆՙա-ևא-תװ-ײؠ-يٮٯٱ-ۓەۥۦۮۯۺ-ۼۿܐܒ-ܯݍ-ޥޱߊ-ߪߴߵߺࠀ-ࠕࠚࠤࠨࡀ-ࡘࢠࢢ-ࢬऄ-हऽॐक़-ॡॱ-ॷॹ-ॿঅ-ঌএঐও-নপ-রলশ-হঽৎড়ঢ়য়-ৡৰৱਅ-ਊਏਐਓ-ਨਪ-ਰਲਲ਼ਵਸ਼ਸਹਖ਼-ੜਫ਼ੲ-ੴઅ-ઍએ-ઑઓ-નપ-રલળવ-હઽૐૠૡଅ-ଌଏଐଓ-ନପ-ରଲଳଵ-ହଽଡ଼ଢ଼ୟ-ୡୱஃஅ-ஊஎ-ஐஒ-கஙசஜஞடணதந-பம-ஹௐఅ-ఌఎ-ఐఒ-నప-ళవ-హఽౘౙౠౡಅ-ಌಎ-ಐಒ-ನಪ-ಳವ-ಹಽೞೠೡೱೲഅ-ഌഎ-ഐഒ-ഺഽൎൠൡൺ-ൿඅ-ඖක-නඳ-රලව-ෆก-ะาำเ-ๆກຂຄງຈຊຍດ-ທນ-ຟມ-ຣລວສຫອ-ະາຳຽເ-ໄໆໜ-ໟༀཀ-ཇཉ-ཬྈ-ྌက-ဪဿၐ-ၕၚ-ၝၡၥၦၮ-ၰၵ-ႁႎႠ-ჅჇჍა-ჺჼ-ቈቊ-ቍቐ-ቖቘቚ-ቝበ-ኈኊ-ኍነ-ኰኲ-ኵኸ-ኾዀዂ-ዅወ-ዖዘ-ጐጒ-ጕጘ-ፚᎀ-ᎏᎠ-Ᏼᐁ-ᙬᙯ-ᙿᚁ-ᚚᚠ-ᛪᛮ-ᛰᜀ-ᜌᜎ-ᜑᜠ-ᜱᝀ-ᝑᝠ-ᝬᝮ-ᝰក-ឳៗៜᠠ-ᡷᢀ-ᢨᢪᢰ-ᣵᤀ-ᤜᥐ-ᥭᥰ-ᥴᦀ-ᦫᧁ-ᧇᨀ-ᨖᨠ-ᩔᪧᬅ-ᬳᭅ-ᭋᮃ-ᮠᮮᮯᮺ-ᯥᰀ-ᰣᱍ-ᱏᱚ-ᱽᳩ-ᳬᳮ-ᳱᳵᳶᴀ-ᶿḀ-ἕἘ-Ἕἠ-ὅὈ-Ὅὐ-ὗὙὛὝὟ-ώᾀ-ᾴᾶ-ᾼιῂ-ῄῆ-ῌῐ-ΐῖ-Ίῠ-Ῥῲ-ῴῶ-ῼⁱⁿₐ-ₜℂℇℊ-ℓℕℙ-ℝℤΩℨK-ℭℯ-ℹℼ-ℿⅅ-ⅉⅎⅠ-ↈⰀ-Ⱞⰰ-ⱞⱠ-ⳤⳫ-ⳮⳲⳳⴀ-ⴥⴧⴭⴰ-ⵧⵯⶀ-ⶖⶠ-ⶦⶨ-ⶮⶰ-ⶶⶸ-ⶾⷀ-ⷆⷈ-ⷎⷐ-ⷖⷘ-ⷞⸯ々-〇〡-〩〱-〵〸-〼ぁ-ゖゝ-ゟァ-ヺー-ヿㄅ-ㄭㄱ-ㆎㆠ-ㆺㇰ-ㇿ㐀-䶵一-鿌ꀀ-ꒌꓐ-ꓽꔀ-ꘌꘐ-ꘟꘪꘫꙀ-ꙮꙿ-ꚗꚠ-ꛯꜗ-ꜟꜢ-ꞈꞋ-ꞎꞐ-ꞓꞠ-Ɦꟸ-ꠁꠃ-ꠅꠇ-ꠊꠌ-ꠢꡀ-ꡳꢂ-ꢳꣲ-ꣷꣻꤊ-ꤥꤰ-ꥆꥠ-ꥼꦄ-ꦲꧏꨀ-ꨨꩀ-ꩂꩄ-ꩋꩠ-ꩶꩺꪀ-ꪯꪱꪵꪶꪹ-ꪽꫀꫂꫛ-ꫝꫠ-ꫪꫲ-ꫴꬁ-ꬆꬉ-ꬎꬑ-ꬖꬠ-ꬦꬨ-ꬮꯀ-ꯢ가-힣ힰ-ퟆퟋ-ퟻ豈-舘並-龎ﬀ-ﬆﬓ-ﬗיִײַ-ﬨשׁ-זּטּ-לּמּנּסּףּפּצּ-ﮱﯓ-ﴽﵐ-ﶏﶒ-ﷇﷰ-ﷻﹰ-ﹴﹶ-ﻼＡ-Ｚａ-ｚｦ-ﾾￂ-ￇￊ-ￏￒ-ￗￚ-ￜ";
var _3b4="ͱ-ʹ҃-֑҇-ׇֽֿׁׂׅׄؐ-ؚؠ-ىٲ-ۓۧ-ۨۻ-ۼܰ-݊ࠀ-ࠔࠛ-ࠣࠥ-ࠧࠩ-࠭ࡀ-ࡗࣤ-ࣾऀ-ःऺ-़ा-ॏ॑-ॗॢ-ॣ०-९ঁ-ঃ়া-ৄেৈৗয়-ৠਁ-ਃ਼ਾ-ੂੇੈੋ-੍ੑ੦-ੱੵઁ-ઃ઼ા-ૅે-ૉો-્ૢ-ૣ૦-૯ଁ-ଃ଼ା-ୄେୈୋ-୍ୖୗୟ-ୠ୦-୯ஂா-ூெ-ைொ-்ௗ௦-௯ఁ-ఃె-ైొ-్ౕౖౢ-ౣ౦-౯ಂಃ಼ಾ-ೄೆ-ೈೊ-್ೕೖೢ-ೣ೦-೯ംഃെ-ൈൗൢ-ൣ൦-൯ංඃ්ා-ුූෘ-ෟෲෳิ-ฺเ-ๅ๐-๙ິ-ູ່-ໍ໐-໙༘༙༠-༩༹༵༷ཁ-ཇཱ-྄྆-྇ྍ-ྗྙ-ྼ࿆က-ဩ၀-၉ၧ-ၭၱ-ၴႂ-ႍႏ-ႝ፝-፟ᜎ-ᜐᜠ-ᜰᝀ-ᝐᝲᝳក-ឲ៝០-៩᠋-᠍᠐-᠙ᤠ-ᤫᤰ-᤻ᥑ-ᥭᦰ-ᧀᧈ-ᧉ᧐-᧙ᨀ-ᨕᨠ-ᩓ᩠-᩿᩼-᪉᪐-᪙ᭆ-ᭋ᭐-᭙᭫-᭳᮰-᮹᯦-᯳ᰀ-ᰢ᱀-᱉ᱛ-ᱽ᳐-᳒ᴀ-ᶾḁ-ἕ‌‍‿⁀⁔⃐-⃥⃜⃡-⃰ⶁ-ⶖⷠ-ⷿ〡-〨゙゚Ꙁ-ꙭꙴ-꙽ꚟ꛰-꛱ꟸ-ꠀ꠆ꠋꠣ-ꠧꢀ-ꢁꢴ-꣄꣐-꣙ꣳ-ꣷ꤀-꤉ꤦ-꤭ꤰ-ꥅꦀ-ꦃ꦳-꧀ꨀ-ꨧꩀ-ꩁꩌ-ꩍ꩐-꩙ꩻꫠ-ꫩꫲ-ꫳꯀ-ꯡ꯬꯭꯰-꯹ﬠ-ﬨ︀-️︠-︦︳︴﹍-﹏０-９＿";
var _3b5=new RegExp("["+_3b3+"]");
var _3b6=new RegExp("["+_3b3+_3b4+"]");
var _3b7=/[\n\r\u2028\u2029]/;
var _315=/\r\n|[\n\r\u2028\u2029]/g;
function _3b8(code){
if(code<65){
return code===36;
}
if(code<91){
return true;
}
if(code<97){
return code===95;
}
if(code<123){
return true;
}
return code>=170&&_3b5.test(String.fromCharCode(code));
};
function _3b9(code){
if(code<48){
return code===36;
}
if(code<58){
return true;
}
if(code<65){
return false;
}
if(code<91){
return true;
}
if(code<97){
return code===95;
}
if(code<123){
return true;
}
return code>=170&&_3b6.test(String.fromCharCode(code));
};
function _3ba(){
this.line=_31b;
this.column=_31a-_31c;
};
function _304(){
_30b=Object.create(null);
_31b=1;
_31a=_31c=0;
_31e=true;
_32c=null;
_32d=null;
_31f();
};
var _3bb=[_37f,_37d,_37e,_380,_382,_381];
function _3bc(type,val){
if(type in _3bb){
return _3bd();
}
_321=_31a;
if(_2ff.locations){
_323=new _3ba;
}
_324=type;
_31f();
if(_2ff.preprocess&&_300.charCodeAt(_31a)===35&&_300.charCodeAt(_31a+1)===35){
var val1=type===_348?val:type.keyword;
_31a+=2;
if(val1){
_31f();
_3bd();
var val2=_324===_348?_325:_324.keyword;
if(val2){
var _3be=""+val1+val2,code=_3be.charCodeAt(0),tok;
if(_3b8(code)){
tok=_3bf(_3be)!==false;
}
if(tok){
return tok;
}
tok=_3c0(code,_3bc);
if(tok===false){
_3c1();
}
return tok;
}else{
}
}
}
_325=val;
_328=_327;
_32b=_32a;
_327=_32c;
_32a=_32d;
_31e=type.beforeExpr;
_334=type.afterImport;
};
function _3c2(){
var _3c3=_2ff.onComment&&_2ff.locations&&new _3ba;
var _3c4=_31a,end=_300.indexOf("*/",_31a+=2);
if(end===-1){
_342(_31a-2,"Unterminated comment");
}
_31a=end+2;
if(_2ff.locations){
_315.lastIndex=_3c4;
var _3c5;
while((_3c5=_315.exec(_300))&&_3c5.index<_31a){
++_31b;
_31c=_3c5.index+_3c5[0].length;
}
}
if(_2ff.onComment){
_2ff.onComment(true,_300.slice(_3c4+2,end),_3c4,_31a,_3c3,_2ff.locations&&new _3ba);
}
if(_2ff.trackComments){
(_32c||(_32c=[])).push(_300.slice(_3c4,end));
}
};
function _3c6(){
var _3c7=_31a;
var _3c8=_2ff.onComment&&_2ff.locations&&new _3ba;
var ch=_300.charCodeAt(_31a+=2);
while(_31a<_301&&ch!==10&&ch!==13&&ch!==8232&&ch!==8329){
++_31a;
ch=_300.charCodeAt(_31a);
}
if(_2ff.onComment){
_2ff.onComment(false,_300.slice(_3c7+2,_31a),_3c7,_31a,_3c8,_2ff.locations&&new _3ba);
}
if(_2ff.trackComments){
(_32c||(_32c=[])).push(_300.slice(_3c7,_31a));
}
};
function _3c9(){
var ch=_300.charCodeAt(_31a);
var last;
while(_31a<_301&&((ch!==10&&ch!==13&&ch!==8232&&ch!==8329)||last===92)){
if(ch!=32&&ch!=9&&ch!=160&&(ch<5760||!_3b2.test(String.fromCharCode(ch)))){
last=ch;
}
ch=_300.charCodeAt(++_31a);
}
};
function _31f(){
_32c=null;
_32d=null;
var _3ca=_31a;
for(;;){
var ch=_300.charCodeAt(_31a);
if(ch===32){
++_31a;
}else{
if(ch===13){
++_31a;
var next=_300.charCodeAt(_31a);
if(next===10){
++_31a;
}
if(_2ff.locations){
++_31b;
_31c=_31a;
}
}else{
if(ch===10){
++_31a;
++_31b;
_31c=_31a;
}else{
if(ch<14&&ch>8){
++_31a;
}else{
if(ch===47){
var next=_300.charCodeAt(_31a+1);
if(next===42){
if(_2ff.trackSpaces){
(_32d||(_32d=[])).push(_300.slice(_3ca,_31a));
}
_3c2();
_3ca=_31a;
}else{
if(next===47){
if(_2ff.trackSpaces){
(_32d||(_32d=[])).push(_300.slice(_3ca,_31a));
}
_3c6();
_3ca=_31a;
}else{
break;
}
}
}else{
if(ch===160){
++_31a;
}else{
if(ch>=5760&&_3b1.test(String.fromCharCode(ch))){
++_31a;
}else{
if(_31a>=_301){
if(_2ff.preprocess&&_340.length){
var _3cb=_340.pop();
_31a=_3cb.end;
_300=_3cb.input;
_301=_3cb.inputLen;
_332=_3cb.lastEnd;
_331=_3cb.lastStart;
}else{
break;
}
}else{
break;
}
}
}
}
}
}
}
}
}
};
function _3cc(code,_3cd){
var next=_300.charCodeAt(_31a+1);
if(next>=48&&next<=57){
return _3ce(String.fromCharCode(code),_3cd);
}
if(next===46&&_2ff.objj&&_300.charCodeAt(_31a+2)===46){
_31a+=3;
return _3cd(_397);
}
++_31a;
return _3cd(_394);
};
function _3cf(_3d0){
var next=_300.charCodeAt(_31a+1);
if(_31e){
++_31a;
return _3d1();
}
if(next===61){
return _3d2(_39b,2,_3d0);
}
return _3d2(_399,1,_3d0);
};
function _3d3(_3d4){
var next=_300.charCodeAt(_31a+1);
if(next===61){
return _3d2(_39b,2,_3d4);
}
return _3d2(_3a7,1,_3d4);
};
function _3d5(code,_3d6){
var next=_300.charCodeAt(_31a+1);
if(next===code){
return _3d2(code===124?_39f:_3a0,2,_3d6);
}
if(next===61){
return _3d2(_39b,2,_3d6);
}
return _3d2(code===124?_3a1:_3a3,1,_3d6);
};
function _3d7(_3d8){
var next=_300.charCodeAt(_31a+1);
if(next===61){
return _3d2(_39b,2,_3d8);
}
return _3d2(_3a2,1,_3d8);
};
function _3d9(code,_3da){
var next=_300.charCodeAt(_31a+1);
if(next===code){
return _3d2(_39d,2,_3da);
}
if(next===61){
return _3d2(_39b,2,_3da);
}
return _3d2(_39c,1,_3da);
};
function _3db(code,_3dc){
if(_334&&_2ff.objj&&code===60){
var str=[];
for(;;){
if(_31a>=_301){
_342(_320,"Unterminated import statement");
}
var ch=_300.charCodeAt(++_31a);
if(ch===62){
++_31a;
return _3dc(_372,String.fromCharCode.apply(null,str));
}
str.push(ch);
}
}
var next=_300.charCodeAt(_31a+1);
var size=1;
if(next===code){
size=code===62&&_300.charCodeAt(_31a+2)===62?3:2;
if(_300.charCodeAt(_31a+size)===61){
return _3d2(_39b,size+1,_3dc);
}
return _3d2(_3a6,size,_3dc);
}
if(next===61){
size=_300.charCodeAt(_31a+2)===61?3:2;
}
return _3d2(_3a5,size,_3dc);
};
function _3dd(code,_3de){
var next=_300.charCodeAt(_31a+1);
if(next===61){
return _3d2(_3a4,_300.charCodeAt(_31a+2)===61?3:2,_3de);
}
return _3d2(code===61?_39a:_39e,1,_3de);
};
function _3df(code,_3e0){
var next=_300.charCodeAt(++_31a);
if(next===34||next===39){
return _3e1(next,_3e0);
}
if(next===123){
return _3e0(_36e);
}
if(next===91){
return _3e0(_36f);
}
var word=_3e2(),_3e3=_389[word];
if(!_3e3){
_342(_31a,"Unrecognized Objective-J keyword '@"+word+"'");
}
return _3e0(_3e3);
};
var _3e4=true;
var _3e5=0;
function _3e6(_3e7){
++_31a;
_3e8();
switch(_33a){
case _37b:
_3e8();
var _3e9=_33d;
var _3ea=_3eb();
if(_300.charCodeAt(_3e9)===40){
_3ec(_38f);
var _3ed=[];
var _3ee=true;
while(!_3ef(_390)){
if(!_3ee){
_3ec(_391,"Expected ',' between macro parameters");
}else{
_3ee=false;
}
_3ed.push(_3eb());
}
}
var _3f0=_31a=_33c;
_3c9();
var _3f1=_300.slice(_3f0,_31a);
_3f1=_3f1.replace(/\\/g," ");
_2ff.preprocessAddMacro(new _3f2(_3ea,_3f1,_3ed));
break;
case _37c:
_3e8();
_2ff.preprocessUndefineMacro(_3eb());
_3c9();
break;
case _37f:
if(_3e4){
_3e5++;
_3e8();
var expr=_3f3();
var test=_3f4(expr);
if(!test){
_3e4=false;
}
_3f5(!test);
}else{
return _3e7(_37f);
}
break;
case _37d:
if(_3e4){
_3e5++;
_3e8();
var _3f6=_3eb();
var test=_2ff.preprocessGetMacro(_3f6);
if(!test){
_3e4=false;
}
_3f5(!test);
}else{
return _3e7(_37d);
}
break;
case _37e:
if(_3e4){
_3e5++;
_3e8();
var _3f6=_3eb();
var test=_2ff.preprocessGetMacro(_3f6);
if(test){
_3e4=false;
}
_3f5(test);
}else{
return _3e7(_37e);
}
break;
case _380:
if(_3e5){
if(_3e4){
_3e4=false;
_3e7(_380);
_3e8();
_3f5(true,true);
}else{
return _3e7(_380);
}
}else{
_342(_33c,"#else without #if");
}
break;
case _381:
if(_3e5){
if(_3e4){
_3e5--;
break;
}
}else{
_342(_33c,"#endif without #if");
}
return _3e7(_381);
break;
case _383:
_3c9();
break;
case _39e:
_3c9();
break;
default:
_342(_33c,"Invalid preprocessing directive");
_3c9();
return _3e7(_37a);
}
_3bc(_37a);
return _3bd();
};
function _3f4(expr){
return _2fe.walk.recursive(expr,{},{BinaryExpression:function(node,st,c){
var left=node.left,_3f7=node.right;
switch(node.operator){
case "+":
return c(left,st)+c(_3f7,st);
case "-":
return c(left,st)-c(_3f7,st);
case "*":
return c(left,st)*c(_3f7,st);
case "/":
return c(left,st)/c(_3f7,st);
case "%":
return c(left,st)%c(_3f7,st);
case "<":
return c(left,st)<c(_3f7,st);
case ">":
return c(left,st)>c(_3f7,st);
case "=":
case "==":
case "===":
return c(left,st)===c(_3f7,st);
case "<=":
return c(left,st)<=c(_3f7,st);
case ">=":
return c(left,st)>=c(_3f7,st);
case "&&":
return c(left,st)&&c(_3f7,st);
case "||":
return c(left,st)||c(_3f7,st);
}
},Literal:function(node,st,c){
return node.value;
},Identifier:function(node,st,c){
var name=node.name,_3f8=_2ff.preprocessGetMacro(name);
return (_3f8&&parseInt(_3f8.macro))||0;
},DefinedExpression:function(node,st,c){
return !!_2ff.preprocessGetMacro(node.id.name);
}},{});
};
function _3c0(code,_3f9,_3fa){
switch(code){
case 46:
return _3cc(code,_3f9);
case 40:
++_31a;
return _3f9(_38f);
case 41:
++_31a;
return _3f9(_390);
case 59:
++_31a;
return _3f9(_392);
case 44:
++_31a;
return _3f9(_391);
case 91:
++_31a;
return _3f9(_38b);
case 93:
++_31a;
return _3f9(_38c);
case 123:
++_31a;
return _3f9(_38d);
case 125:
++_31a;
return _3f9(_38e);
case 58:
++_31a;
return _3f9(_393);
case 63:
++_31a;
return _3f9(_395);
case 48:
var next=_300.charCodeAt(_31a+1);
if(next===120||next===88){
return _3fb(_3f9);
}
case 49:
case 50:
case 51:
case 52:
case 53:
case 54:
case 55:
case 56:
case 57:
return _3ce(false,_3f9);
case 34:
case 39:
return _3e1(code,_3f9);
case 47:
return _3cf(_3f9);
case 37:
case 42:
return _3d3(_3f9);
case 124:
case 38:
return _3d5(code,_3f9);
case 94:
return _3d7(_3f9);
case 43:
case 45:
return _3d9(code,_3f9);
case 60:
case 62:
return _3db(code,_3f9,_3f9);
case 61:
case 33:
return _3dd(code,_3f9);
case 126:
return _3d2(_39e,1,_3f9);
case 64:
if(_2ff.objj){
return _3df(code,_3f9);
}
return false;
case 35:
if(_2ff.preprocess){
return _3e6(_3f9);
}
return false;
case 92:
if(_2ff.preprocess){
return _3d2(_385,1,_3f9);
}
return false;
}
if(_3fa&&_3b7.test(String.fromCharCode(code))){
return _3d2(_34a,1,_3f9);
}
return false;
};
function _3fc(){
while(_31a<_301){
var ch=_300.charCodeAt(_31a);
if(ch===32||ch===9||ch===160||(ch>=5760&&_3b2.test(String.fromCharCode(ch)))){
++_31a;
}else{
if(ch===92){
var pos=_31a+1;
ch=_300.charCodeAt(pos);
while(pos<_301&&(ch===32||ch===9||ch===11||ch===12||(ch>=5760&&_3b2.test(String.fromCharCode(ch))))){
ch=_300.charCodeAt(++pos);
}
_315.lastIndex=0;
var _3fd=_315.exec(_300.slice(pos,pos+2));
if(_3fd&&_3fd.index===0){
_31a=pos+_3fd[0].length;
}else{
return false;
}
}else{
_315.lastIndex=0;
var _3fd=_315.exec(_300.slice(_31a,_31a+2));
return _3fd&&_3fd.index===0;
}
}
}
};
function _3f5(test,_3fe){
if(test){
var _3ff=0;
while(_3ff>0||(_33a!=_381&&(_33a!=_380||_3fe))){
switch(_33a){
case _37f:
case _37d:
case _37e:
_3ff++;
break;
case _381:
_3ff--;
break;
case _349:
_3e4=true;
_342(_33c,"Missing #endif");
}
_3e8();
}
_3e4=true;
if(_33a===_381){
_3e5--;
}
}
};
function _3e8(){
_33c=_31a;
_330=_300;
if(_31a>=_301){
return _349;
}
var code=_300.charCodeAt(_31a);
if(_341&&code!==41&&code!==44){
var _400=0;
while(_31a<_301&&(_400||(code!==41&&code!==44))){
if(code===40){
_400++;
}
if(code===41){
_400--;
}
code=_300.charCodeAt(++_31a);
}
return _401(_386,_300.slice(_33c,_31a));
}
if(_3b8(code)||(code===92&&_300.charCodeAt(_31a+1)===117)){
return _402();
}
if(_3c0(code,_401,true)===false){
var ch=String.fromCharCode(code);
if(ch==="\\"||_3b5.test(ch)){
return _402();
}
_342(_31a,"Unexpected character '"+ch+"'");
}
};
function _402(){
var word=_3e2();
_401(_3b0(word)?_38a[word]:_348,word);
};
function _401(type,val){
_33a=type;
_33b=val;
_33d=_31a;
_3fc();
};
function _403(){
_33e=_320;
_33f=_321;
return _3e8();
};
function _3ef(type){
if(_33a===type){
_403();
return true;
}
};
function _3ec(type,_404){
if(_33a===type){
_3e8();
}else{
_342(_33c,_404||"Unexpected token");
}
};
function _3eb(){
var _405=_33a===_348?_33b:((!_2ff.forbidReserved||_33a.okAsIdent)&&_33a.keyword)||_342(_33c,"Expected Macro identifier");
_403();
return _405;
};
function _406(){
var node=_407();
node.name=_3eb();
return _408(node,"Identifier");
};
function _3f3(){
return _409();
};
function _409(){
return _40a(_40b(),-1);
};
function _40a(left,_40c){
var prec=_33a.binop;
if(prec){
if(!_33a.preprocess){
_342(_33c,"Unsupported macro operator");
}
if(prec>_40c){
var node=_40d(left);
node.left=left;
node.operator=_33b;
_403();
node.right=_40a(_40b(),prec);
var node=_408(node,"BinaryExpression");
return _40a(node,_40c);
}
}
return left;
};
function _40b(){
if(_33a.preprocess&&_33a.prefix){
var node=_407();
node.operator=_325;
node.prefix=true;
_403();
node.argument=_40b();
return _408(node,"UnaryExpression");
}
return _40e();
};
function _40e(){
switch(_33a){
case _348:
return _406();
case _345:
case _347:
return _40f();
case _38f:
var _410=_33c;
_403();
var val=_3f3();
val.start=_410;
val.end=_33d;
_3ec(_390,"Expected closing ')' in macro expression");
return val;
case _384:
var node=_407();
_403();
node.id=_406();
return _408(node,"DefinedExpression");
default:
_3c1();
}
};
function _40f(){
var node=_407();
node.value=_33b;
node.raw=_330.slice(_33c,_33d);
_403();
return _408(node,"Literal");
};
function _408(node,type){
node.type=type;
node.end=_33f;
return node;
};
function _3bd(_411){
_320=_31a;
_32f=_300;
if(_2ff.locations){
_322=new _3ba;
}
_326=_32c;
_329=_32d;
if(_411){
return _3d1();
}
if(_31a>=_301){
return _3bc(_349);
}
var code=_300.charCodeAt(_31a);
if(_3b8(code)||code===92){
return _3bf();
}
var tok=_3c0(code,_3bc);
if(tok===false){
var ch=String.fromCharCode(code);
if(ch==="\\"||_3b5.test(ch)){
return _3bf();
}
_342(_31a,"Unexpected character '"+ch+"'");
}
return tok;
};
function _3d2(type,size,_412){
var str=_300.slice(_31a,_31a+size);
_31a+=size;
_412(type,str);
};
function _3d1(){
var _413="",_414,_415,_416=_31a;
for(;;){
if(_31a>=_301){
_342(_416,"Unterminated regular expression");
}
var ch=_300.charAt(_31a);
if(_3b7.test(ch)){
_342(_416,"Unterminated regular expression");
}
if(!_414){
if(ch==="["){
_415=true;
}else{
if(ch==="]"&&_415){
_415=false;
}else{
if(ch==="/"&&!_415){
break;
}
}
}
_414=ch==="\\";
}else{
_414=false;
}
++_31a;
}
var _413=_300.slice(_416,_31a);
++_31a;
var mods=_3e2();
if(mods&&!/^[gmsiy]*$/.test(mods)){
_342(_416,"Invalid regexp flag");
}
return _3bc(_346,new RegExp(_413,mods));
};
function _417(_418,len){
var _419=_31a,_41a=0;
for(var i=0,e=len==null?Infinity:len;i<e;++i){
var code=_300.charCodeAt(_31a),val;
if(code>=97){
val=code-97+10;
}else{
if(code>=65){
val=code-65+10;
}else{
if(code>=48&&code<=57){
val=code-48;
}else{
val=Infinity;
}
}
}
if(val>=_418){
break;
}
++_31a;
_41a=_41a*_418+val;
}
if(_31a===_419||len!=null&&_31a-_419!==len){
return null;
}
return _41a;
};
function _3fb(_41b){
_31a+=2;
var val=_417(16);
if(val==null){
_342(_320+2,"Expected hexadecimal number");
}
if(_3b8(_300.charCodeAt(_31a))){
_342(_31a,"Identifier directly after number");
}
return _41b(_345,val);
};
function _3ce(_41c,_41d){
var _41e=_31a,_41f=false,_420=_300.charCodeAt(_31a)===48;
if(!_41c&&_417(10)===null){
_342(_41e,"Invalid number");
}
if(_300.charCodeAt(_31a)===46){
++_31a;
_417(10);
_41f=true;
}
var next=_300.charCodeAt(_31a);
if(next===69||next===101){
next=_300.charCodeAt(++_31a);
if(next===43||next===45){
++_31a;
}
if(_417(10)===null){
_342(_41e,"Invalid number");
}
_41f=true;
}
if(_3b8(_300.charCodeAt(_31a))){
_342(_31a,"Identifier directly after number");
}
var str=_300.slice(_41e,_31a),val;
if(_41f){
val=parseFloat(str);
}else{
if(!_420||str.length===1){
val=parseInt(str,10);
}else{
if(/[89]/.test(str)||_338){
_342(_41e,"Invalid number");
}else{
val=parseInt(str,8);
}
}
}
return _41d(_345,val);
};
var _421=[];
function _3e1(_422,_423){
_31a++;
_421.length=0;
for(;;){
if(_31a>=_301){
_342(_320,"Unterminated string constant");
}
var ch=_300.charCodeAt(_31a);
if(ch===_422){
++_31a;
return _423(_347,String.fromCharCode.apply(null,_421));
}
if(ch===92){
ch=_300.charCodeAt(++_31a);
var _424=/^[0-7]+/.exec(_300.slice(_31a,_31a+3));
if(_424){
_424=_424[0];
}
while(_424&&parseInt(_424,8)>255){
_424=_424.slice(0,_424.length-1);
}
if(_424==="0"){
_424=null;
}
++_31a;
if(_424){
if(_338){
_342(_31a-2,"Octal literal in strict mode");
}
_421.push(parseInt(_424,8));
_31a+=_424.length-1;
}else{
switch(ch){
case 110:
_421.push(10);
break;
case 114:
_421.push(13);
break;
case 120:
_421.push(_425(2));
break;
case 117:
_421.push(_425(4));
break;
case 85:
_421.push(_425(8));
break;
case 116:
_421.push(9);
break;
case 98:
_421.push(8);
break;
case 118:
_421.push(11);
break;
case 102:
_421.push(12);
break;
case 48:
_421.push(0);
break;
case 13:
if(_300.charCodeAt(_31a)===10){
++_31a;
}
case 10:
if(_2ff.locations){
_31c=_31a;
++_31b;
}
break;
default:
_421.push(ch);
break;
}
}
}else{
if(ch===13||ch===10||ch===8232||ch===8329){
_342(_320,"Unterminated string constant");
}
_421.push(ch);
++_31a;
}
}
};
function _425(len){
var n=_417(16,len);
if(n===null){
_342(_320,"Bad character escape sequence");
}
return n;
};
var _426;
function _3e2(){
_426=false;
var word,_427=true,_428=_31a;
for(;;){
var ch=_300.charCodeAt(_31a);
if(_3b9(ch)){
if(_426){
word+=_300.charAt(_31a);
}
++_31a;
}else{
if(ch===92){
if(!_426){
word=_300.slice(_428,_31a);
}
_426=true;
if(_300.charCodeAt(++_31a)!=117){
_342(_31a,"Expecting Unicode escape sequence \\uXXXX");
}
++_31a;
var esc=_425(4);
var _429=String.fromCharCode(esc);
if(!_429){
_342(_31a-1,"Invalid Unicode escape");
}
if(!(_427?_3b8(esc):_3b9(esc))){
_342(_31a-4,"Invalid Unicode escape");
}
word+=_429;
}else{
break;
}
}
_427=false;
}
return _426?word:_300.slice(_428,_31a);
};
function _3bf(_42a){
var word=_42a||_3e2();
var type=_348;
var _42b;
if(_2ff.preprocess){
var _42c;
var i=_340.length;
if(i>0){
var _42d=_340[i-1];
if(_42d.parameterDict&&_42d.macro.isParameterFunction()(word)){
_42c=_42d.parameterDict[word];
}
}
if(!_42c&&_2ff.preprocessIsMacro(word)){
_42c=_2ff.preprocessGetMacro(word);
}
if(_42c){
var _42e=_320;
var _42f;
var _430=_42c.parameters;
var _431;
if(_430){
_431=_31a<_301&&_300.charCodeAt(_31a)===40;
}
if(!_430||_431){
var _432=_42c.macro;
var _433=_31a;
if(_431){
var _434=true;
var _435=0;
_42f=Object.create(null);
_3e8();
_341=true;
_3ec(_38f);
_433=_31a;
while(!_3ef(_390)){
if(!_434){
_3ec(_391,"Expected ',' between macro parameters");
}else{
_434=false;
}
var _436=_430[_435++];
var val=_33b;
_3ec(_386);
_42f[_436]=new _3f2(_436,val);
_433=_31a;
}
_341=false;
}
if(_432){
_340.push({macro:_42c,parameterDict:_42f,start:_42e,end:_433,input:_300,inputLen:_301,lastStart:_320,lastEnd:_433});
_300=_432;
_301=_432.length;
_31a=0;
}
return next();
}
}
}
if(!_426){
if(_3ae(word)){
type=_387[word];
}else{
if(_2ff.objj&&_3af(word)){
type=_388[word];
}else{
if(_2ff.forbidReserved&&(_2ff.ecmaVersion===3?_3aa:_3ab)(word)||_338&&_3ac(word)){
_342(_320,"The keyword '"+word+"' is reserved");
}
}
}
}
return _3bc(type,word);
};
function _3f2(_437,_438,_439){
this.identifier=_437;
if(_438){
this.macro=_438;
}
if(_439){
this.parameters=_439;
}
};
_3f2.prototype.isParameterFunction=function(){
var y=(this.parameters||[]).join(" ");
return this.isParameterFunctionVar||(this.isParameterFunctionVar=_311(y));
};
function next(){
_331=_320;
_332=_321;
_333=_323;
_335=null;
return _3bd();
};
function _43a(_43b){
_338=_43b;
_31a=_332;
_31f();
_3bd();
};
function _43c(){
this.type=null;
this.start=_320;
this.end=null;
};
function _43d(){
this.start=_322;
this.end=null;
if(_302!==null){
this.source=_302;
}
};
function _407(){
var node=new _43c();
if(_2ff.trackComments&&_326){
node.commentsBefore=_326;
_326=null;
}
if(_2ff.trackSpaces&&_329){
node.spacesBefore=_329;
_329=null;
}
if(_2ff.locations){
node.loc=new _43d();
}
if(_2ff.ranges){
node.range=[_320,0];
}
return node;
};
function _40d(_43e){
var node=new _43c();
node.start=_43e.start;
if(_43e.commentsBefore){
node.commentsBefore=_43e.commentsBefore;
delete _43e.commentsBefore;
}
if(_43e.spacesBefore){
node.spacesBefore=_43e.spacesBefore;
delete _43e.spacesBefore;
}
if(_2ff.locations){
node.loc=new _43d();
node.loc.start=_43e.loc.start;
}
if(_2ff.ranges){
node.range=[_43e.range[0],0];
}
return node;
};
var _43f;
function _440(node,type){
node.type=type;
node.end=_332;
if(_2ff.trackComments){
if(_328){
node.commentsAfter=_328;
_327=null;
}else{
if(_43f&&_43f.end===_332&&_43f.commentsAfter){
node.commentsAfter=_43f.commentsAfter;
delete _43f.commentsAfter;
}
}
if(!_2ff.trackSpaces){
_43f=node;
}
}
if(_2ff.trackSpaces){
if(_32b){
node.spacesAfter=_32b;
_32b=null;
}else{
if(_43f&&_43f.end===_332&&_43f.spacesAfter){
node.spacesAfter=_43f.spacesAfter;
delete _43f.spacesAfter;
}
}
_43f=node;
}
if(_2ff.locations){
node.loc.end=_333;
}
if(_2ff.ranges){
node.range[1]=_332;
}
return node;
};
function _441(stmt){
return _2ff.ecmaVersion>=5&&stmt.type==="ExpressionStatement"&&stmt.expression.type==="Literal"&&stmt.expression.value==="use strict";
};
function eat(type){
if(_324===type){
next();
return true;
}
};
function _442(){
return !_2ff.strictSemicolons&&(_324===_349||_324===_38e||_3b7.test(_32f.slice(_332,_320))||(_335&&_2ff.objj));
};
function _443(){
if(!eat(_392)&&!_442()){
_342(_320,"Expected a semicolon");
}
};
function _444(type,_445){
if(_324===type){
next();
}else{
_445?_342(_320,_445):_3c1();
}
};
function _3c1(){
_342(_320,"Unexpected token");
};
function _446(expr){
if(expr.type!=="Identifier"&&expr.type!=="MemberExpression"&&expr.type!=="Dereference"){
_342(expr.start,"Assigning to rvalue");
}
if(_338&&expr.type==="Identifier"&&_3ad(expr.name)){
_342(expr.start,"Assigning to "+expr.name+" in strict mode");
}
};
function _305(_447){
_331=_332=_31a;
if(_2ff.locations){
_333=new _3ba;
}
_336=_338=null;
_337=[];
_3bd();
var node=_447||_407(),_448=true;
if(!_447){
node.body=[];
}
while(_324!==_349){
var stmt=_449();
node.body.push(stmt);
if(_448&&_441(stmt)){
_43a(true);
}
_448=false;
}
return _440(node,"Program");
};
var _44a={kind:"loop"},_44b={kind:"switch"};
function _449(){
if(_324===_399){
_3bd(true);
}
var _44c=_324,node=_407();
if(_335){
node.expression=_44d(_335,_335.object);
_443();
return _440(node,"ExpressionStatement");
}
switch(_44c){
case _34b:
case _34e:
next();
var _44e=_44c===_34b;
if(eat(_392)||_442()){
node.label=null;
}else{
if(_324!==_348){
_3c1();
}else{
node.label=_44f();
_443();
}
}
for(var i=0;i<_337.length;++i){
var lab=_337[i];
if(node.label==null||lab.name===node.label.name){
if(lab.kind!=null&&(_44e||lab.kind==="loop")){
break;
}
if(node.label&&_44e){
break;
}
}
}
if(i===_337.length){
_342(node.start,"Unsyntactic "+_44c.keyword);
}
return _440(node,_44e?"BreakStatement":"ContinueStatement");
case _34f:
next();
_443();
return _440(node,"DebuggerStatement");
case _351:
next();
_337.push(_44a);
node.body=_449();
_337.pop();
_444(_35c,"Expected 'while' at end of do statement");
node.test=_450();
_443();
return _440(node,"DoWhileStatement");
case _354:
next();
_337.push(_44a);
_444(_38f,"Expected '(' after 'for'");
if(_324===_392){
return _451(node,null);
}
if(_324===_35b){
var init=_407();
next();
_452(init,true);
if(init.declarations.length===1&&eat(_364)){
return _453(node,init);
}
return _451(node,init);
}
var init=_454(false,true);
if(eat(_364)){
_446(init);
return _453(node,init);
}
return _451(node,init);
case _355:
next();
return _455(node,true);
case _356:
next();
node.test=_450();
node.consequent=_449();
node.alternate=eat(_352)?_449():null;
return _440(node,"IfStatement");
case _357:
if(!_336){
_342(_320,"'return' outside of function");
}
next();
if(eat(_392)||_442()){
node.argument=null;
}else{
node.argument=_454();
_443();
}
return _440(node,"ReturnStatement");
case _358:
next();
node.discriminant=_450();
node.cases=[];
_444(_38d,"Expected '{' in switch statement");
_337.push(_44b);
for(var cur,_456;_324!=_38e;){
if(_324===_34c||_324===_350){
var _457=_324===_34c;
if(cur){
_440(cur,"SwitchCase");
}
node.cases.push(cur=_407());
cur.consequent=[];
next();
if(_457){
cur.test=_454();
}else{
if(_456){
_342(_331,"Multiple default clauses");
}
_456=true;
cur.test=null;
}
_444(_393,"Expected ':' after case clause");
}else{
if(!cur){
_3c1();
}
cur.consequent.push(_449());
}
}
if(cur){
_440(cur,"SwitchCase");
}
next();
_337.pop();
return _440(node,"SwitchStatement");
case _359:
next();
if(_3b7.test(_32f.slice(_332,_320))){
_342(_332,"Illegal newline after throw");
}
node.argument=_454();
_443();
return _440(node,"ThrowStatement");
case _35a:
next();
node.block=_458();
node.handlers=[];
while(_324===_34d){
var _459=_407();
next();
_444(_38f,"Expected '(' after 'catch'");
_459.param=_44f();
if(_338&&_3ad(_459.param.name)){
_342(_459.param.start,"Binding "+_459.param.name+" in strict mode");
}
_444(_390,"Expected closing ')' after catch");
_459.guard=null;
_459.body=_458();
node.handlers.push(_440(_459,"CatchClause"));
}
node.finalizer=eat(_353)?_458():null;
if(!node.handlers.length&&!node.finalizer){
_342(node.start,"Missing catch or finally clause");
}
return _440(node,"TryStatement");
case _35b:
next();
node=_452(node);
_443();
return node;
case _35c:
next();
node.test=_450();
_337.push(_44a);
node.body=_449();
_337.pop();
return _440(node,"WhileStatement");
case _35d:
if(_338){
_342(_320,"'with' in strict mode");
}
next();
node.object=_450();
node.body=_449();
return _440(node,"WithStatement");
case _38d:
return _458();
case _392:
next();
return _440(node,"EmptyStatement");
case _365:
if(_2ff.objj){
next();
node.classname=_44f(true);
if(eat(_393)){
node.superclassname=_44f(true);
}else{
if(eat(_38f)){
node.categoryname=_44f(true);
_444(_390,"Expected closing ')' after category name");
}
}
if(eat(_38d)){
node.ivardeclarations=[];
for(;;){
if(eat(_38e)){
break;
}
_45a(node);
}
node.endOfIvars=_320;
}
node.body=[];
while(!eat(_368)){
if(_324===_349){
_342(_31a,"Expected '@end' after '@implementation'");
}
node.body.push(_45b());
}
}
return _440(node,"ClassDeclarationStatement");
case _369:
next();
if(_324===_347){
node.localfilepath=true;
}else{
if(_324===_372){
node.localfilepath=false;
}else{
_3c1();
}
}
node.filename=_45c();
return _440(node,"ImportStatement");
case _37a:
next();
return _440(node,"PreprocessStatement");
case _36c:
next();
node.id=_44f(false);
return _440(node,"ClassStatement");
case _36d:
next();
node.id=_44f(false);
return _440(node,"GlobalStatement");
default:
var _45d=_325,expr=_454();
if(_44c===_348&&expr.type==="Identifier"&&eat(_393)){
for(var i=0;i<_337.length;++i){
if(_337[i].name===_45d){
_342(expr.start,"Label '"+_45d+"' is already declared");
}
}
var kind=_324.isLoop?"loop":_324===_358?"switch":null;
_337.push({name:_45d,kind:kind});
node.body=_449();
_337.pop();
node.label=expr;
return _440(node,"LabeledStatement");
}else{
node.expression=expr;
_443();
return _440(node,"ExpressionStatement");
}
}
};
function _45a(node){
var _45e;
if(eat(_366)){
_45e=true;
}
var type=_45f();
if(_338&&_3ad(type.name)){
_342(type.start,"Binding "+type.name+" in strict mode");
}
for(;;){
var decl=_407();
if(_45e){
decl.outlet=_45e;
}
decl.ivartype=type;
decl.id=_44f();
if(_338&&_3ad(decl.id.name)){
_342(decl.id.start,"Binding "+decl.id.name+" in strict mode");
}
if(eat(_367)){
decl.accessors={};
if(eat(_38f)){
if(!eat(_390)){
for(;;){
var _460=_44f(true);
switch(_460.name){
case "property":
case "getter":
_444(_39a,"Expected '=' after 'getter' accessor attribute");
decl.accessors[_460.name]=_44f(true);
break;
case "setter":
_444(_39a,"Expected '=' after 'setter' accessor attribute");
var _461=_44f(true);
decl.accessors[_460.name]=_461;
if(eat(_393)){
_461.end=_320;
}
_461.name+=":";
break;
case "readwrite":
case "readonly":
case "copy":
decl.accessors[_460.name]=true;
break;
default:
_342(_460.start,"Unknown accessors attribute '"+_460.name+"'");
}
if(!eat(_391)){
break;
}
}
_444(_390,"Expected closing ')' after accessor attributes");
}
}
}
_440(decl,"IvarDeclaration");
node.ivardeclarations.push(decl);
if(!eat(_391)){
break;
}
}
_443();
};
function _45b(){
var _462=_325,_463=_407();
if(eat(_39c)){
_463.methodtype=_462;
if(eat(_38f)){
if(eat(_36a)){
_463.action=true;
}
if(!eat(_390)){
_463.returntype=_45f();
_444(_390,"Expected closing ')' after method return type");
}
}
var _464=true,_465=[],args=[];
_463.selectors=_465;
_463.arguments=args;
for(;;){
if(_324!==_393){
_465.push(_44f(true));
if(_464&&_324!==_393){
break;
}
}else{
_465.push(null);
}
_444(_393,"Expected ':' in selector");
var _466={};
args.push(_466);
if(eat(_38f)){
_466.type=_45f();
_444(_390,"Expected closing ')' after method argument type");
}
_466.identifier=_44f(false);
if(_324===_38d||eat(_392)){
break;
}
if(eat(_391)){
_444(_397,"Expected '...' after ',' in method declaration");
_463.parameters=true;
break;
}
_464=false;
}
_463.startOfBody=_332;
var _467=_336,_468=_337;
_336=true;
_337=[];
_463.body=_458(true);
_336=_467;
_337=_468;
return _440(_463,"MethodDeclarationStatement");
}else{
return _449();
}
};
function _450(){
_444(_38f,"Expected '(' before expression");
var val=_454();
_444(_390,"Expected closing ')' after expression");
return val;
};
function _458(_469){
var node=_407(),_46a=true,_338=false,_46b;
node.body=[];
_444(_38d,"Expected '{' before block");
while(!eat(_38e)){
var stmt=_449();
node.body.push(stmt);
if(_46a&&_441(stmt)){
_46b=_338;
_43a(_338=true);
}
_46a=false;
}
if(_338&&!_46b){
_43a(false);
}
return _440(node,"BlockStatement");
};
function _451(node,init){
node.init=init;
_444(_392,"Expected ';' in for statement");
node.test=_324===_392?null:_454();
_444(_392,"Expected ';' in for statement");
node.update=_324===_390?null:_454();
_444(_390,"Expected closing ')' in for statement");
node.body=_449();
_337.pop();
return _440(node,"ForStatement");
};
function _453(node,init){
node.left=init;
node.right=_454();
_444(_390,"Expected closing ')' in for statement");
node.body=_449();
_337.pop();
return _440(node,"ForInStatement");
};
function _452(node,noIn){
node.declarations=[];
node.kind="var";
for(;;){
var decl=_407();
decl.id=_44f();
if(_338&&_3ad(decl.id.name)){
_342(decl.id.start,"Binding "+decl.id.name+" in strict mode");
}
decl.init=eat(_39a)?_454(true,noIn):null;
node.declarations.push(_440(decl,"VariableDeclarator"));
if(!eat(_391)){
break;
}
}
return _440(node,"VariableDeclaration");
};
function _454(_46c,noIn){
var expr=_46d(noIn);
if(!_46c&&_324===_391){
var node=_40d(expr);
node.expressions=[expr];
while(eat(_391)){
node.expressions.push(_46d(noIn));
}
return _440(node,"SequenceExpression");
}
return expr;
};
function _46d(noIn){
var left=_46e(noIn);
if(_324.isAssign){
var node=_40d(left);
node.operator=_325;
node.left=left;
next();
node.right=_46d(noIn);
_446(left);
return _440(node,"AssignmentExpression");
}
return left;
};
function _46e(noIn){
var expr=_46f(noIn);
if(eat(_395)){
var node=_40d(expr);
node.test=expr;
node.consequent=_454(true);
_444(_393,"Expected ':' in conditional expression");
node.alternate=_454(true,noIn);
return _440(node,"ConditionalExpression");
}
return expr;
};
function _46f(noIn){
return _470(_471(noIn),-1,noIn);
};
function _470(left,_472,noIn){
var prec=_324.binop;
if(prec!=null&&(!noIn||_324!==_364)){
if(prec>_472){
var node=_40d(left);
node.left=left;
node.operator=_325;
next();
node.right=_470(_471(noIn),prec,noIn);
var node=_440(node,/&&|\|\|/.test(node.operator)?"LogicalExpression":"BinaryExpression");
return _470(node,_472,noIn);
}
}
return left;
};
function _471(noIn){
if(_324.prefix){
var node=_407(),_473=_324.isUpdate;
node.operator=_325;
node.prefix=true;
next();
node.argument=_471(noIn);
if(_473){
_446(node.argument);
}else{
if(_338&&node.operator==="delete"&&node.argument.type==="Identifier"){
_342(node.start,"Deleting local variable in strict mode");
}
}
return _440(node,_473?"UpdateExpression":"UnaryExpression");
}
var expr=_474();
while(_324.postfix&&!_442()){
var node=_40d(expr);
node.operator=_325;
node.prefix=false;
node.argument=expr;
_446(expr);
next();
expr=_440(node,"UpdateExpression");
}
return expr;
};
function _474(){
return _475(_476());
};
function _475(base,_477){
if(eat(_394)){
var node=_40d(base);
node.object=base;
node.property=_44f(true);
node.computed=false;
return _475(_440(node,"MemberExpression"),_477);
}else{
if(_2ff.objj){
var _478=_407();
}
if(eat(_38b)){
var expr=_454();
if(_2ff.objj&&_324!==_38c){
_478.object=expr;
_335=_478;
return base;
}
var node=_40d(base);
node.object=base;
node.property=expr;
node.computed=true;
_444(_38c,"Expected closing ']' in subscript");
return _475(_440(node,"MemberExpression"),_477);
}else{
if(!_477&&eat(_38f)){
var node=_40d(base);
node.callee=base;
node.arguments=_479(_390,_324===_390?null:_454(true),false);
return _475(_440(node,"CallExpression"),_477);
}
}
}
return base;
};
function _476(){
switch(_324){
case _35f:
var node=_407();
next();
return _440(node,"ThisExpression");
case _348:
return _44f();
case _345:
case _347:
case _346:
return _45c();
case _361:
case _362:
case _363:
var node=_407();
node.value=_324.atomValue;
node.raw=_324.keyword;
next();
return _440(node,"Literal");
case _38f:
var _47a=_322,_47b=_320;
next();
var val=_454();
val.start=_47b;
val.end=_321;
if(_2ff.locations){
val.loc.start=_47a;
val.loc.end=_323;
}
if(_2ff.ranges){
val.range=[_47b,_321];
}
_444(_390,"Expected closing ')' in expression");
return val;
case _36f:
var node=_407(),_47c=null;
next();
_444(_38b,"Expected '[' at beginning of array literal");
if(_324!==_38c){
_47c=_454(true,true);
}
node.elements=_479(_38c,_47c,true,true);
return _440(node,"ArrayLiteral");
case _38b:
var node=_407(),_47c=null;
next();
if(_324!==_391&&_324!==_38c){
_47c=_454(true,true);
if(_324!==_391&&_324!==_38c){
return _44d(node,_47c);
}
}
node.elements=_479(_38c,_47c,true,true);
return _440(node,"ArrayExpression");
case _36e:
var node=_407();
next();
var r=_47d();
node.keys=r[0];
node.values=r[1];
return _440(node,"DictionaryLiteral");
case _38d:
return _47e();
case _355:
var node=_407();
next();
return _455(node,false);
case _35e:
return _47f();
case _36b:
var node=_407();
next();
_444(_38f,"Expected '(' after '@selector'");
_480(node,_390);
_444(_390,"Expected closing ')' after selector");
return _440(node,"SelectorLiteralExpression");
case _370:
var node=_407();
next();
_444(_38f,"Expected '(' after '@ref'");
node.element=_44f(node,_390);
_444(_390,"Expected closing ')' after ref");
return _440(node,"Reference");
case _371:
var node=_407();
next();
_444(_38f,"Expected '(' after '@deref'");
node.expr=_454(true,true);
_444(_390,"Expected closing ')' after deref");
return _440(node,"Dereference");
default:
_3c1();
}
};
function _44d(node,_481){
_482(node,_38c);
if(_481.type==="Identifier"&&_481.name==="super"){
node.superObject=true;
}else{
node.object=_481;
}
return _440(node,"MessageSendExpression");
};
function _480(node,_483){
var _484=true,_485=[];
for(;;){
if(_324!==_393){
_485.push(_44f(true).name);
if(_484&&_324===_483){
break;
}
}
_444(_393,"Expected ':' in selector");
_485.push(":");
if(_324===_483){
break;
}
_484=false;
}
node.selector=_485.join("");
};
function _482(node,_486){
var _487=true,_488=[],args=[],_489=[];
node.selectors=_488;
node.arguments=args;
for(;;){
if(_324!==_393){
_488.push(_44f(true));
if(_487&&eat(_486)){
break;
}
}else{
_488.push(null);
}
_444(_393,"Expected ':' in selector");
args.push(_454(true,true));
if(eat(_486)){
break;
}
if(_324===_391){
node.parameters=[];
while(eat(_391)){
node.parameters.push(_454(true,true));
}
eat(_486);
break;
}
_487=false;
}
};
function _47f(){
var node=_407();
next();
node.callee=_475(_476(false),true);
if(eat(_38f)){
node.arguments=_479(_390,_324===_390?null:_454(true),false);
}else{
node.arguments=[];
}
return _440(node,"NewExpression");
};
function _47e(){
var node=_407(),_48a=true,_48b=false;
node.properties=[];
next();
while(!eat(_38e)){
if(!_48a){
_444(_391,"Expected ',' in object literal");
if(_2ff.allowTrailingCommas&&eat(_38e)){
break;
}
}else{
_48a=false;
}
var prop={key:_48c()},_48d=false,kind;
if(eat(_393)){
prop.value=_454(true);
kind=prop.kind="init";
}else{
if(_2ff.ecmaVersion>=5&&prop.key.type==="Identifier"&&(prop.key.name==="get"||prop.key.name==="set")){
_48d=_48b=true;
kind=prop.kind=prop.key.name;
prop.key=_48c();
if(_324!==_38f){
_3c1();
}
prop.value=_455(_407(),false);
}else{
_3c1();
}
}
if(prop.key.type==="Identifier"&&(_338||_48b)){
for(var i=0;i<node.properties.length;++i){
var _48e=node.properties[i];
if(_48e.key.name===prop.key.name){
var _48f=kind==_48e.kind||_48d&&_48e.kind==="init"||kind==="init"&&(_48e.kind==="get"||_48e.kind==="set");
if(_48f&&!_338&&kind==="init"&&_48e.kind==="init"){
_48f=false;
}
if(_48f){
_342(prop.key.start,"Redefinition of property");
}
}
}
}
node.properties.push(prop);
}
return _440(node,"ObjectExpression");
};
function _48c(){
if(_324===_345||_324===_347){
return _476();
}
return _44f(true);
};
function _455(node,_490){
if(_324===_348){
node.id=_44f();
}else{
if(_490){
_3c1();
}else{
node.id=null;
}
}
node.params=[];
var _491=true;
_444(_38f,"Expected '(' before function parameters");
while(!eat(_390)){
if(!_491){
_444(_391,"Expected ',' between function parameters");
}else{
_491=false;
}
node.params.push(_44f());
}
var _492=_336,_493=_337;
_336=true;
_337=[];
node.body=_458(true);
_336=_492;
_337=_493;
if(_338||node.body.body.length&&_441(node.body.body[0])){
for(var i=node.id?-1:0;i<node.params.length;++i){
var id=i<0?node.id:node.params[i];
if(_3ac(id.name)||_3ad(id.name)){
_342(id.start,"Defining '"+id.name+"' in strict mode");
}
if(i>=0){
for(var j=0;j<i;++j){
if(id.name===node.params[j].name){
_342(id.start,"Argument name clash in strict mode");
}
}
}
}
}
return _440(node,_490?"FunctionDeclaration":"FunctionExpression");
};
function _479(_494,_495,_496,_497){
if(_495&&eat(_494)){
return [_495];
}
var elts=[],_498=true;
while(!eat(_494)){
if(_498){
_498=false;
if(_497&&_324===_391&&!_495){
elts.push(null);
}else{
elts.push(_495);
}
}else{
_444(_391,"Expected ',' between expressions");
if(_496&&_2ff.allowTrailingCommas&&eat(_494)){
break;
}
if(_497&&_324===_391){
elts.push(null);
}else{
elts.push(_454(true));
}
}
}
return elts;
};
function _47d(){
_444(_38d,"Expected '{' before dictionary");
var keys=[],_499=[],_49a=true;
while(!eat(_38e)){
if(!_49a){
_444(_391,"Expected ',' between expressions");
if(_2ff.allowTrailingCommas&&eat(_38e)){
break;
}
}
keys.push(_454(true,true));
_444(_393,"Expected ':' between dictionary key and value");
_499.push(_454(true,true));
_49a=false;
}
return [keys,_499];
};
function _44f(_49b){
var node=_407();
node.name=_324===_348?_325:(((_49b&&!_2ff.forbidReserved)||_324.okAsIdent)&&_324.keyword)||_3c1();
next();
return _440(node,"Identifier");
};
function _45c(){
var node=_407();
node.value=_325;
node.raw=_32f.slice(_320,_321);
next();
return _440(node,"Literal");
};
function _45f(){
var node=_407();
if(_324===_348){
node.name=_325;
next();
if(_325==="<"){
next();
node.protocol=_44f(true);
if(_325!==">"){
_3c1();
}
next();
}
}else{
node.name=_324.keyword;
if(!eat(_360)){
var _49c;
if(eat(_374)||eat(_373)){
_49c=_324.keyword||true;
}
if(eat(_376)||eat(_375)||eat(_377)){
if(_49c){
node.name+=" "+_49c;
}
_49c=_324.keyword||true;
}else{
if(eat(_378)){
if(_49c){
node.name+=" "+_49c;
}
_49c=_324.keyword||true;
}
if(eat(_379)){
if(_49c){
node.name+=" "+_49c;
}
_49c=_324.keyword||true;
if(eat(_379)){
node.name+=" "+_49c;
}
}
}
if(!_49c){
node.name=(!_2ff.forbidReserved&&_324.keyword)||_3c1();
next();
}
}
}
return _440(node,"ObjectiveJType");
};
})(typeof _2==="undefined"?(self.acorn={}):_2.acorn);
if(!_2.acorn){
_2.acorn={};
_2.acorn.walk={};
}
(function(_49d){
"use strict";
_49d.simple=function(node,_49e,base,_49f){
if(!base){
base=_49d;
}
function c(node,st,_4a0){
var type=_4a0||node.type,_4a1=_49e[type];
if(_4a1){
_4a1(node,st);
}
base[type](node,st,c);
};
c(node,_49f);
};
_49d.recursive=function(node,_4a2,_4a3,base){
var _4a4=_49d.make(_4a3,base);
function c(node,st,_4a5){
return _4a4[_4a5||node.type](node,st,c);
};
return c(node,_4a2);
};
_49d.make=function(_4a6,base){
if(!base){
base=_49d;
}
var _4a7={};
for(var type in base){
_4a7[type]=base[type];
}
for(var type in _4a6){
_4a7[type]=_4a6[type];
}
return _4a7;
};
function _4a8(node,st,c){
c(node,st);
};
function _4a9(node,st,c){
};
_49d.Program=_49d.BlockStatement=function(node,st,c){
for(var i=0;i<node.body.length;++i){
c(node.body[i],st,"Statement");
}
};
_49d.Statement=_4a8;
_49d.EmptyStatement=_4a9;
_49d.ExpressionStatement=function(node,st,c){
c(node.expression,st,"Expression");
};
_49d.IfStatement=function(node,st,c){
c(node.test,st,"Expression");
c(node.consequent,st,"Statement");
if(node.alternate){
c(node.alternate,st,"Statement");
}
};
_49d.LabeledStatement=function(node,st,c){
c(node.body,st,"Statement");
};
_49d.BreakStatement=_49d.ContinueStatement=_4a9;
_49d.WithStatement=function(node,st,c){
c(node.object,st,"Expression");
c(node.body,st,"Statement");
};
_49d.SwitchStatement=function(node,st,c){
c(node.discriminant,st,"Expression");
for(var i=0;i<node.cases.length;++i){
var cs=node.cases[i];
if(cs.test){
c(cs.test,st,"Expression");
}
for(var j=0;j<cs.consequent.length;++j){
c(cs.consequent[j],st,"Statement");
}
}
};
_49d.ReturnStatement=function(node,st,c){
if(node.argument){
c(node.argument,st,"Expression");
}
};
_49d.ThrowStatement=function(node,st,c){
c(node.argument,st,"Expression");
};
_49d.TryStatement=function(node,st,c){
c(node.block,st,"Statement");
for(var i=0;i<node.handlers.length;++i){
c(node.handlers[i].body,st,"ScopeBody");
}
if(node.finalizer){
c(node.finalizer,st,"Statement");
}
};
_49d.WhileStatement=function(node,st,c){
c(node.test,st,"Expression");
c(node.body,st,"Statement");
};
_49d.DoWhileStatement=function(node,st,c){
c(node.body,st,"Statement");
c(node.test,st,"Expression");
};
_49d.ForStatement=function(node,st,c){
if(node.init){
c(node.init,st,"ForInit");
}
if(node.test){
c(node.test,st,"Expression");
}
if(node.update){
c(node.update,st,"Expression");
}
c(node.body,st,"Statement");
};
_49d.ForInStatement=function(node,st,c){
c(node.left,st,"ForInit");
c(node.right,st,"Expression");
c(node.body,st,"Statement");
};
_49d.ForInit=function(node,st,c){
if(node.type=="VariableDeclaration"){
c(node,st);
}else{
c(node,st,"Expression");
}
};
_49d.DebuggerStatement=_4a9;
_49d.FunctionDeclaration=function(node,st,c){
c(node,st,"Function");
};
_49d.VariableDeclaration=function(node,st,c){
for(var i=0;i<node.declarations.length;++i){
var decl=node.declarations[i];
if(decl.init){
c(decl.init,st,"Expression");
}
}
};
_49d.Function=function(node,st,c){
c(node.body,st,"ScopeBody");
};
_49d.ScopeBody=function(node,st,c){
c(node,st,"Statement");
};
_49d.Expression=_4a8;
_49d.ThisExpression=_4a9;
_49d.ArrayExpression=_49d.ArrayLiteral=function(node,st,c){
for(var i=0;i<node.elements.length;++i){
var elt=node.elements[i];
if(elt){
c(elt,st,"Expression");
}
}
};
_49d.DictionaryLiteral=function(node,st,c){
for(var i=0;i<node.keys.length;i++){
var key=node.keys[i];
c(key,st,"Expression");
var _4aa=node.values[i];
c(_4aa,st,"Expression");
}
};
_49d.ObjectExpression=function(node,st,c){
for(var i=0;i<node.properties.length;++i){
c(node.properties[i].value,st,"Expression");
}
};
_49d.FunctionExpression=_49d.FunctionDeclaration;
_49d.SequenceExpression=function(node,st,c){
for(var i=0;i<node.expressions.length;++i){
c(node.expressions[i],st,"Expression");
}
};
_49d.UnaryExpression=_49d.UpdateExpression=function(node,st,c){
c(node.argument,st,"Expression");
};
_49d.BinaryExpression=_49d.AssignmentExpression=_49d.LogicalExpression=function(node,st,c){
c(node.left,st,"Expression");
c(node.right,st,"Expression");
};
_49d.ConditionalExpression=function(node,st,c){
c(node.test,st,"Expression");
c(node.consequent,st,"Expression");
c(node.alternate,st,"Expression");
};
_49d.NewExpression=_49d.CallExpression=function(node,st,c){
c(node.callee,st,"Expression");
if(node.arguments){
for(var i=0;i<node.arguments.length;++i){
c(node.arguments[i],st,"Expression");
}
}
};
_49d.MemberExpression=function(node,st,c){
c(node.object,st,"Expression");
if(node.computed){
c(node.property,st,"Expression");
}
};
_49d.Identifier=_49d.Literal=_4a9;
_49d.ClassDeclarationStatement=function(node,st,c){
if(node.ivardeclarations){
for(var i=0;i<node.ivardeclarations.length;++i){
c(node.ivardeclarations[i],st,"IvarDeclaration");
}
}
for(var i=0;i<node.body.length;++i){
c(node.body[i],st,"Statement");
}
};
_49d.ImportStatement=_4a9;
_49d.IvarDeclaration=_4a9;
_49d.MethodDeclarationStatement=_4a9;
_49d.PreprocessStatement=_4a9;
_49d.ClassStatement=_4a9;
_49d.GlobalStatement=_4a9;
_49d.MethodDeclarationStatement=function(node,st,c){
c(node.body,st,"Statement");
};
_49d.MessageSendExpression=function(node,st,c){
if(!node.superObject){
c(node.object,st,"Expression");
}
if(node.arguments){
for(var i=0;i<node.arguments.length;++i){
c(node.arguments[i],st,"Expression");
}
}
if(node.parameters){
for(var i=0;i<node.parameters.length;++i){
c(node.parameters[i],st,"Expression");
}
}
};
_49d.SelectorLiteralExpression=_4a9;
_49d.Reference=function(node,st,c){
c(node.element,st,"Identifier");
};
_49d.Dereference=function(node,st,c){
c(node.expr,st,"Expression");
};
function _4ab(prev){
return {vars:Object.create(null),prev:prev};
};
_49d.scopeVisitor=_49d.make({Function:function(node,_4ac,c){
var _4ad=_4ab(_4ac);
for(var i=0;i<node.params.length;++i){
_4ad.vars[node.params[i].name]={type:"argument",node:node.params[i]};
}
if(node.id){
var decl=node.type=="FunctionDeclaration";
(decl?_4ac:_4ad).vars[node.id.name]={type:decl?"function":"function name",node:node.id};
}
c(node.body,_4ad,"ScopeBody");
},TryStatement:function(node,_4ae,c){
c(node.block,_4ae,"Statement");
for(var i=0;i<node.handlers.length;++i){
var _4af=node.handlers[i],_4b0=_4ab(_4ae);
_4b0.vars[_4af.param.name]={type:"catch clause",node:_4af.param};
c(_4af.body,_4b0,"ScopeBody");
}
if(node.finalizer){
c(node.finalizer,_4ae,"Statement");
}
},VariableDeclaration:function(node,_4b1,c){
for(var i=0;i<node.declarations.length;++i){
var decl=node.declarations[i];
_4b1.vars[decl.id.name]={type:"var",node:decl.id};
if(decl.init){
c(decl.init,_4b1,"Expression");
}
}
}});
})(typeof _2=="undefined"?acorn.walk={}:_2.acorn.walk);
var _4b2=function(prev,base){
this.vars=Object.create(null);
if(base){
for(var key in base){
this[key]=base[key];
}
}
this.prev=prev;
if(prev){
this.compiler=prev.compiler;
}
};
_4b2.prototype.compiler=function(){
return this.compiler;
};
_4b2.prototype.rootScope=function(){
return this.prev?this.prev.rootScope():this;
};
_4b2.prototype.isRootScope=function(){
return !this.prev;
};
_4b2.prototype.currentClassName=function(){
return this.classDef?this.classDef.className:this.prev?this.prev.currentClassName():null;
};
_4b2.prototype.getIvarForCurrentClass=function(_4b3){
if(this.ivars){
var ivar=this.ivars[_4b3];
if(ivar){
return ivar;
}
}
var prev=this.prev;
if(prev&&!this.classDef){
return prev.getIvarForCurrentClass(_4b3);
}
return null;
};
_4b2.prototype.getLvar=function(_4b4,_4b5){
if(this.vars){
var lvar=this.vars[_4b4];
if(lvar){
return lvar;
}
}
var prev=this.prev;
if(prev&&(!_4b5||!this.methodType)){
return prev.getLvar(_4b4,_4b5);
}
return null;
};
_4b2.prototype.currentMethodType=function(){
return this.methodType?this.methodType:this.prev?this.prev.currentMethodType():null;
};
_4b2.prototype.copyAddedSelfToIvarsToParent=function(){
if(this.prev&&this.addedSelfToIvars){
for(var key in this.addedSelfToIvars){
var _4b6=this.addedSelfToIvars[key],_4b7=(this.prev.addedSelfToIvars||(this.prev.addedSelfToIvars=Object.create(null)))[key]||(this.prev.addedSelfToIvars[key]=[]);
_4b7.push.apply(_4b7,_4b6);
}
}
};
_4b2.prototype.addMaybeWarning=function(_4b8){
var _4b9=this.rootScope();
(_4b9._maybeWarnings||(_4b9._maybeWarnings=[])).push(_4b8);
};
_4b2.prototype.maybeWarnings=function(){
return this.rootScope()._maybeWarnings;
};
var _4ba=function(_4bb,node,code){
this.message=_4bc(_4bb,node,code);
this.node=node;
};
_4ba.prototype.checkIfWarning=function(st){
var _4bd=this.node.name;
return !st.getLvar(_4bd)&&typeof _1[_4bd]==="undefined"&&typeof window[_4bd]==="undefined"&&!st.compiler.getClassDef(_4bd);
};
function _2a0(){
this.atoms=[];
};
_2a0.prototype.toString=function(){
return this.atoms.join("");
};
_2a0.prototype.concat=function(_4be){
this.atoms.push(_4be);
};
_2a0.prototype.isEmpty=function(){
return this.atoms.length!==0;
};
var _4bf="";
var _4c0=_2.acorn.makePredicate("self _cmd undefined localStorage arguments");
var _4c1=_2.acorn.makePredicate("delete in instanceof new typeof void");
var _4c2=_2.acorn.makePredicate("LogicalExpression BinaryExpression");
var _4c3=_2.acorn.makePredicate("in instanceof");
var _4c4=function(_4c5,aURL,_4c6,pass,_4c7){
this.source=_4c5;
this.URL=new CFURL(aURL);
this.pass=pass;
this.jsBuffer=new _2a0();
this.imBuffer=null;
this.cmBuffer=null;
this.warnings=[];
try{
this.tokens=_2.acorn.parse(_4c5);
}
catch(e){
if(e.lineStart){
var _4c8=this.prettifyMessage(e,"ERROR");
console.log(_4c8);
}
throw e;
}
this.dependencies=[];
this.flags=_4c6|_4c4.Flags.IncludeDebugSymbols;
this.classDefs=_4c7?_4c7:Object.create(null);
this.lastPos=0;
if(_4bf&_4c4.Flags.Generate){
this.generate=true;
}
this.generate=true;
_4c9(this.tokens,new _4b2(null,{compiler:this}),pass===2?_4ca:_4cb);
};
_2.ObjJAcornCompiler=_4c4;
_2.ObjJAcornCompiler.compileToExecutable=function(_4cc,aURL,_4cd){
_4c4.currentCompileFile=aURL;
return new _4c4(_4cc,aURL,_4cd,2).executable();
};
_2.ObjJAcornCompiler.compileToIMBuffer=function(_4ce,aURL,_4cf,_4d0){
return new _4c4(_4ce,aURL,_4cf,2,_4d0).IMBuffer();
};
_2.ObjJAcornCompiler.compileFileDependencies=function(_4d1,aURL,_4d2){
_4c4.currentCompileFile=aURL;
return new _4c4(_4d1,aURL,_4d2,1).executable();
};
_4c4.prototype.compilePass2=function(){
_4c4.currentCompileFile=this.URL;
this.pass=2;
this.jsBuffer=new _2a0();
this.warnings=[];
_4c9(this.tokens,new _4b2(null,{compiler:this}),_4ca);
for(var i=0;i<this.warnings.length;i++){
var _4d3=this.prettifyMessage(this.warnings[i],"WARNING");
console.log(_4d3);
}
return this.jsBuffer.toString();
};
var _4bf="";
_2.setCurrentCompilerFlags=function(_4d4){
_4bf=_4d4;
};
_2.currentCompilerFlags=function(_4d5){
return _4bf;
};
_4c4.Flags={};
_4c4.Flags.IncludeDebugSymbols=1<<0;
_4c4.Flags.IncludeTypeSignatures=1<<1;
_4c4.Flags.Generate=1<<2;
_4c4.prototype.addWarning=function(_4d6){
this.warnings.push(_4d6);
};
_4c4.prototype.getIvarForClass=function(_4d7,_4d8){
var ivar=_4d8.getIvarForCurrentClass(_4d7);
if(ivar){
return ivar;
}
var c=this.getClassDef(_4d8.currentClassName());
while(c){
var _4d9=c.ivars;
if(_4d9){
var _4da=_4d9[_4d7];
if(_4da){
return _4da;
}
}
c=this.getClassDef(c.superClassName);
}
};
_4c4.prototype.getClassDef=function(_4db){
if(!_4db){
return null;
}
var c=this.classDefs[_4db];
if(c){
return c;
}
if(objj_getClass){
var _4dc=objj_getClass(_4db);
if(_4dc){
var _4dd=class_copyIvarList(_4dc),_4de=_4dd.length,_4df=Object.create(null),_4e0=_4dc.super_class;
for(var i=0;i<_4de;i++){
var ivar=_4dd[i];
_4df[ivar.name]={"type":ivar.type,"name":ivar.name};
}
c={"className":_4db,"ivars":_4df};
if(_4e0){
c.superClassName=_4e0.name;
}
this.classDefs[_4db]=c;
return c;
}
}
return null;
};
_4c4.prototype.executable=function(){
if(!this._executable){
this._executable=new _2af(this.jsBuffer?this.jsBuffer.toString():null,this.dependencies,this.URL,null,this);
}
return this._executable;
};
_4c4.prototype.IMBuffer=function(){
return this.imBuffer;
};
_4c4.prototype.JSBuffer=function(){
return this.jsBuffer;
};
_4c4.prototype.prettifyMessage=function(_4e1,_4e2){
var line=this.source.substring(_4e1.lineStart,_4e1.lineEnd),_4e3="\n"+line;
_4e3+=(new Array(_4e1.column+1)).join(" ");
_4e3+=(new Array(Math.min(1,line.length)+1)).join("^")+"\n";
_4e3+=_4e2+" line "+_4e1.line+" in "+this.URL+": "+_4e1.message;
return _4e3;
};
_4c4.prototype.error_message=function(_4e4,node){
var pos=_2.acorn.getLineInfo(this.source,node.start),_4e5={message:_4e4,line:pos.line,column:pos.column,lineStart:pos.lineStart,lineEnd:pos.lineEnd};
return new SyntaxError(this.prettifyMessage(_4e5,"ERROR"));
};
_4c4.prototype.pushImport=function(url){
if(!_4c4.importStack){
_4c4.importStack=[];
}
_4c4.importStack.push(url);
};
_4c4.prototype.popImport=function(){
_4c4.importStack.pop();
};
function _4bc(_4e6,node,code){
var _4e7=_2.acorn.getLineInfo(code,node.start);
_4e7.message=_4e6;
return _4e7;
};
function _4c9(node,_4e8,_4e9){
function c(node,st,_4ea){
_4e9[_4ea||node.type](node,st,c);
};
c(node,_4e8);
};
function _4eb(node){
switch(node.type){
case "Literal":
case "Identifier":
return true;
case "ArrayExpression":
for(var i=0;i<node.elements.length;++i){
if(!_4eb(node.elements[i])){
return false;
}
}
return true;
case "DictionaryLiteral":
for(var i=0;i<node.keys.length;++i){
if(!_4eb(node.keys[i])){
return false;
}
if(!_4eb(node.values[i])){
return false;
}
}
return true;
case "ObjectExpression":
for(var i=0;i<node.properties.length;++i){
if(!_4eb(node.properties[i].value)){
return false;
}
}
return true;
case "FunctionExpression":
for(var i=0;i<node.params.length;++i){
if(!_4eb(node.params[i])){
return false;
}
}
return true;
case "SequenceExpression":
for(var i=0;i<node.expressions.length;++i){
if(!_4eb(node.expressions[i])){
return false;
}
}
return true;
case "UnaryExpression":
return _4eb(node.argument);
case "BinaryExpression":
return _4eb(node.left)&&_4eb(node.right);
case "ConditionalExpression":
return _4eb(node.test)&&_4eb(node.consequent)&&_4eb(node.alternate);
case "MemberExpression":
return _4eb(node.object)&&(!node.computed||_4eb(node.property));
case "Dereference":
return _4eb(node.expr);
case "Reference":
return _4eb(node.element);
default:
return false;
}
};
function _4ec(st,node){
if(!_4eb(node)){
throw st.compiler.error_message("Dereference of expression with side effects",node);
}
};
function _4ed(c){
return function(node,st,_4ee){
st.compiler.jsBuffer.concat("(");
c(node,st,_4ee);
st.compiler.jsBuffer.concat(")");
};
};
var _4ef={"*":3,"/":3,"%":3,"+":4,"-":4,"<<":5,">>":5,">>>":5,"<":6,"<=":6,">":6,">=":6,"in":6,"instanceof":6,"==":7,"!=":7,"===":7,"!==":7,"&":8,"^":9,"|":10,"&&":11,"||":12};
var _4f0={MemberExpression:0,CallExpression:1,NewExpression:2,FunctionExpression:3,UnaryExpression:4,UpdateExpression:4,BinaryExpression:5,LogicalExpression:6,ConditionalExpression:7,AssignmentExpression:8};
function _4f1(node,_4f2,_4f3){
var _4f4=node.type,_4f1=_4f0[_4f4]||-1,_4f5=_4f0[_4f2.type]||-1,_4f6,_4f7;
return _4f1<_4f5||(_4f1===_4f5&&_4c2(_4f4)&&((_4f6=_4ef[node.operator])<(_4f7=_4ef[_4f2.operator])||(_4f3&&_4f6===_4f7)));
};
var _4cb=_2.acorn.walk.make({ImportStatement:function(node,st,c){
var _4f8=node.filename.value;
st.compiler.dependencies.push(new _2de(new CFURL(_4f8),node.localfilepath));
}});
var _4f9=4;
var _4fa=Array(_4f9+1).join(" ");
var _4fb="";
var _4ca=_2.acorn.walk.make({Program:function(node,st,c){
var _4fc=st.compiler,_4fd=_4fc.generate;
_4fb="";
for(var i=0;i<node.body.length;++i){
c(node.body[i],st,"Statement");
}
if(!_4fd){
_4fc.jsBuffer.concat(_4fc.source.substring(_4fc.lastPos,node.end));
}
var _4fe=st.maybeWarnings();
if(_4fe){
for(var i=0;i<_4fe.length;i++){
var _4ff=_4fe[i];
if(_4ff.checkIfWarning(st)){
_4fc.addWarning(_4ff.message);
}
}
}
},BlockStatement:function(node,st,c){
var _500=st.compiler,_501=_500.generate,_502;
if(_501){
st.indentBlockLevel=typeof st.indentBlockLevel==="undefined"?0:st.indentBlockLevel+1;
_502=_500.jsBuffer;
_502.concat(_4fb.substring(_4f9));
_502.concat("{\n");
}
for(var i=0;i<node.body.length;++i){
c(node.body[i],st,"Statement");
}
if(_501){
_502.concat(_4fb.substring(_4f9));
_502.concat("}");
if(st.isDecl||st.indentBlockLevel>0){
_502.concat("\n");
}
st.indentBlockLevel--;
}
},ExpressionStatement:function(node,st,c){
var _503=st.compiler,_504=_503.generate;
if(_504){
_503.jsBuffer.concat(_4fb);
}
c(node.expression,st,"Expression");
if(_504){
_503.jsBuffer.concat(";\n");
}
},IfStatement:function(node,st,c){
var _505=st.compiler,_506=_505.generate,_507;
if(_506){
_507=_505.jsBuffer;
if(!st.superNodeIsElse){
_507.concat(_4fb);
}else{
delete st.superNodeIsElse;
}
_507.concat("if (");
}
c(node.test,st,"Expression");
if(_506){
_507.concat(")\n");
}
_4fb+=_4fa;
c(node.consequent,st,"Statement");
_4fb=_4fb.substring(_4f9);
var _508=node.alternate;
if(_508){
var _509=_508.type!=="IfStatement";
if(_506){
_507.concat(_4fb);
_507.concat(_509?"else\n":"else ");
}
if(_509){
_4fb+=_4fa;
}else{
st.superNodeIsElse=true;
}
c(_508,st,"Statement");
if(_509){
_4fb=_4fb.substring(_4f9);
}
}
},LabeledStatement:function(node,st,c){
var _50a=st.compiler;
if(_50a.generate){
var _50b=_50a.jsBuffer;
_50b.concat(_4fb);
_50b.concat(node.label.name);
_50b.concat(": ");
}
c(node.body,st,"Statement");
},BreakStatement:function(node,st,c){
var _50c=st.compiler;
if(_50c.generate){
_50c.jsBuffer.concat(_4fb);
if(node.label){
_50c.jsBuffer.concat("break ");
_50c.jsBuffer.concat(node.label.name);
_50c.jsBuffer.concat(";\n");
}else{
_50c.jsBuffer.concat("break;\n");
}
}
},ContinueStatement:function(node,st,c){
var _50d=st.compiler;
if(_50d.generate){
var _50e=_50d.jsBuffer;
_50e.concat(_4fb);
if(node.label){
_50e.concat("continue ");
_50e.concat(node.label.name);
_50e.concat(";\n");
}else{
_50e.concat("continue;\n");
}
}
},WithStatement:function(node,st,c){
var _50f=st.compiler,_510=_50f.generate,_511;
if(_510){
_511=_50f.jsBuffer;
_511.concat(_4fb);
_511.concat("with(");
}
c(node.object,st,"Expression");
if(_510){
_511.concat(")\n");
}
_4fb+=_4fa;
c(node.body,st,"Statement");
_4fb=_4fb.substring(_4f9);
},SwitchStatement:function(node,st,c){
var _512=st.compiler,_513=_512.generate,_514;
if(_513){
_514=_512.jsBuffer;
_514.concat(_4fb);
_514.concat("switch(");
}
c(node.discriminant,st,"Expression");
if(_513){
_514.concat(") {\n");
}
for(var i=0;i<node.cases.length;++i){
var cs=node.cases[i];
if(cs.test){
if(_513){
_514.concat(_4fb);
_514.concat("case ");
}
c(cs.test,st,"Expression");
if(_513){
_514.concat(":\n");
}
}else{
if(_513){
_514.concat("default:\n");
}
}
_4fb+=_4fa;
for(var j=0;j<cs.consequent.length;++j){
c(cs.consequent[j],st,"Statement");
}
_4fb=_4fb.substring(_4f9);
}
if(_513){
_514.concat(_4fb);
_514.concat("}\n");
}
},ReturnStatement:function(node,st,c){
var _515=st.compiler,_516=_515.generate,_517;
if(_516){
_517=_515.jsBuffer;
_517.concat(_4fb);
_517.concat("return");
}
if(node.argument){
if(_516){
_517.concat(" ");
}
c(node.argument,st,"Expression");
}
if(_516){
_517.concat(";\n");
}
},ThrowStatement:function(node,st,c){
var _518=st.compiler,_519=_518.generate,_51a;
if(_519){
_51a=_518.jsBuffer;
_51a.concat(_4fb);
_51a.concat("throw ");
}
c(node.argument,st,"Expression");
if(_519){
_51a.concat(";\n");
}
},TryStatement:function(node,st,c){
var _51b=st.compiler,_51c=_51b.generate,_51d;
if(_51c){
_51d=_51b.jsBuffer;
_51d.concat(_4fb);
_51d.concat("try");
}
_4fb+=_4fa;
c(node.block,st,"Statement");
_4fb=_4fb.substring(_4f9);
for(var i=0;i<node.handlers.length;++i){
var _51e=node.handlers[i],_51f=new _4b2(st),_520=_51e.param,name=_520.name;
_51f.vars[name]={type:"catch clause",node:_520};
if(_51c){
_51d.concat(_4fb);
_51d.concat("catch(");
_51d.concat(name);
_51d.concat(") ");
}
_4fb+=_4fa;
c(_51e.body,_51f,"ScopeBody");
_4fb=_4fb.substring(_4f9);
_51f.copyAddedSelfToIvarsToParent();
}
if(node.finalizer){
if(_51c){
_51d.concat(_4fb);
_51d.concat("finally ");
}
_4fb+=_4fa;
c(node.finalizer,st,"Statement");
_4fb=_4fb.substring(_4f9);
}
},WhileStatement:function(node,st,c){
var _521=st.compiler,_522=_521.generate,body=node.body,_523;
if(_522){
_523=_521.jsBuffer;
_523.concat(_4fb);
_523.concat("while (");
}
c(node.test,st,"Expression");
if(_522){
_523.concat(body.type==="EmptyStatement"?");\n":")\n");
}
_4fb+=_4fa;
c(body,st,"Statement");
_4fb=_4fb.substring(_4f9);
},DoWhileStatement:function(node,st,c){
var _524=st.compiler,_525=_524.generate,_526;
if(_525){
_526=_524.jsBuffer;
_526.concat(_4fb);
_526.concat("do\n");
}
_4fb+=_4fa;
c(node.body,st,"Statement");
_4fb=_4fb.substring(_4f9);
if(_525){
_526.concat(_4fb);
_526.concat("while (");
}
c(node.test,st,"Expression");
if(_525){
_526.concat(");\n");
}
},ForStatement:function(node,st,c){
var _527=st.compiler,_528=_527.generate,body=node.body,_529;
if(_528){
_529=_527.jsBuffer;
_529.concat(_4fb);
_529.concat("for (");
}
if(node.init){
c(node.init,st,"ForInit");
}
if(_528){
_529.concat("; ");
}
if(node.test){
c(node.test,st,"Expression");
}
if(_528){
_529.concat("; ");
}
if(node.update){
c(node.update,st,"Expression");
}
if(_528){
_529.concat(body.type==="EmptyStatement"?");\n":")\n");
}
_4fb+=_4fa;
c(body,st,"Statement");
_4fb=_4fb.substring(_4f9);
},ForInStatement:function(node,st,c){
var _52a=st.compiler,_52b=_52a.generate,body=node.body,_52c;
if(_52b){
_52c=_52a.jsBuffer;
_52c.concat(_4fb);
_52c.concat("for (");
}
c(node.left,st,"ForInit");
if(_52b){
_52c.concat(" in ");
}
c(node.right,st,"Expression");
if(_52b){
_52c.concat(body.type==="EmptyStatement"?");\n":")\n");
}
_4fb+=_4fa;
c(body,st,"Statement");
_4fb=_4fb.substring(_4f9);
},ForInit:function(node,st,c){
var _52d=st.compiler,_52e=_52d.generate;
if(node.type==="VariableDeclaration"){
st.isFor=true;
c(node,st);
delete st.isFor;
}else{
c(node,st,"Expression");
}
},DebuggerStatement:function(node,st,c){
var _52f=st.compiler;
if(_52f.generate){
var _530=_52f.jsBuffer;
_530.concat(_4fb);
_530.concat("debugger;\n");
}
},Function:function(node,st,c){
var _531=st.compiler,_532=_531.generate,_533=_531.jsBuffer;
inner=new _4b2(st),decl=node.type=="FunctionDeclaration";
inner.isDecl=decl;
for(var i=0;i<node.params.length;++i){
inner.vars[node.params[i].name]={type:"argument",node:node.params[i]};
}
if(node.id){
(decl?st:inner).vars[node.id.name]={type:decl?"function":"function name",node:node.id};
if(_532){
_533.concat(node.id.name);
_533.concat(" = ");
}else{
_533.concat(_531.source.substring(_531.lastPos,node.start));
_533.concat(node.id.name);
_533.concat(" = function");
_531.lastPos=node.id.end;
}
}
if(_532){
_533.concat("function(");
for(var i=0;i<node.params.length;++i){
if(i){
_533.concat(", ");
}
_533.concat(node.params[i].name);
}
_533.concat(")\n");
}
_4fb+=_4fa;
c(node.body,inner,"ScopeBody");
_4fb=_4fb.substring(_4f9);
inner.copyAddedSelfToIvarsToParent();
},VariableDeclaration:function(node,st,c){
var _534=st.compiler,_535=_534.generate,_536;
if(_535){
_536=_534.jsBuffer;
if(!st.isFor){
_536.concat(_4fb);
}
_536.concat("var ");
}
for(var i=0;i<node.declarations.length;++i){
var decl=node.declarations[i],_537=decl.id.name;
if(i){
if(_535){
if(st.isFor){
_536.concat(", ");
}else{
_536.concat(",\n");
_536.concat(_4fb);
_536.concat("    ");
}
}
}
st.vars[_537]={type:"var",node:decl.id};
if(_535){
_536.concat(_537);
}
if(decl.init){
if(_535){
_536.concat(" = ");
}
c(decl.init,st,"Expression");
}
if(st.addedSelfToIvars){
var _538=st.addedSelfToIvars[_537];
if(_538){
var _536=st.compiler.jsBuffer.atoms;
for(var i=0;i<_538.length;i++){
var dict=_538[i];
_536[dict.index]="";
_534.addWarning(_4bc("Local declaration of '"+_537+"' hides instance variable",dict.node,_534.source));
}
st.addedSelfToIvars[_537]=[];
}
}
}
if(_535&&!st.isFor){
_534.jsBuffer.concat(";\n");
}
},ThisExpression:function(node,st,c){
var _539=st.compiler;
if(_539.generate){
_539.jsBuffer.concat("this");
}
},ArrayExpression:function(node,st,c){
var _53a=st.compiler,_53b=_53a.generate;
if(_53b){
_53a.jsBuffer.concat("[");
}
for(var i=0;i<node.elements.length;++i){
var elt=node.elements[i];
if(i!==0){
if(_53b){
_53a.jsBuffer.concat(", ");
}
}
if(elt){
c(elt,st,"Expression");
}
}
if(_53b){
_53a.jsBuffer.concat("]");
}
},ObjectExpression:function(node,st,c){
var _53c=st.compiler,_53d=_53c.generate;
if(_53d){
_53c.jsBuffer.concat("{");
}
for(var i=0;i<node.properties.length;++i){
var prop=node.properties[i];
if(_53d){
if(i){
_53c.jsBuffer.concat(", ");
}
st.isPropertyKey=true;
c(prop.key,st,"Expression");
delete st.isPropertyKey;
_53c.jsBuffer.concat(": ");
}else{
if(prop.key.raw&&prop.key.raw.charAt(0)==="@"){
_53c.jsBuffer.concat(_53c.source.substring(_53c.lastPos,prop.key.start));
_53c.lastPos=prop.key.start+1;
}
}
c(prop.value,st,"Expression");
}
if(_53d){
_53c.jsBuffer.concat("}");
}
},SequenceExpression:function(node,st,c){
var _53e=st.compiler,_53f=_53e.generate;
if(_53f){
_53e.jsBuffer.concat("(");
}
for(var i=0;i<node.expressions.length;++i){
if(_53f&&i!==0){
_53e.jsBuffer.concat(", ");
}
c(node.expressions[i],st,"Expression");
}
if(_53f){
_53e.jsBuffer.concat(")");
}
},UnaryExpression:function(node,st,c){
var _540=st.compiler,_541=_540.generate,_542=node.argument;
if(_541){
if(node.prefix){
_540.jsBuffer.concat(node.operator);
if(_4c1(node.operator)){
_540.jsBuffer.concat(" ");
}
(_4f1(node,_542)?_4ed(c):c)(_542,st,"Expression");
}else{
(_4f1(node,_542)?_4ed(c):c)(_542,st,"Expression");
_540.jsBuffer.concat(node.operator);
}
}else{
c(_542,st,"Expression");
}
},UpdateExpression:function(node,st,c){
var _543=st.compiler,_544=_543.generate;
if(node.argument.type==="Dereference"){
_4ec(st,node.argument);
if(!_544){
_543.jsBuffer.concat(_543.source.substring(_543.lastPos,node.start));
}
_543.jsBuffer.concat((node.prefix?"":"(")+"(");
if(!_544){
_543.lastPos=node.argument.expr.start;
}
c(node.argument.expr,st,"Expression");
if(!_544){
_543.jsBuffer.concat(_543.source.substring(_543.lastPos,node.argument.expr.end));
}
_543.jsBuffer.concat(")(");
if(!_544){
_543.lastPos=node.argument.start;
}
c(node.argument,st,"Expression");
if(!_544){
_543.jsBuffer.concat(_543.source.substring(_543.lastPos,node.argument.end));
}
_543.jsBuffer.concat(" "+node.operator.substring(0,1)+" 1)"+(node.prefix?"":node.operator=="++"?" - 1)":" + 1)"));
if(!_544){
_543.lastPos=node.end;
}
return;
}
if(node.prefix){
if(_544){
_543.jsBuffer.concat(node.operator);
if(_4c1(node.operator)){
_543.jsBuffer.concat(" ");
}
}
(_544&&_4f1(node,node.argument)?_4ed(c):c)(node.argument,st,"Expression");
}else{
(_544&&_4f1(node,node.argument)?_4ed(c):c)(node.argument,st,"Expression");
if(_544){
_543.jsBuffer.concat(node.operator);
}
}
},BinaryExpression:function(node,st,c){
var _545=st.compiler,_546=_545.generate,_547=_4c3(node.operator);
(_546&&_4f1(node,node.left)?_4ed(c):c)(node.left,st,"Expression");
if(_546){
var _548=_545.jsBuffer;
_548.concat(" ");
_548.concat(node.operator);
_548.concat(" ");
}
(_546&&_4f1(node,node.right,true)?_4ed(c):c)(node.right,st,"Expression");
},LogicalExpression:function(node,st,c){
var _549=st.compiler,_54a=_549.generate;
(_54a&&_4f1(node,node.left)?_4ed(c):c)(node.left,st,"Expression");
if(_54a){
var _54b=_549.jsBuffer;
_54b.concat(" ");
_54b.concat(node.operator);
_54b.concat(" ");
}
(_54a&&_4f1(node,node.right,true)?_4ed(c):c)(node.right,st,"Expression");
},AssignmentExpression:function(node,st,c){
var _54c=st.compiler,_54d=_54c.generate,_54e=st.assignment,_54f=_54c.jsBuffer;
if(node.left.type==="Dereference"){
_4ec(st,node.left);
if(!_54d){
_54f.concat(_54c.source.substring(_54c.lastPos,node.start));
}
_54f.concat("(");
if(!_54d){
_54c.lastPos=node.left.expr.start;
}
c(node.left.expr,st,"Expression");
if(!_54d){
_54f.concat(_54c.source.substring(_54c.lastPos,node.left.expr.end));
}
_54f.concat(")(");
if(node.operator!=="="){
if(!_54d){
_54c.lastPos=node.left.start;
}
c(node.left,st,"Expression");
if(!_54d){
_54f.concat(_54c.source.substring(_54c.lastPos,node.left.end));
}
_54f.concat(" "+node.operator.substring(0,1)+" ");
}
if(!_54d){
_54c.lastPos=node.right.start;
}
c(node.right,st,"Expression");
if(!_54d){
_54f.concat(_54c.source.substring(_54c.lastPos,node.right.end));
}
_54f.concat(")");
if(!_54d){
_54c.lastPos=node.end;
}
return;
}
var _54e=st.assignment;
st.assignment=true;
(_54d&&_4f1(node,node.left)?_4ed(c):c)(node.left,st,"Expression");
if(_54d){
_54f.concat(" ");
_54f.concat(node.operator);
_54f.concat(" ");
}
st.assignment=_54e;
(_54d&&_4f1(node,node.right,true)?_4ed(c):c)(node.right,st,"Expression");
if(st.isRootScope()&&node.left.type==="Identifier"&&!st.getLvar(node.left.name)){
st.vars[node.left.name]={type:"global",node:node.left};
}
},ConditionalExpression:function(node,st,c){
var _550=st.compiler,_551=_550.generate;
(_551&&_4f1(node,node.test)?_4ed(c):c)(node.test,st,"Expression");
if(_551){
_550.jsBuffer.concat(" ? ");
}
c(node.consequent,st,"Expression");
if(_551){
_550.jsBuffer.concat(" : ");
}
c(node.alternate,st,"Expression");
},NewExpression:function(node,st,c){
var _552=st.compiler,_553=_552.generate;
if(_553){
_552.jsBuffer.concat("new ");
}
(_553&&_4f1(node,node.callee)?_4ed(c):c)(node.callee,st,"Expression");
if(_553){
_552.jsBuffer.concat("(");
}
if(node.arguments){
for(var i=0;i<node.arguments.length;++i){
if(_553&&i){
_552.jsBuffer.concat(", ");
}
c(node.arguments[i],st,"Expression");
}
}
if(_553){
_552.jsBuffer.concat(")");
}
},CallExpression:function(node,st,c){
var _554=st.compiler,_555=_554.generate;
(_555&&_4f1(node,node.callee)?_4ed(c):c)(node.callee,st,"Expression");
if(_555){
_554.jsBuffer.concat("(");
}
if(node.arguments){
for(var i=0;i<node.arguments.length;++i){
if(_555&&i){
_554.jsBuffer.concat(", ");
}
c(node.arguments[i],st,"Expression");
}
}
if(_555){
_554.jsBuffer.concat(")");
}
},MemberExpression:function(node,st,c){
var _556=st.compiler,_557=_556.generate,_558=node.computed;
(_557&&_4f1(node,node.object)?_4ed(c):c)(node.object,st,"Expression");
if(_557){
if(_558){
_556.jsBuffer.concat("[");
}else{
_556.jsBuffer.concat(".");
}
}
st.secondMemberExpression=!_558;
(_557&&!_558&&_4f1(node,node.property)?_4ed(c):c)(node.property,st,"Expression");
st.secondMemberExpression=false;
if(_557&&_558){
_556.jsBuffer.concat("]");
}
},Identifier:function(node,st,c){
var _559=st.compiler,_55a=_559.generate,_55b=node.name;
if(st.currentMethodType()==="-"&&!st.secondMemberExpression&&!st.isPropertyKey){
var lvar=st.getLvar(_55b,true),ivar=_559.getIvarForClass(_55b,st);
if(ivar){
if(lvar){
_559.addWarning(_4bc("Local declaration of '"+_55b+"' hides instance variable",node,_559.source));
}else{
var _55c=node.start;
if(!_55a){
do{
_559.jsBuffer.concat(_559.source.substring(_559.lastPos,_55c));
_559.lastPos=_55c;
}while(_559.source.substr(_55c++,1)==="(");
}
((st.addedSelfToIvars||(st.addedSelfToIvars=Object.create(null)))[_55b]||(st.addedSelfToIvars[_55b]=[])).push({node:node,index:_559.jsBuffer.atoms.length});
_559.jsBuffer.concat("self.");
}
}else{
if(!_4c0(_55b)){
var _55d,_55e=typeof _1[_55b]!=="undefined"||typeof window[_55b]!=="undefined"||_559.getClassDef(_55b),_55f=st.getLvar(_55b);
if(_55e&&(!_55f||_55f.type!=="class")){
}else{
if(!_55f){
if(st.assignment){
_55d=new _4ba("Creating global variable inside function or method '"+_55b+"'",node,_559.source);
st.vars[_55b]={type:"remove global warning",node:node};
}else{
_55d=new _4ba("Using unknown class or uninitialized global variable '"+_55b+"'",node,_559.source);
}
}
}
if(_55d){
st.addMaybeWarning(_55d);
}
}
}
}
if(_55a){
_559.jsBuffer.concat(_55b);
}
},Literal:function(node,st,c){
var _560=st.compiler,_561=_560.generate;
if(_561){
if(node.raw&&node.raw.charAt(0)==="@"){
_560.jsBuffer.concat(node.raw.substring(1));
}else{
_560.jsBuffer.concat(node.raw);
}
}else{
if(node.raw.charAt(0)==="@"){
_560.jsBuffer.concat(_560.source.substring(_560.lastPos,node.start));
_560.lastPos=node.start+1;
}
}
},ArrayLiteral:function(node,st,c){
var _562=st.compiler,_563=_562.generate;
if(!_563){
_562.jsBuffer.concat(_562.source.substring(_562.lastPos,node.start));
_562.lastPos=node.start;
}
if(!_563){
buffer.concat(" ");
}
if(!node.elements.length){
_562.jsBuffer.concat("objj_msgSend(objj_msgSend(CPArray, \"alloc\"), \"init\")");
}else{
_562.jsBuffer.concat("objj_msgSend(objj_msgSend(CPArray, \"alloc\"), \"initWithObjects:count:\", [");
for(var i=0;i<node.elements.length;i++){
var elt=node.elements[i];
if(i){
_562.jsBuffer.concat(", ");
}
if(!_563){
_562.lastPos=elt.start;
}
c(elt,st,"Expression");
if(!_563){
_562.jsBuffer.concat(_562.source.substring(_562.lastPos,elt.end));
}
}
_562.jsBuffer.concat("], "+node.elements.length+")");
}
if(!_563){
_562.lastPos=node.end;
}
},DictionaryLiteral:function(node,st,c){
var _564=st.compiler,_565=_564.generate;
if(!_565){
_564.jsBuffer.concat(_564.source.substring(_564.lastPos,node.start));
_564.lastPos=node.start;
}
if(!_565){
buffer.concat(" ");
}
if(!node.keys.length){
_564.jsBuffer.concat("objj_msgSend(objj_msgSend(CPDictionary, \"alloc\"), \"init\")");
}else{
_564.jsBuffer.concat("objj_msgSend(objj_msgSend(CPDictionary, \"alloc\"), \"initWithObjectsAndKeys:\"");
for(var i=0;i<node.keys.length;i++){
var key=node.keys[i],_566=node.values[i];
_564.jsBuffer.concat(", ");
if(!_565){
_564.lastPos=_566.start;
}
c(_566,st,"Expression");
if(!_565){
_564.jsBuffer.concat(_564.source.substring(_564.lastPos,_566.end));
}
_564.jsBuffer.concat(", ");
if(!_565){
_564.lastPos=key.start;
}
c(key,st,"Expression");
if(!_565){
_564.jsBuffer.concat(_564.source.substring(_564.lastPos,key.end));
}
}
_564.jsBuffer.concat(")");
}
if(!_565){
_564.lastPos=node.end;
}
},ImportStatement:function(node,st,c){
var _567=st.compiler,_568=_567.generate,_569=_567.jsBuffer;
if(!_568){
_569.concat(_567.source.substring(_567.lastPos,node.start));
}
_569.concat("objj_executeFile(\"");
_569.concat(node.filename.value);
_569.concat(node.localfilepath?"\", YES);":"\", NO);");
if(!_568){
_567.lastPos=node.end;
}
},ClassDeclarationStatement:function(node,st,c){
var _56a=st.compiler,_56b=_56a.generate,_56c,_56d=_56a.jsBuffer,_56e=node.classname.name,_56f=new _4b2(st);
_56a.imBuffer=new _2a0();
_56a.cmBuffer=new _2a0();
_56a.classBodyBuffer=new _2a0();
if(!_56b){
_56d.concat(_56a.source.substring(_56a.lastPos,node.start));
}
if(node.superclassname){
_56c=_56a.getClassDef(_56e);
if(_56c&&_56c.ivars){
throw _56a.error_message("Duplicate class "+_56e,node.classname);
}
if(!_56a.getClassDef(node.superclassname.name)){
var _570="Can't find superclass "+node.superclassname.name;
for(var i=_4c4.importStack.length;--i>=0;){
_570+="\n"+Array((_4c4.importStack.length-i)*2+1).join(" ")+"Imported by: "+_4c4.importStack[i];
}
throw _56a.error_message(_570,node.superclassname);
}
_56c={"className":_56e,"superClassName":node.superclassname.name,"ivars":Object.create(null),"methods":Object.create(null)};
_56d.concat("{var the_class = objj_allocateClassPair("+node.superclassname.name+", \""+_56e+"\"),\nmeta_class = the_class.isa;");
}else{
if(node.categoryname){
_56c=_56a.getClassDef(_56e);
if(!_56c){
throw _56a.error_message("Class "+_56e+" not found ",node.classname);
}
_56d.concat("{\nvar the_class = objj_getClass(\""+_56e+"\")\n");
_56d.concat("if(!the_class) throw new SyntaxError(\"*** Could not find definition for class \\\""+_56e+"\\\"\");\n");
_56d.concat("var meta_class = the_class.isa;");
}else{
_56c={"className":_56e,"superClassName":null,"ivars":Object.create(null),"methods":Object.create(null)};
_56d.concat("{var the_class = objj_allocateClassPair(Nil, \""+_56e+"\"),\nmeta_class = the_class.isa;");
}
}
_56f.classDef=_56c;
_56a.currentSuperClass="objj_getClass(\""+_56e+"\").super_class";
_56a.currentSuperMetaClass="objj_getMetaClass(\""+_56e+"\").super_class";
var _571=true,_572=false;
if(node.ivardeclarations){
for(var i=0;i<node.ivardeclarations.length;++i){
var _573=node.ivardeclarations[i],_574=_573.ivartype?_573.ivartype.name:null,_575=_573.id.name,ivar={"type":_574,"name":_575};
if(_571){
_571=false;
_56d.concat("class_addIvars(the_class, [");
}else{
_56d.concat(", ");
}
if(_56a.flags&_4c4.Flags.IncludeTypeSignatures){
_56d.concat("new objj_ivar(\""+_575+"\", \""+_574+"\")");
}else{
_56d.concat("new objj_ivar(\""+_575+"\")");
}
if(_573.outlet){
ivar.outlet=true;
}
_56c.ivars[_575]=ivar;
if(!_56f.ivars){
_56f.ivars=Object.create(null);
}
_56f.ivars[_575]={type:"ivar",name:_575,node:_573.id,ivar:ivar};
if(!_572&&_573.accessors){
_572=true;
}
}
}
if(!_571){
_56d.concat("]);");
}
if(_572){
var _576=new _2a0();
_576.concat(_56a.source.substring(node.start,node.endOfIvars));
_576.concat("\n");
for(var i=0;i<node.ivardeclarations.length;++i){
var _573=node.ivardeclarations[i],_574=_573.ivartype?_573.ivartype.name:null,_575=_573.id.name,_577=_573.accessors;
if(!_577){
continue;
}
var _578=(_577.property&&_577.property.name)||_575,_579=(_577.getter&&_577.getter.name)||_578,_57a="- ("+(_574?_574:"id")+")"+_579+"\n{\nreturn "+_575+";\n}\n";
_576.concat(_57a);
if(_577.readonly){
continue;
}
var _57b=_577.setter?_577.setter.name:null;
if(!_57b){
var _57c=_578.charAt(0)=="_"?1:0;
_57b=(_57c?"_":"")+"set"+_578.substr(_57c,1).toUpperCase()+_578.substring(_57c+1)+":";
}
var _57d="- (void)"+_57b+"("+(_574?_574:"id")+")newValue\n{\n";
if(_577.copy){
_57d+="if ("+_575+" !== newValue)\n"+_575+" = [newValue copy];\n}\n";
}else{
_57d+=_575+" = newValue;\n}\n";
}
_576.concat(_57d);
}
_576.concat("\n@end");
var b=_576.toString().replace(/@accessors(\(.*\))?/g,"");
var _57e=_4c4.compileToIMBuffer(b,"Accessors",_56a.flags,_56a.classDefs);
_56a.imBuffer.concat(_57e);
}
_56a.classDefs[_56e]=_56c;
if(node.body.length>0){
if(!_56b){
_56a.lastPos=node.body[0].start;
}
for(var i=0;i<node.body.length;++i){
var body=node.body[i];
c(body,_56f,"Statement");
}
if(!_56b){
_56d.concat(_56a.source.substring(_56a.lastPos,body.end));
}
}
if(!node.categoryname){
_56d.concat("objj_registerClassPair(the_class);\n");
}
if(_56a.imBuffer.isEmpty()){
_56d.concat("class_addMethods(the_class, [");
_56d.atoms.push.apply(_56d.atoms,_56a.imBuffer.atoms);
_56d.concat("]);\n");
}
if(_56a.cmBuffer.isEmpty()){
_56d.concat("class_addMethods(meta_class, [");
_56d.atoms.push.apply(_56d.atoms,_56a.cmBuffer.atoms);
_56d.concat("]);\n");
}
_56d.concat("}");
_56a.jsBuffer=_56d;
if(!_56b){
_56a.lastPos=node.end;
}
},MethodDeclarationStatement:function(node,st,c){
var _57f=st.compiler,_580=_57f.generate,_581=_57f.jsBuffer,_582=new _4b2(st),_583=node.selectors,_584=node.arguments,_585=[node.returntype?node.returntype.name:"id"],_586=_583[0].name;
if(!_580){
_581.concat(_57f.source.substring(_57f.lastPos,node.start));
}
_57f.jsBuffer=node.methodtype==="-"?_57f.imBuffer:_57f.cmBuffer;
for(var i=0;i<_584.length;i++){
if(i===0){
_586+=":";
}else{
_586+=(_583[i]?_583[i].name:"")+":";
}
}
if(_57f.jsBuffer.isEmpty()){
_57f.jsBuffer.concat(", ");
}
_57f.jsBuffer.concat("new objj_method(sel_getUid(\"");
_57f.jsBuffer.concat(_586);
_57f.jsBuffer.concat("\"), function");
if(_57f.flags&_4c4.Flags.IncludeDebugSymbols){
_57f.jsBuffer.concat(" $"+st.currentClassName()+"__"+_586.replace(/:/g,"_"));
}
_57f.jsBuffer.concat("(self, _cmd");
_582.methodType=node.methodtype;
if(_584){
for(var i=0;i<_584.length;i++){
var _587=_584[i],_588=_587.identifier.name;
_57f.jsBuffer.concat(", ");
_57f.jsBuffer.concat(_588);
_585.push(_587.type?_587.type.name:null);
_582.vars[_588]={type:"method argument",node:_587};
}
}
_57f.jsBuffer.concat(")\n");
if(!_580){
_57f.lastPos=node.startOfBody;
}
_4fb+=_4fa;
c(node.body,_582,"Statement");
_4fb=_4fb.substring(_4f9);
if(!_580){
_57f.jsBuffer.concat(_57f.source.substring(_57f.lastPos,node.body.end));
}
_57f.jsBuffer.concat("\n");
if(_57f.flags&_4c4.Flags.IncludeDebugSymbols){
_57f.jsBuffer.concat(","+JSON.stringify(_585));
}
_57f.jsBuffer.concat(")");
_57f.jsBuffer=_581;
if(!_580){
_57f.lastPos=node.end;
}
},MessageSendExpression:function(node,st,c){
var _589=st.compiler,_58a=_589.generate,_58b=_589.jsBuffer;
if(!_58a){
_58b.concat(_589.source.substring(_589.lastPos,node.start));
_589.lastPos=node.object?node.object.start:node.arguments.length?node.arguments[0].start:node.end;
}
if(node.superObject){
if(!_58a){
_58b.concat(" ");
}
_58b.concat("objj_msgSendSuper(");
_58b.concat("{ receiver:self, super_class:"+(st.currentMethodType()==="+"?_589.currentSuperMetaClass:_589.currentSuperClass)+" }");
}else{
if(!_58a){
_58b.concat(" ");
}
_58b.concat("objj_msgSend(");
c(node.object,st,"Expression");
if(!_58a){
_58b.concat(_589.source.substring(_589.lastPos,node.object.end));
}
}
var _58c=node.selectors,_58d=node.arguments,_58e=_58c[0],_58f=_58e?_58e.name:"";
for(var i=0;i<_58d.length;i++){
if(i===0){
_58f+=":";
}else{
_58f+=(_58c[i]?_58c[i].name:"")+":";
}
}
_58b.concat(", \"");
_58b.concat(_58f);
_58b.concat("\"");
if(node.arguments){
for(var i=0;i<node.arguments.length;i++){
var _590=node.arguments[i];
_58b.concat(", ");
if(!_58a){
_589.lastPos=_590.start;
}
c(_590,st,"Expression");
if(!_58a){
_58b.concat(_589.source.substring(_589.lastPos,_590.end));
_589.lastPos=_590.end;
}
}
}
if(node.parameters){
for(var i=0;i<node.parameters.length;++i){
var _591=node.parameters[i];
_58b.concat(", ");
if(!_58a){
_589.lastPos=_591.start;
}
c(_591,st,"Expression");
if(!_58a){
_58b.concat(_589.source.substring(_589.lastPos,_591.end));
_589.lastPos=_591.end;
}
}
}
_58b.concat(")");
if(!_58a){
_589.lastPos=node.end;
}
},SelectorLiteralExpression:function(node,st,c){
var _592=st.compiler,_593=_592.jsBuffer,_594=_592.generate;
if(!_594){
_593.concat(_592.source.substring(_592.lastPos,node.start));
_593.concat(" ");
}
_593.concat("sel_getUid(\"");
_593.concat(node.selector);
_593.concat("\")");
if(!_594){
_592.lastPos=node.end;
}
},Reference:function(node,st,c){
var _595=st.compiler,_596=_595.jsBuffer,_597=_595.generate;
if(!_597){
_596.concat(_595.source.substring(_595.lastPos,node.start));
_596.concat(" ");
}
_596.concat("function(__input) { if (arguments.length) return ");
_596.concat(node.element.name);
_596.concat(" = __input; return ");
_596.concat(node.element.name);
_596.concat("; }");
if(!_597){
_595.lastPos=node.end;
}
},Dereference:function(node,st,c){
var _598=st.compiler,_599=_598.generate;
_4ec(st,node.expr);
if(!_599){
_598.jsBuffer.concat(_598.source.substring(_598.lastPos,node.start));
_598.lastPos=node.expr.start;
}
c(node.expr,st,"Expression");
if(!_599){
_598.jsBuffer.concat(_598.source.substring(_598.lastPos,node.expr.end));
}
_598.jsBuffer.concat("()");
if(!_599){
_598.lastPos=node.end;
}
},ClassStatement:function(node,st,c){
var _59a=st.compiler;
if(!_59a.generate){
_59a.jsBuffer.concat(_59a.source.substring(_59a.lastPos,node.start));
_59a.lastPos=node.start;
_59a.jsBuffer.concat("//");
}
var _59b=node.id.name;
if(!_59a.getClassDef(_59b)){
classDef={"className":_59b};
_59a.classDefs[_59b]=classDef;
}
st.vars[node.id.name]={type:"class",node:node.id};
},GlobalStatement:function(node,st,c){
var _59c=st.compiler;
if(!_59c.generate){
_59c.jsBuffer.concat(_59c.source.substring(_59c.lastPos,node.start));
_59c.lastPos=node.start;
_59c.jsBuffer.concat("//");
}
st.rootScope().vars[node.id.name]={type:"global",node:node.id};
},PreprocessStatement:function(node,st,c){
var _59d=st.compiler;
if(!_59d.generate){
_59d.jsBuffer.concat(_59d.source.substring(_59d.lastPos,node.start));
_59d.lastPos=node.start;
_59d.jsBuffer.concat("//");
}
}});
function _2de(aURL,_59e){
this._URL=aURL;
this._isLocal=_59e;
};
_2.FileDependency=_2de;
_2de.prototype.URL=function(){
return this._URL;
};
_2de.prototype.isLocal=function(){
return this._isLocal;
};
_2de.prototype.toMarkedString=function(){
var _59f=this.URL().absoluteString();
return (this.isLocal()?_226:_225)+";"+_59f.length+";"+_59f;
};
_2de.prototype.toString=function(){
return (this.isLocal()?"LOCAL: ":"STD: ")+this.URL();
};
var _5a0=0,_5a1=1,_5a2=2,_5a3=0;
function _2af(_5a4,_5a5,aURL,_5a6,_5a7,_5a8){
if(arguments.length===0){
return this;
}
this._code=_5a4;
this._function=_5a6||null;
this._URL=_1c5(aURL||new CFURL("(Anonymous"+(_5a3++)+")"));
this._compiler=_5a7||null;
this._fileDependencies=_5a5;
this._filenameTranslateDictionary=_5a8;
if(_5a5.length){
this._fileDependencyStatus=_5a0;
this._fileDependencyCallbacks=[];
}else{
this._fileDependencyStatus=_5a2;
}
if(this._function){
return;
}
if(!_5a7){
this.setCode(_5a4);
}
};
_2.Executable=_2af;
_2af.prototype.path=function(){
return this.URL().path();
};
_2af.prototype.URL=function(){
return this._URL;
};
_2af.prototype.functionParameters=function(){
var _5a9=["global","objj_executeFile","objj_importFile"];
return _5a9;
};
_2af.prototype.functionArguments=function(){
var _5aa=[_1,this.fileExecuter(),this.fileImporter()];
return _5aa;
};
_2af.prototype.execute=function(){
if(this._compiler){
var _5ab=this.fileDependencies(),_9d=0,_5ac=_5ab.length;
this._compiler.pushImport(this.URL().lastPathComponent());
for(;_9d<_5ac;++_9d){
var _5ad=_5ab[_9d],_5ae=_5ad.isLocal(),URL=_5ad.URL();
this.fileExecuter()(URL,_5ae);
}
this._compiler.popImport();
this.setCode(this._compiler.compilePass2());
this._compiler=null;
}
var _5af=_5b0;
_5b0=CFBundle.bundleContainingURL(this.URL());
var _5b1=this._function.apply(_1,this.functionArguments());
_5b0=_5af;
return _5b1;
};
_2af.prototype.code=function(){
return this._code;
};
_2af.prototype.setCode=function(code){
this._code=code;
var _5b2=this.functionParameters().join(",");
this._function=new Function(_5b2,code);
};
_2af.prototype.fileDependencies=function(){
return this._fileDependencies;
};
_2af.prototype.hasLoadedFileDependencies=function(){
return this._fileDependencyStatus===_5a2;
};
var _5b3=0,_5b4=[],_5b5={};
_2af.prototype.loadFileDependencies=function(_5b6){
var _5b7=this._fileDependencyStatus;
if(_5b6){
if(_5b7===_5a2){
return _5b6();
}
this._fileDependencyCallbacks.push(_5b6);
}
if(_5b7===_5a0){
if(_5b3){
throw "Can't load";
}
_5b8(this);
}
};
function _5b8(_5b9){
_5b4.push(_5b9);
_5b9._fileDependencyStatus=_5a1;
var _5ba=_5b9.fileDependencies(),_9d=0,_5bb=_5ba.length,_5bc=_5b9.referenceURL(),_5bd=_5bc.absoluteString(),_5be=_5b9.fileExecutableSearcher();
_5b3+=_5bb;
for(;_9d<_5bb;++_9d){
var _5bf=_5ba[_9d],_5c0=_5bf.isLocal(),URL=_5bf.URL(),_5c1=(_5c0&&(_5bd+" ")||"")+URL;
if(_5b5[_5c1]){
if(--_5b3===0){
_5c2();
}
continue;
}
_5b5[_5c1]=YES;
_5be(URL,_5c0,_5c3);
}
};
function _5c3(_5c4){
--_5b3;
if(_5c4._fileDependencyStatus===_5a0){
_5b8(_5c4);
}else{
if(_5b3===0){
_5c2();
}
}
};
function _5c2(){
var _5c5=_5b4,_9d=0,_5c6=_5c5.length;
_5b4=[];
for(;_9d<_5c6;++_9d){
_5c5[_9d]._fileDependencyStatus=_5a2;
}
for(_9d=0;_9d<_5c6;++_9d){
var _5c7=_5c5[_9d],_5c8=_5c7._fileDependencyCallbacks,_5c9=0,_5ca=_5c8.length;
for(;_5c9<_5ca;++_5c9){
_5c8[_5c9]();
}
_5c7._fileDependencyCallbacks=[];
}
};
_2af.prototype.referenceURL=function(){
if(this._referenceURL===_2f){
this._referenceURL=new CFURL(".",this.URL());
}
return this._referenceURL;
};
_2af.prototype.fileImporter=function(){
return _2af.fileImporterForURL(this.referenceURL());
};
_2af.prototype.fileExecuter=function(){
return _2af.fileExecuterForURL(this.referenceURL());
};
_2af.prototype.fileExecutableSearcher=function(){
return _2af.fileExecutableSearcherForURL(this.referenceURL());
};
var _5cb={};
_2af.fileExecuterForURL=function(aURL){
var _5cc=_1c5(aURL),_5cd=_5cc.absoluteString(),_5ce=_5cb[_5cd];
if(!_5ce){
_5ce=function(aURL,_5cf,_5d0){
_2af.fileExecutableSearcherForURL(_5cc)(aURL,_5cf,function(_5d1){
if(!_5d1.hasLoadedFileDependencies()){
throw "No executable loaded for file at URL "+aURL;
}
_5d1.execute(_5d0);
});
};
_5cb[_5cd]=_5ce;
}
return _5ce;
};
var _5d2={};
_2af.fileImporterForURL=function(aURL){
var _5d3=_1c5(aURL),_5d4=_5d3.absoluteString(),_5d5=_5d2[_5d4];
if(!_5d5){
_5d5=function(aURL,_5d6,_5d7){
_161();
_2af.fileExecutableSearcherForURL(_5d3)(aURL,_5d6,function(_5d8){
_5d8.loadFileDependencies(function(){
_5d8.execute();
_162();
if(_5d7){
_5d7();
}
});
});
};
_5d2[_5d4]=_5d5;
}
return _5d5;
};
var _5d9={},_5da={};
function _23e(x){
var _5db=0;
for(var k in x){
if(x.hasOwnProperty(k)){
++_5db;
}
}
return _5db;
};
_2af.resetCachedFileExecutableSearchers=function(){
_5d9={};
_5da={};
_5d2={};
_5cb={};
_5b5={};
};
_2af.fileExecutableSearcherForURL=function(_5dc){
var _5dd=_5dc.absoluteString(),_5de=_5d9[_5dd],_5df=_2af.filenameTranslateDictionary?_2af.filenameTranslateDictionary():null;
cachedSearchResults={};
if(!_5de){
_5de=function(aURL,_5e0,_5e1){
var _5e2=(_5e0&&_5dc||"")+aURL,_5e3=_5da[_5e2];
if(_5e3){
return _5e4(_5e3);
}
var _5e5=(aURL instanceof CFURL)&&aURL.scheme();
if(_5e0||_5e5){
if(!_5e5){
aURL=new CFURL(aURL,_5dc);
}
_1b1.resolveResourceAtURL(aURL,NO,_5e4,_5df);
}else{
_1b1.resolveResourceAtURLSearchingIncludeURLs(aURL,_5e4);
}
function _5e4(_5e6){
if(!_5e6){
var _5e7=_4c4?_4c4.currentCompileFile:null;
throw new Error("Could not load file at "+aURL+(_5e7?" when compiling "+_5e7:""));
}
_5da[_5e2]=_5e6;
_5e1(new _5e8(_5e6.URL(),_5df));
};
};
_5d9[_5dd]=_5de;
}
return _5de;
};
var _5e9={};
function _5e8(aURL,_5ea){
aURL=_1c5(aURL);
var _5eb=aURL.absoluteString(),_5ec=_5e9[_5eb];
if(_5ec){
return _5ec;
}
_5e9[_5eb]=this;
var _5ed=_1b1.resourceAtURL(aURL).contents(),_5ee=NULL,_5ef=aURL.pathExtension().toLowerCase();
if(_5ed.match(/^@STATIC;/)){
_5ee=_5f0(_5ed,aURL);
}else{
if((_5ef==="j"||!_5ef)&&!_5ed.match(/^{/)){
_5ee=_2.ObjJAcornCompiler.compileFileDependencies(_5ed,aURL,_4c4.Flags.IncludeDebugSymbols);
}else{
_5ee=new _2af(_5ed,[],aURL);
}
}
_2af.apply(this,[_5ee.code(),_5ee.fileDependencies(),aURL,_5ee._function,_5ee._compiler,_5ea]);
this._hasExecuted=NO;
};
_2.FileExecutable=_5e8;
_5e8.prototype=new _2af();
_5e8.resetFileExecutables=function(){
_5e9={};
_5f1={};
};
_5e8.prototype.execute=function(_5f2){
if(this._hasExecuted&&!_5f2){
return;
}
this._hasExecuted=YES;
_2af.prototype.execute.call(this);
};
_5e8.prototype.hasExecuted=function(){
return this._hasExecuted;
};
function _5f0(_5f3,aURL){
var _5f4=new _110(_5f3);
var _5f5=NULL,code="",_5f6=[];
while(_5f5=_5f4.getMarker()){
var text=_5f4.getString();
if(_5f5===_224){
code+=text;
}else{
if(_5f5===_225){
_5f6.push(new _2de(new CFURL(text),NO));
}else{
if(_5f5===_226){
_5f6.push(new _2de(new CFURL(text),YES));
}
}
}
}
var fn=_5e8._lookupCachedFunction(aURL);
if(fn){
return new _2af(code,_5f6,aURL,fn);
}
return new _2af(code,_5f6,aURL);
};
var _5f1={};
_5e8._cacheFunction=function(aURL,fn){
aURL=typeof aURL==="string"?aURL:aURL.absoluteString();
_5f1[aURL]=fn;
};
_5e8._lookupCachedFunction=function(aURL){
aURL=typeof aURL==="string"?aURL:aURL.absoluteString();
return _5f1[aURL];
};
var _5f7=1,_5f8=2,_5f9=4,_5fa=8;
objj_ivar=function(_5fb,_5fc){
this.name=_5fb;
this.type=_5fc;
};
objj_method=function(_5fd,_5fe,_5ff){
this.name=_5fd;
this.method_imp=_5fe;
this.types=_5ff;
};
objj_class=function(_600){
this.isa=NULL;
this.version=0;
this.super_class=NULL;
this.sub_classes=[];
this.name=NULL;
this.info=0;
this.ivar_list=[];
this.ivar_store=function(){
};
this.ivar_dtable=this.ivar_store.prototype;
this.method_list=[];
this.method_store=function(){
};
this.method_dtable=this.method_store.prototype;
this.allocator=function(){
};
this._UID=-1;
};
objj_object=function(){
this.isa=NULL;
this._UID=-1;
};
class_getName=function(_601){
if(_601==Nil){
return "";
}
return _601.name;
};
class_isMetaClass=function(_602){
if(!_602){
return NO;
}
return ((_602.info&(_5f8)));
};
class_getSuperclass=function(_603){
if(_603==Nil){
return Nil;
}
return _603.super_class;
};
class_setSuperclass=function(_604,_605){
_604.super_class=_605;
_604.isa.super_class=_605.isa;
};
class_addIvar=function(_606,_607,_608){
var _609=_606.allocator.prototype;
if(typeof _609[_607]!="undefined"){
return NO;
}
var ivar=new objj_ivar(_607,_608);
_606.ivar_list.push(ivar);
_606.ivar_dtable[_607]=ivar;
_609[_607]=NULL;
return YES;
};
class_addIvars=function(_60a,_60b){
var _60c=0,_60d=_60b.length,_60e=_60a.allocator.prototype;
for(;_60c<_60d;++_60c){
var ivar=_60b[_60c],name=ivar.name;
if(typeof _60e[name]==="undefined"){
_60a.ivar_list.push(ivar);
_60a.ivar_dtable[name]=ivar;
_60e[name]=NULL;
}
}
};
class_copyIvarList=function(_60f){
return _60f.ivar_list.slice(0);
};
class_addMethod=function(_610,_611,_612,_613){
var _614=new objj_method(_611,_612,_613);
_610.method_list.push(_614);
_610.method_dtable[_611]=_614;
if(!((_610.info&(_5f8)))&&(((_610.info&(_5f8)))?_610:_610.isa).isa===(((_610.info&(_5f8)))?_610:_610.isa)){
class_addMethod((((_610.info&(_5f8)))?_610:_610.isa),_611,_612,_613);
}
return YES;
};
class_addMethods=function(_615,_616){
var _617=0,_618=_616.length,_619=_615.method_list,_61a=_615.method_dtable;
for(;_617<_618;++_617){
var _61b=_616[_617];
_619.push(_61b);
_61a[_61b.name]=_61b;
}
if(!((_615.info&(_5f8)))&&(((_615.info&(_5f8)))?_615:_615.isa).isa===(((_615.info&(_5f8)))?_615:_615.isa)){
class_addMethods((((_615.info&(_5f8)))?_615:_615.isa),_616);
}
};
class_getInstanceMethod=function(_61c,_61d){
if(!_61c||!_61d){
return NULL;
}
var _61e=_61c.method_dtable[_61d];
return _61e?_61e:NULL;
};
class_getInstanceVariable=function(_61f,_620){
if(!_61f||!_620){
return NULL;
}
var _621=_61f.ivar_dtable[_620];
return _621;
};
class_getClassMethod=function(_622,_623){
if(!_622||!_623){
return NULL;
}
var _624=(((_622.info&(_5f8)))?_622:_622.isa).method_dtable[_623];
return _624?_624:NULL;
};
class_respondsToSelector=function(_625,_626){
return class_getClassMethod(_625,_626)!=NULL;
};
class_copyMethodList=function(_627){
return _627.method_list.slice(0);
};
class_getVersion=function(_628){
return _628.version;
};
class_setVersion=function(_629,_62a){
_629.version=parseInt(_62a,10);
};
class_replaceMethod=function(_62b,_62c,_62d){
if(!_62b||!_62c){
return NULL;
}
var _62e=_62b.method_dtable[_62c],_62f=NULL;
if(_62e){
_62f=_62e.method_imp;
}
_62e.method_imp=_62d;
return _62f;
};
var _630=function(_631){
var meta=(((_631.info&(_5f8)))?_631:_631.isa);
if((_631.info&(_5f8))){
_631=objj_getClass(_631.name);
}
if(_631.super_class&&!((((_631.super_class.info&(_5f8)))?_631.super_class:_631.super_class.isa).info&(_5f9))){
_630(_631.super_class);
}
if(!(meta.info&(_5f9))&&!(meta.info&(_5fa))){
meta.info=(meta.info|(_5fa))&~(0);
objj_msgSend(_631,"initialize");
meta.info=(meta.info|(_5f9))&~(_5fa);
}
};
var _632=function(self,_633){
var isa=self.isa,_634=isa.method_dtable[_635];
if(_634){
var _636=_634.method_imp.call(this,self,_635,_633);
if(_636&&_636!==self){
arguments[0]=_636;
return objj_msgSend.apply(this,arguments);
}
}
_634=isa.method_dtable[_637];
if(_634){
var _638=isa.method_dtable[_639];
if(_638){
var _63a=_634.method_imp.call(this,self,_637,_633);
if(_63a){
var _63b=objj_lookUpClass("CPInvocation");
if(_63b){
var _63c=objj_msgSend(_63b,_63d,_63a),_9d=0,_63e=arguments.length;
for(;_9d<_63e;++_9d){
objj_msgSend(_63c,_63f,arguments[_9d],_9d);
}
_638.method_imp.call(this,self,_639,_63c);
return objj_msgSend(_63c,_640);
}
}
}
}
_634=isa.method_dtable[_641];
if(_634){
return _634.method_imp.call(this,self,_641,_633);
}
throw class_getName(isa)+" does not implement doesNotRecognizeSelector:. Did you forget a superclass for "+class_getName(isa)+"?";
};
class_getMethodImplementation=function(_642,_643){
if(!((((_642.info&(_5f8)))?_642:_642.isa).info&(_5f9))){
_630(_642);
}
var _644=_642.method_dtable[_643];
var _645=_644?_644.method_imp:_632;
return _645;
};
var _646={};
objj_allocateClassPair=function(_647,_648){
var _649=new objj_class(_648),_64a=new objj_class(_648),_64b=_649;
if(_647){
_64b=_647;
while(_64b.superclass){
_64b=_64b.superclass;
}
_649.allocator.prototype=new _647.allocator;
_649.ivar_dtable=_649.ivar_store.prototype=new _647.ivar_store;
_649.method_dtable=_649.method_store.prototype=new _647.method_store;
_64a.method_dtable=_64a.method_store.prototype=new _647.isa.method_store;
_649.super_class=_647;
_64a.super_class=_647.isa;
}else{
_649.allocator.prototype=new objj_object();
}
_649.isa=_64a;
_649.name=_648;
_649.info=_5f7;
_649._UID=objj_generateObjectUID();
_64a.isa=_64b.isa;
_64a.name=_648;
_64a.info=_5f8;
_64a._UID=objj_generateObjectUID();
return _649;
};
var _5b0=nil;
objj_registerClassPair=function(_64c){
_1[_64c.name]=_64c;
_646[_64c.name]=_64c;
_1cc(_64c,_5b0);
};
objj_resetRegisterClasses=function(){
for(var key in _646){
delete _1[key];
}
_646={};
_1cf();
};
class_createInstance=function(_64d){
if(!_64d){
throw new Error("*** Attempting to create object with Nil class.");
}
var _64e=new _64d.allocator();
_64e.isa=_64d;
_64e._UID=objj_generateObjectUID();
return _64e;
};
var _64f=function(){
};
_64f.prototype.member=false;
with(new _64f()){
member=true;
}
if(new _64f().member){
var _650=class_createInstance;
class_createInstance=function(_651){
var _652=_650(_651);
if(_652){
var _653=_652.isa,_654=_653;
while(_653){
var _655=_653.ivar_list,_656=_655.length;
while(_656--){
_652[_655[_656].name]=NULL;
}
_653=_653.super_class;
}
_652.isa=_654;
}
return _652;
};
}
object_getClassName=function(_657){
if(!_657){
return "";
}
var _658=_657.isa;
return _658?class_getName(_658):"";
};
objj_lookUpClass=function(_659){
var _65a=_646[_659];
return _65a?_65a:Nil;
};
objj_getClass=function(_65b){
var _65c=_646[_65b];
if(!_65c){
}
return _65c?_65c:Nil;
};
objj_getClassList=function(_65d,_65e){
for(var _65f in _646){
_65d.push(_646[_65f]);
if(_65e&&--_65e===0){
break;
}
}
return _65d.length;
};
objj_getMetaClass=function(_660){
var _661=objj_getClass(_660);
return (((_661.info&(_5f8)))?_661:_661.isa);
};
ivar_getName=function(_662){
return _662.name;
};
ivar_getTypeEncoding=function(_663){
return _663.type;
};
objj_msgSend=function(_664,_665){
if(_664==nil){
return nil;
}
var isa=_664.isa;
if(!((((isa.info&(_5f8)))?isa:isa.isa).info&(_5f9))){
_630(isa);
}
var _666=isa.method_dtable[_665];
var _667=_666?_666.method_imp:_632;
switch(arguments.length){
case 2:
return _667(_664,_665);
case 3:
return _667(_664,_665,arguments[2]);
case 4:
return _667(_664,_665,arguments[2],arguments[3]);
}
return _667.apply(_664,arguments);
};
objj_msgSendSuper=function(_668,_669){
var _66a=_668.super_class;
arguments[0]=_668.receiver;
if(!((((_66a.info&(_5f8)))?_66a:_66a.isa).info&(_5f9))){
_630(_66a);
}
var _66b=_66a.method_dtable[_669];
var _66c=_66b?_66b.method_imp:_632;
return _66c.apply(_668.receiver,arguments);
};
method_getName=function(_66d){
return _66d.name;
};
method_getImplementation=function(_66e){
return _66e.method_imp;
};
method_setImplementation=function(_66f,_670){
var _671=_66f.method_imp;
_66f.method_imp=_670;
return _671;
};
method_exchangeImplementations=function(lhs,rhs){
var _672=method_getImplementation(lhs),_673=method_getImplementation(rhs);
method_setImplementation(lhs,_673);
method_setImplementation(rhs,_672);
};
sel_getName=function(_674){
return _674?_674:"<null selector>";
};
sel_getUid=function(_675){
return _675;
};
sel_isEqual=function(lhs,rhs){
return lhs===rhs;
};
sel_registerName=function(_676){
return _676;
};
objj_class.prototype.toString=objj_object.prototype.toString=function(){
var isa=this.isa;
if(class_getInstanceMethod(isa,_677)){
return objj_msgSend(this,_677);
}
if(class_isMetaClass(isa)){
return this.name;
}
return "["+isa.name+" Object](-description not implemented)";
};
var _677=sel_getUid("description"),_635=sel_getUid("forwardingTargetForSelector:"),_637=sel_getUid("methodSignatureForSelector:"),_639=sel_getUid("forwardInvocation:"),_641=sel_getUid("doesNotRecognizeSelector:"),_63d=sel_getUid("invocationWithMethodSignature:"),_678=sel_getUid("setTarget:"),_679=sel_getUid("setSelector:"),_63f=sel_getUid("setArgument:atIndex:"),_640=sel_getUid("returnValue");
objj_eval=function(_67a){
var url=_2.pageURL;
var _67b=_2.asyncLoader;
_2.asyncLoader=NO;
var _67c=_2.preprocess(_67a,url,0);
if(!_67c.hasLoadedFileDependencies()){
_67c.loadFileDependencies();
}
_1._objj_eval_scope={};
_1._objj_eval_scope.objj_executeFile=_2af.fileExecuterForURL(url);
_1._objj_eval_scope.objj_importFile=_2af.fileImporterForURL(url);
var code="with(_objj_eval_scope){"+_67c._code+"\n//*/\n}";
var _67d;
_67d=eval(code);
_2.asyncLoader=_67b;
return _67d;
};
_2.objj_eval=objj_eval;
_161();
var _67e=new CFURL(window.location.href),_67f=document.getElementsByTagName("base"),_680=_67f.length;
if(_680>0){
var _681=_67f[_680-1],_682=_681&&_681.getAttribute("href");
if(_682){
_67e=new CFURL(_682,_67e);
}
}
var _683=new CFURL(window.OBJJ_MAIN_FILE||"main.j"),_1cb=new CFURL(".",new CFURL(_683,_67e)).absoluteURL(),_684=new CFURL("..",_1cb).absoluteURL();
if(_1cb===_684){
_684=new CFURL(_684.schemeAndAuthority());
}
_1b1.resourceAtURL(_684,YES);
_2.pageURL=_67e;
_2.bootstrap=function(){
_685();
};
function _685(){
_1b1.resolveResourceAtURL(_1cb,YES,function(_686){
var _687=_1b1.includeURLs(),_9d=0,_688=_687.length;
for(;_9d<_688;++_9d){
_686.resourceAtURL(_687[_9d],YES);
}
_2af.fileImporterForURL(_1cb)(_683.lastPathComponent(),YES,function(){
_162();
_68e(function(){
var _689=window.location.hash.substring(1),args=[];
if(_689.length){
args=_689.split("/");
for(var i=0,_688=args.length;i<_688;i++){
args[i]=decodeURIComponent(args[i]);
}
}
var _68a=window.location.search.substring(1).split("&"),_68b=new CFMutableDictionary();
for(var i=0,_688=_68a.length;i<_688;i++){
var _68c=_68a[i].split("=");
if(!_68c[0]){
continue;
}
if(_68c[1]==null){
_68c[1]=true;
}
_68b.setValueForKey(decodeURIComponent(_68c[0]),decodeURIComponent(_68c[1]));
}
main(args,_68b);
});
});
});
};
var _68d=NO;
function _68e(_68f){
if(_68d||document.readyState==="complete"){
return _68f();
}
if(window.addEventListener){
window.addEventListener("load",_68f,NO);
}else{
if(window.attachEvent){
window.attachEvent("onload",_68f);
}
}
};
_68e(function(){
_68d=YES;
});
if(typeof OBJJ_AUTO_BOOTSTRAP==="undefined"||OBJJ_AUTO_BOOTSTRAP){
_2.bootstrap();
}
function _1c5(aURL){
if(aURL instanceof CFURL&&aURL.scheme()){
return aURL;
}
return new CFURL(aURL,_1cb);
};
objj_importFile=_2af.fileImporterForURL(_1cb);
objj_executeFile=_2af.fileExecuterForURL(_1cb);
objj_import=function(){
CPLog.warn("objj_import is deprecated, use objj_importFile instead");
objj_importFile.apply(this,arguments);
};
})(window,ObjectiveJ);
