// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$(function() {
/* Convenience for forms or links that return HTML from a remote ajax call.
The returned markup will be inserted into the element id specified.
*/
$('form[data-update-target]').on('ajax:success', function(evt, data) {
var target = $(this).data('update-target');
$('#' + target).html(data);
});
});

function update_div(stu_id,per_id) {  
    $.ajax({
      url: "/es/subjects/preview",
      type: "POST",
      data: { period: per_id, student: stu_id },
	  dataType: "html",
	  success: function(data) {
	     $("#update-container").html(data);
	   }
    });
}

function update_div(stu_id,per_id) {  
    $.ajax({
      url: "/es/subjects/preview",
      type: "POST",
      data: { period: per_id, student: stu_id },
	  dataType: "html",
	  success: function(data) {
	     $("#update-container").html(data);
	   }
    });
}

function update_grades(grp_id,per_id, sub_id) {  
    $.ajax({
      url: "/es/subjects/grades",
      type: "POST",
      data: { period: per_id, group: grp_id, subject: sub_id },
	  dataType: "html",
	  success: function(data) {
	     $("#update-container").html(data);
	   }
    });
}