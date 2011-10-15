jQuery ->
  # Triggers
	$("#static_index").click ->
		$("#title").toggle('slow')

	# Proposal code
  $("#textfield").bind "keyup", ->
    $("#textfield").addClass("loading"); # show the spinner
    form = $("#form"); # grab the form wrapping the search bar.
    url = "/live_search"; # live_search action.  
    formData = form.serialize(); # grab the data in the form  
    $.get url, formData, (html) -> # perform an AJAX get
      $("#textfield").removeClass("loading"); # hide the spinner
      $("#results").html(html); # replace the "results" div with the results