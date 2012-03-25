$(function() {
  $(".mcetext").tinymce({
    theme: 'advanced'
  });
});
  
$(document).ready(function() { 
        $('ul.sf-menu').superfish(); 
    }); 

function toggleblock(showHideDiv, switchTextDiv, showText, hideText) {
	var ele = document.getElementById(showHideDiv);
	var text = document.getElementById(switchTextDiv);
	if(ele.style.display == "block") {
    		ele.style.display = "none";
		text.innerHTML = showText ? showText : "Show";
  	}
	else {
		ele.style.display = "block";
		text.innerHTML = hideText ? hideText : "Hide";
	}
}

$(function() {
		$( "#edge_source_name" ).autocomplete({
			source: function( request, response ) {
				$.ajax({
					url: "/nodes.json",
					dataType: "json",
					data: {						
						term: request.term
					},
					success: function( data ) {
						response( $.map( data, function( item ) {
							return {
								label: item.name + " (" + item.id + ")",
								value: item.name
							}
						}));
					}
				});
			},
			open: function() {
				$( this ).removeClass( "ui-corner-all" ).addClass( "ui-corner-top" );
			},
			close: function() {
				$( this ).removeClass( "ui-corner-top" ).addClass( "ui-corner-all" );
			}
		});
	});
	

$(function() {
		$( "#edge_sink_name" ).autocomplete({
			source: function( request, response ) {
				$.ajax({
					url: "/nodes.json",
					dataType: "json",
					data: {						
						term: request.term
					},
					success: function( data ) {
						response( $.map( data, function( item ) {
							return {
								label: item.name + " (" + item.id + ")",
								value: item.name
							}
						}));
					}
				});
			},
			open: function() {
				$( this ).removeClass( "ui-corner-all" ).addClass( "ui-corner-top" );
			},
			close: function() {
				$( this ).removeClass( "ui-corner-top" ).addClass( "ui-corner-all" );
			}
		});
	});



