var Todos = [], ul;

// var Todo = function(todo) {
//   this.task = todo.task;
//   this.done = todo.done;
//   this.id = todo.id;
// };

//backbone's custom version of a constructor function
var Todo = Backbone.Model.extend({
  urlRoot: '/todos',
  defaults: {
    done: false,
    task: ""
  }
});


Todo.prototype.complete = function(bool) {
  this.done = bool;
}

function buildLI(todo) {
  var template = $("script.template").html(); 
  var rendered = _.template(template, {todo: todo});
  return $(rendered)
};

function attachListeners(li, todo) {
  li.find("input[type='checkbox']").on("change", function() {
    todo.complete($(this).is(":checked"));
    update(todo);
    render();
  });

  li.find("span").on("click", function() {
    Todos.splice(Todos.indexOf(todo), 1);
    destroy(todo);
    render();
  });

  return li;
};

function render() {
  ul.empty();

  Todos.map(function(todo) {
    var li = buildLI(todo);
    li = attachListeners(li, todo);
    return li;
  }).forEach(function(li) {
    ul.append(li);
  });
};

function update(todo) {
  $.ajax({
    type: "PUT",
    url: "/todos/" + todo.id,
    data: {todo: todo}
  });
};

function destroy(todo) {
  $.ajax({
    type: "DELETE",
    url: "/todos/" + todo.id
  });
};

function create(todo) {
  $.ajax({
    type: "POST",
    url: "/todos",
    data: {todo: todo}
  }).success(function(todo) {
    Todos.push(new Todo(todo));
    render();
  });
};

$(document).ready(function(){
  ul = $("ul");
  
  $.getJSON("/todos", function(todos) {
    todos.forEach(function(todo) {
      Todos.push(new Todo(todo));
    });
    render();
  });

  $("form").on("submit", function(e) {
    e.preventDefault();

    create(new Todo({task: this.elements["task"].value}));
    this.reset();
  });
});