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
function unhide(val){
	var major = document.getElementById("major-f");
	var minor = document.getElementById("minor-f");
	
	if (val === "2"){
		major.setAttribute("aria-hidden", "false");
		minor.setAttribute("aria-hidden", "false");
		$('#major-f').removeClass('hide');
		$('#minor-f').removeClass('hide');		
	} else {
		major.setAttribute("aria-hidden", "true");
		minor.setAttribute("aria-hidden", "true");
		$('#major-f').addClass('hide');
		$('#minor-f').addClass('hide');
	}
}

function remove_fields(link) {
        $(link).prev("input[type=hidden]").val("1");
        $(link).closest(".fields").hide();
}

function add_fields(link, association, content) {
        var new_id = new Date().getTime();
        var regexp = new RegExp("new_" + association, "g");
        $(link).parent().before(content.replace(regexp, new_id));
}

function calc_pay_imp(input){
	var val = parseFloat(input.value).toFixed(2);
	var id = input.id;
	var arr = id.split("_importe");
	var cant = parseFloat(document.getElementById(arr[0] + "_cant").value).toFixed(2);
	if ( !isNaN(cant) ){
		var prod = parseFloat(val * cant).toFixed(2);
		document.getElementById(arr[0] + "_total").value = prod;
		update_tot();
	}
}

function calc_pay_cant(input){
	var val = parseFloat(input.value).toFixed(2);
	var id = input.id;
	var arr = id.split("_cant");
	var cant = parseFloat(document.getElementById(arr[0] + "_importe").value).toFixed(2);
	if (!isNaN(cant)){
		var prod = parseFloat(val * cant).toFixed(2);; 
		document.getElementById(arr[0] + "_total").value = prod;
		update_tot();
	}
}

function update_tot(){
	
	if (!Array.prototype.filter)
	{
	  Array.prototype.filter = function(fun /*, thisp */)
	  {
	    "use strict";

	    if (this == null)
	      throw new TypeError();

	    var t = Object(this);
	    var len = t.length >>> 0;
	    if (typeof fun != "function")
	      throw new TypeError();

	    var res = [];
	    var thisp = arguments[1];
	    for (var i = 0; i < len; i++)
	    {
	      if (i in t)
	      {
	        var val = t[i]; // in case fun mutates this
	        if (fun.call(thisp, val, i, t))
	          res.push(val);
	      }
	    }

	    return res;
	  };
	}
	
	Array.filter = function filter(array, test) {
	    return Array.prototype.filter.call(array, test);
	  }
	
	var elements = Array.filter( document.getElementsByClassName("total-count"), function(elem){
	    return elem.parentNode.parentNode.style.display === 'table-row';
	});
	
	var sum = parseFloat(0);
	for(var i=0; i < elements.length; i++) { 
	  sum += parseFloat(elements[i].value); 
	}
	var suma = sum.toFixed(2);
	$('input[id$=payment_total]').val(suma).trigger('change');
}

function remove_from_tot(input){
	var id = $(input).prev("input[type=hidden]").attr('id');;
	var arr = id.split("__destroy");
	var cant_tot = parseFloat(document.getElementById(arr[0] + "_total").value);
	var sum_tot = parseFloat(document.getElementById("payment_total").value);
	var res = (sum_tot - cant_tot).toFixed(2);
	$('input[id$=payment_total]').val(res).trigger('change');
}
