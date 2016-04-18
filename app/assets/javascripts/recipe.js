$(document).ready(function() {
  $("#add_ingredient_field").on("click", function() {
    $("#ingredient_fields").append("<br><input type='text' name='recipe[ingredients_attributes][][name]''>")
  })
});
