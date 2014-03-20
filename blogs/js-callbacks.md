

#Javascript Callbacks
***



* Why callbacks
* Asynchronous events
* javascipt is a single threaded programming language
* 

### Javascript is Asynchronous language

Javascript is not a multithreaded language but is asynchronous with two concepts callbacks and events. 

Javascript came into existence to make the static web pages dynamic and take complete control of actions and events in a web page. As it is made for the web spawning multiple threads and waiting for web calls is quite a overhead on the browsers. So Javascript is made a single threaded language and all the web requests(animations were not so popular in the begining) are handled by the browser and once the response is obtained the browser will call back the application. So, all the web requests are asynchronous, similarly there are multiple APIs the browser provides to handle external tasks. To create a manual asynchronous execution of certain piece of code execute with setInterval and setTimeout which are ofCourse dependent on system clock. 

To simplify the above story short on what is expected of javascript is any thing that is made in pure javascript is executed synchronously and all the external calls will happen asynchronously and when required the browser or Node platform call the callback function. These asynchronous web requests are popularly termed as AJAX (Asynchronous Javascript As XML). 

Coming to events in javascript you see them a lot in javascript executing in the browser like click events, script loaded, page loaded etc., These will be triggered by the browser and listeners to the events will be registered in the javascript.

	#Example events in the web
	
	


 * setInterval
 * setTimeout
 * requestAnimationFrame
 * XMLHttpRequest
 * WebSocket
 * Worker
Some HTML5 APIs such as the File API, Web Database API

![Flow][1]

[1]:http://localhost:3000/images/browser_thread_border.png
