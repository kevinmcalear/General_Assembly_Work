

$('form').on('submit', function(e) {
  e.preventDefault();
  sendItem();
});

var sendItem = function(){
  $.post( '/todos', { todo: $('input#todo').val()} );
  createItem();
};

var createItem = function(){
  $('ul').append('<li>');
  $("li").last().text($('input#todo').val());
  $.getJSON('/id', { todo: $('input#todo').val() }, function(response){
    var id = response[0].id;
    $("li").last().attr("id", id)});
  this.addCheckbox();
  this.addDelete();
  $('input#todo').val("")
};

var addCheckbox = function(){
  $.getJSON('/id', { todo: $('input#todo').val() }, function(response){
    var id = response[0].id
    $("li").last().append('<input type="checkbox" id="'+id+'" />');
    ($("input").last()[0]).addEventListener("change", function(){
      if (this.checked === true ){
        $.post('/todos/'+ id, {is_complete: true, _method: 'put'})
        this.parentElement.style.textDecoration = "line-through";
        this.parentElement.classList.add("checked")
      } else {
        $.post('/todos/'+ id, {is_complete: false, _method: 'put'})
        this.parentElement.style.textDecoration = "none";
        this.parentElement.classList.remove("checked")
      };
    });
  });
}

var addDelete = function(){
  $.getJSON('/id', { todo: $('input#todo').val() }, function(response){
    var id = response[0].id
    $("li").last().append('<span>x</span>');
    ($("span").last()[0]).addEventListener("click", function(){
      var li = this.parentElement
      $.post ('/todos/'+li.id, { _method: 'delete' } );
      this.parentElement.remove();
      })
    });
  };


$.each($("li input"), function(index, value){
  value.addEventListener("change", function(){
    if (this.checked === true ){
      this.parentElement.style.textDecoration = "line-through";
      $.post('/todos/'+ this.parentElement.id, {is_complete: true, _method: 'put'})
      this.parentElement.classList.add("checked")
    } else {
      this.parentElement.style.textDecoration = "none";
      $.post('/todos/'+ this.parentElement.id, {is_complete: false, _method: 'put'})
      this.parentElement.classList.remove("checked")
    };
  })
});

$.each($("li span"), function(index, value){
  value.addEventListener("click", function(){
    $.post ('/todos/'+this.parentElement.id, { _method: 'delete' } );
    this.parentElement.remove();
  })
});

$.each($("li input"), function(index, value){
  if (this.checked === true ){
    this.parentElement.style.textDecoration = "line-through";
    $.post('/todos/'+ this.parentElement.id, {is_complete: true, _method: 'put'})
  } else {
    this.parentElement.style.textDecoration = "none";
    $.post('/todos/'+ this.parentElement.id, {is_complete: false, _method: 'put'})
  };
});






// $.post( "/games", { winner: game.checkWinner() } );

// var deleteItemAction = function(e){
//   e.on('click', function(){
//     var e=this.parent();
//     deleteItem(e)
//   }); 
// };


// need to change get id to be on li, not on check box. Need to remove ids from checkboxes,
// need to add spans with delete on new items (adjust function. Do checkboxes, then copy)
