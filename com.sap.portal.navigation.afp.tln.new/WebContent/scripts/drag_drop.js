var AFP_TLN_DRAG_DROP=function(){var r=null;var a=false;var k=false;var w=null;var n=[];var h=[];var p=null;var d=null;var z=null;var g=null;var x=null;var y=null;var m=null;var q=false;var f=null;var i=function(B,A){z=JSUtils.$("dragHelper_div");if(JSUtils.BrowserDetection.applewebkit){z.style.position="absolute"}};var e=function(){return z};var c=function(){var A=n.length;n[A]=[];h[A]=[];for(var D=0;D<arguments.length;D++){var C=arguments[D];n[A].push(C);C.setAttribute("DropObj",A);for(var B=0;B<C.childNodes.length;B++){if(C.childNodes[B].getAttribute("isDrag")=="1"){C.childNodes[B].setAttribute("DragObj",A);C.childNodes[B].setAttribute("CurCont",D)}else{if(C.childNodes[B].getAttribute("name")=="tabDragMarker"){h[A].push(C.childNodes[B])}}}}};var t=function(E,D,C){D=D||window.event;var B=v(E,C);var A=JSUtils.mouseCoords(D);return{x:A.x-B.x,y:A.y-B.y}};var v=function(D,A){if(D.getBoundingClientRect){var G=D.getBoundingClientRect();return{x:G.left+document.body.scrollLeft,y:G.top+document.body.scrollTop}}A=A||[];var F=0,E=0;do{F+=D.offsetLeft||0;E+=D.offsetTop||0;D=D.offsetParent}while(D);for(var C=0;C<A.length;C++){var B=document.getElementById(A[C]);F-=B.scrollLeft||0;E-=B.scrollTop||0}F-=document.body.scrollLeft;E-=document.body.scrollTop;return{x:F,y:E}};var b=function(ac){ac=ac||window.event;var ag=JSUtils.getElementFromEvent(ac);var Y=JSUtils.mouseCoords(ac);if(ag.className=="TransparentCover"){ag=ag.parentNode}var A=ag.getAttribute?ag.getAttribute("DragObj"):null;if(A!=null){if(a&&q&&!k){p=ag;g=p.parentNode;x=p.nextSibling;if(x.getAttribute("name")=="tabDragMarker"){x=x.nextSibling}for(var Z=0;Z<z.childNodes.length;Z++){z.removeChild(z.childNodes[Z])}p.style.cursor="move";z.appendChild(p.cloneNode(true));z.style.display="block";var ah=z.firstChild;while(ah&&ah.getAttribute("isDrag")!=1){ah=ah.nextSibling}JSUtils.clearAllEventsFromElement(ah);ah.removeAttribute("DragObj");ah.id="dragChild";z.style.width=parseInt(p.getAttribute("savedClientWidth"))+"px";z.style.height=parseInt(p.clientHeight)+"px";var D=n[A];var ae=D[parseInt(ag.getAttribute("CurCont"))].getAttribute("overflown").split(",");r=t(ag,ac,ae);p.setAttribute("startWidth",parseInt(p.offsetWidth));p.setAttribute("startHeight",parseInt(p.offsetHeight));p.style.display="none";for(var Z=0;Z<D.length;Z++){var I=v(D[Z]);if(JSUtils.BrowserDetection.applewebkit){D[Z].setAttribute("startHeight",parseInt(D[Z].scrollHeight))}else{D[Z].setAttribute("startHeight",parseInt(D[Z].offsetHeight))}D[Z].setAttribute("startWidth",parseInt(D[Z].offsetWidth));D[Z].setAttribute("startLeft",parseInt(I.x));D[Z].setAttribute("startTop",parseInt(I.y));for(var X=0;X<D[Z].childNodes.length;X++){if((D[Z].childNodes[X].nodeName=="#text")||(D[Z].childNodes[X]==p)){continue}var ae=D[Z].getAttribute("overflown").split(",");var I=v(D[Z].childNodes[X],ae);if(JSUtils.BrowserDetection.applewebkit){D[Z].childNodes[X].setAttribute("startHeight",parseInt(D[Z].childNodes[X].scrollHeight))}else{D[Z].childNodes[X].setAttribute("startHeight",parseInt(D[Z].childNodes[X].offsetHeight))}D[Z].childNodes[X].setAttribute("startWidth",parseInt(D[Z].childNodes[X].offsetWidth));D[Z].childNodes[X].setAttribute("startLeft",parseInt(I.x));D[Z].childNodes[X].setAttribute("startTop",parseInt(I.y))}}}}if(p&&p.getAttribute("isDrag")=="1"){var B=Y.y-r.y;var ad=Y.x-r.x;var E=parseInt(p.getAttribute("startWidth"));var S=parseInt(p.getAttribute("startHeight"));if(B>0&&(B+S)<LayoutService.getBodyHeight()){z.style.top=Y.y-r.y}if(!LSAPI.AFPPlugin.configuration.isRTL()){if(ad>0&&(ad+E)<LayoutService.getBodyWidth()){z.style.left=Y.x-r.x}}else{var W=5;var N=Y.x-E-document.body.scrollLeft+W;if(N>=0&&(Y.x-document.body.scrollLeft+W)<LayoutService.getBodyWidth()){z.style.left=N+"px"}}var D=n[p.getAttribute("DragObj")];var K=h[p.getAttribute("DragObj")];var V=null;var Q=Y.x-r.x;var T=Y.y-r.y;for(var Z=0;Z<D.length;Z++){if((parseInt(D[Z].getAttribute("startLeft"))<Q)&&(parseInt(D[Z].getAttribute("startTop"))<T)&&((parseInt(D[Z].getAttribute("startLeft"))+parseInt(D[Z].getAttribute("startWidth")))>Q)&&((parseInt(D[Z].getAttribute("startTop"))+parseInt(D[Z].getAttribute("startHeight")))>T)){V=D[Z];if(y&&y!=K[Z]&&y.style){y.style.display="none"}y=K[Z];break}}if(V){var U=null;var P,aa,L;if(LSAPI.AFPPlugin.configuration.isRTL()){P=0;aa=V.childNodes.length;L=1}else{P=V.childNodes.length-1;aa=-1;L=-1}for(var Z=P;Z!=aa;Z+=L){var F=V.childNodes[Z];if(F.nodeName=="#text"){continue}if(F==y){continue}var J=parseInt(F.getAttribute("startTop"));var C=parseInt(F.getAttribute("startHeight"));var R=parseInt(F.getAttribute("startLeft"));var O=parseInt(F.getAttribute("startWidth"));if(p!=F&&((J+C)>T)&&((!LSAPI.AFPPlugin.configuration.isRTL()&&((R+O)>Q)))||(LSAPI.AFPPlugin.configuration.isRTL()&&((R+O)>Y.x))){U=F}}if(U){if(m==null){m=U}if(V.getAttribute("overflown")==TLN_AFP_IVIEW.getFirstLevelScrollableElm().id){var G=null;var M=parseInt(U.getAttribute("startLeft"));var af=parseInt(U.getAttribute("startWidth"));var H=parseInt(TLN_AFP_IVIEW.getFirstLevelPosition().x);var ab=parseInt(TLN_AFP_IVIEW.getFirstLevelScrollableElm().style.width);if(LSAPI.AFPPlugin.configuration.isRTL()){if(M+af>H-10){G="ff"}else{if(M<0){G="rw"}}}else{if(M<H-10){G="rw"}else{if(M+af>H+ab){G="ff"}}}if(G){TLN_AFP_IVIEW.first_level_scroll(G);j(V);V.insertBefore(y,p)}}if(U!=p.nextSibling){m=U;V.insertBefore(p,U);V.insertBefore(y,p)}}else{if((p.nextSibling)||(p.parentNode!=V)){m="end";V.appendChild(p);V.insertBefore(y,p)}}if(p.style.display!="none"){p.style.display="none"}if(y.style.display!=""){y.style.display=""}}else{m=null;if(p.style.display!="none"){p.style.display="none"}if(y&&y.style.display!="none"){y.style.display="none"}}}else{if(a&&!k&&ag.getAttribute("isDrag")=="0"){ag.style.cursor="no-drop";p=ag}}k=a;d=ag;k=a;return false};var s=function(A){if(!y){y=JSUtils.$("tabDragMarker")}if(p){p.style.cursor="pointer";if(p.getAttribute("isDrag")=="1"){z.style.display="none";if(y.style.display=="none"){if(x){g.insertBefore(p,x)}else{g.appendChild(p)}}else{y.style.display="none";TLN_AFP_IVIEW.rearrangeTlnNodes(p,m)}p.style.display="";TLN_AFP_IVIEW.updateFirstLevelScrollBtnsState("both")}}p=null;a=false;k=a;if(f){clearTimeout(f);delete f}if(document.addEventListener){document.removeEventListener("mousemove",b,false);document.removeEventListener("mouseup",s,false)}else{if(document.attachEvent){document.detachEvent("onmousemove",b);document.detachEvent("onmouseup",s);document.body.detachEvent("onmouseleave",s)}}l()};var u=function(A){a=true;q=true;o();if(document.addEventListener){document.addEventListener("mousemove",b,false);document.addEventListener("mouseup",s,false)}else{if(document.attachEvent){document.attachEvent("onmousemove",b);document.attachEvent("onmouseup",s);document.body.attachEvent("onmouseleave",s)}}if(d||JSUtils.BrowserDetection.applewebkit){return false}};var o=function(){var B=JSUtils.$("divContentArea");if(B){var A=JSUtils.findAbsolutePosition(B);coverAreaElement.setSizeAndLocation(A.x,A.y,B.offsetWidth,B.offsetHeight);coverAreaElement.display("dragHelper_div")}};var l=function(){coverAreaElement.hide("dragHelper_div")};var j=function(C){for(var B=0;B<C.childNodes.length;B++){if((C.childNodes[B].nodeName=="#text")||(C.childNodes[B]==p)){continue}var A=C.getAttribute("overflown").split(",");var D=v(C.childNodes[B],A);C.childNodes[B].setAttribute("startWidth",parseInt(C.childNodes[B].offsetWidth));C.childNodes[B].setAttribute("startHeight",parseInt(C.childNodes[B].offsetHeight));C.childNodes[B].setAttribute("startLeft",parseInt(D.x));C.childNodes[B].setAttribute("startTop",parseInt(D.y))}};return{CreateDragContainer:c,setDragHelper:i,getDragHelper:e,mouseDown:u}}();