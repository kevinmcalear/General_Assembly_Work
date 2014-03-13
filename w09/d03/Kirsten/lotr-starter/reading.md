window.onload = function();

JavaScript, calls whatever function is specified on the right side when the 
window has loaded, meaning that all of the objects in the document are in the 
DOM and all the resources for the page, including images, have finished loading.

$( document ).ready(function(){});

jQuery, runs when the DOM is ready for code to be executed. Does not have to wait
for images or frames to load like window.onload. There is a shorthand version 
of this: 

$(function(){});

You can also call a similar method $( window ).load(function(){}); which would 
be called at the same time as window.onload.

