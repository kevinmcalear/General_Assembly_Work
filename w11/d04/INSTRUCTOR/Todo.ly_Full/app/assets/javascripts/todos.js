var Todos = [], ul;

var Todo = Backbone.Model.extend({ 
  urlRoot: "/todos" 
});

var TodoView = Backbone.View.extend({
  tagName: "li",

  initialize: function() {
    this.listenTo(this.model, "change", this.render);
    this.render();
  },

  events: {
    "change input[type='checkbox']": "toggleDone",
    "click span": "destroy"
  },

  toggleDone: function(e) {
    var checked = $(e.target).is(":checked");
    this.model.set('done', checked);
    this.model.save();
  },

  destroy: function() {
    this.model.destroy();
    this.remove();
  },

  render: function() {
    var template = $("script.template").html();
    var rendered = _.template(template, { todo: this.model });
    this.$el.html(rendered);
  }
});

function render() {
  ul.empty();

  Todos.map(function(todo) {
    var view = new TodoView({model: todo});
    var li = view.el;
    return li;
  }).forEach(function(li) {
    ul.append(li);
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

    var todo = new Todo({
      task: this.elements["task"].value,
      done: false
    });
    todo.save()
    Todos.push(todo);
    this.reset();
    render();
  });
});