// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
  $("#film_actor_tokens").tokenInput("/actors.json", {
    crossDomain: false,
    prePopulate: $("#film_actor_tokens").data("pre"),
    theme: "facebook"
  });
});