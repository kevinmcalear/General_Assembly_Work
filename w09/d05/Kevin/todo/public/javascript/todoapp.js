var allTodos;

function addToDo(listItem) {
  $.post("/new?item="+ listItem);
  showToDo();
};

function showToDo() {
  $.getJSON("/thelist.json", function(theListObject){
    allTodos = theListObject;
    $("ul").empty();
    for(i = 0; i < allTodos.length; i++) {
     var currentItem = $("<li data-id='" + allTodos[i].id + "'><input type='checkbox' " + ((allTodos[i].complete === true) ? "checked" : "") + " data-complete='" + allTodos[i].complete + "'></input>  "+ allTodos[i].list_item + "<a href=''><span> x</span></a></li>");
     if(allTodos[i].complete === true) {
      currentItem.addClass("checked");
     }
     $("ul").append(currentItem);
    };
  });
};

function updateToDo(listItemId, completed) {
  $.ajax({
     url: '/update?id=' + listItemId + '&complete='+ completed,
     type: 'PUT',
     success: function(response) {
       
     }
  });
};

function deleteToDo(listItemId) {
  $.ajax({
    url: '/delete?id=' + listItemId,
    type: 'DELETE',
    success: function(result) {
    }
  });
};

function deleteItemFromDom(todoItem) {
    deleteToDo($(todoItem).parent().data("id"));
  };


var addItem = $("form").on('submit', function(e){
  e.preventDefault();
  addToDo($("input").val());
  $("input").val("");
});

var deleteItem = $("li span").on('click', function() {
  deleteItemFromDom($(this));
  $(this).parent().remove();
});

var updateItem = $("li input:checkbox").on('change', function() {
  $(this).data().complete = (($(this).data("complete") === true) ? false : true);
  $(this).parent().toggleClass("checked");
  updateToDo(($(this).parent().data("id")), ($(this).data("complete")));
  
});


showToDo();