# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

root = exports ? this
root.submitVote = ($candidate_id) ->
	# "Choose" button has been clicked on a particular candidate.. 
	#  .. post selection to the database and show a thank you message.
	# (NOTE: This function has to be scoped from the root and exported to get
	#	 around the CoffeeScript function wrapping gotcha..)

	# Strip spaces and uppercase postcode again (has to be done again in this scope)
	postcode = $('#postcode').val().toUpperCase().replace /\s+/g, ''
	constituency_id = $('#constituencyId').val()
	console.log constituency_id
	console.log $candidate_id
	console.log postcode

	# AJAX 'POST' to register vote in the back-end table.
	$.ajax
		url:	'/votes/'
		type:	'POST'
		data:
			{ "entry": { "candidate_id": $candidate_id, "constituency_id": constituency_id, "postcode": postcode} }
		success: (data, status, response) ->
			console.log data
			# Hide candidate list and display thank you message
			$('#candidateList').addClass('hidden')
			$('#thankyou').removeClass('hidden')

		error: ->
			console.log response
		dataType: "json"			


$ ->
	$('#voteYes').click ->
		# If Yes to vote button is clicked, hide the vote question and any previous thankyou messages
		$('#vote').addClass('hidden')
		$('#thankyou').addClass('hidden')
		$('#thankyouNoVote').addClass('hidden')
		# Show and blank postcode entry div
		$('#postcodeLookup').removeClass('hidden')
		$('#postcode').val("")
		$('#postcode').focus()


	$('#voteNo').click ->
		# If No to vote button is clicked, hide the vote question and any previous thankyou messages
		$('#vote').addClass('hidden')
		$('#thankyou').addClass('hidden')
		$('#postcodeLookup').addClass('hidden')
		# Show message
		$('#thankyouNoVote').removeClass('hidden')


	$('#voteNoBack').click ->
		# "Start Again" button clicked, clear other divs..
		$('#thankyouNoVote').addClass('hidden')								
		# And re-display vote question
		$('#vote').removeClass('hidden')


	# Monitor keystrokes in postcode field for Enter key and submit if pressed
	$('#postcode').keyup (event) ->
		if event.keyCode = 13 
			$('#postcodeFind').click()


	$('#postcodeFind').click ->
		# Show constituency results chart now that postcode is entereed..
		$('#chartConstituency').removeClass('hidden')
		# When postcode find button clicked, strip spaces from postcode and upperCase
		strippedPostCode = $('#postcode').val().toUpperCase().replace /\s+/g, ''
		# AJAX call to postcode->constituency lookup 
		# (this could be replaced with an API call to www.theyworkforyou.com)
		$.ajax
			url: 	'constituencies/postcode'
			type:	'GET'
			data:	postcode: strippedPostCode
			success: (data, status, response) ->
				# Successful return from constituency lookup..
				constituencyId = data.constituency_id
				constituencyName = data.constituency_name
				# Use constituencyId to lookup which candidates are standing..
				$.ajax 
					url:	'/candidates'
					type:	'GET'
					data:	constituency: constituencyId
					success: (data, status, response) ->
						# Successful return from candidate lookup..
						# Empty and rebuild candidate list.
						$('#candidateList').empty()
						candidateHTML = '<div id="candidateEntry">'+
							'<span>Your constituency is: '+ constituencyName + ' (id:' + constituencyId + ')</span>' +
							'<input id="constituencyId" hidden="yes" value="' + constituencyId + '">'
						$('#candidateList').append(candidateHTML)

						# Loop over each returned candidate
						for candidate, i in data
							candidateHTML = '<div id="candidateEntry">'+
							'<a id="submitVote" onclick="submitVote('+candidate.candidate_id+')" class="btn btn-info">Choose</a>'+ 
							candidate.candidate_name + ' (' + candidate.party + ')</div>'
							$('#candidateList').append(candidateHTML)

					error: ->
						# Unsuccessful AJAX call to get candidates.
						console.log "Could not retrieve the list of candidates " + response
					dataType:	"json"

			error: ->
				# Unsuccessful AJAX call to get constituency.
				console.log "Could not retrieve the constituency with the postcode " + response
				dataType:	"json"	

		# Show the list of candidates..
		$('#candidateList').removeClass('hidden')


	$('#postcodeBack').click ->
		# "Start Again" button clicked, clear other divs..
		$('#postcodeLookup').addClass('hidden')								
		$('#candidateList').addClass('hidden')								
		$('#candidateList').empty()
		$('#thankyou').addClass('hidden')								
		$('#thankyouNoVote').addClass('hidden')
		$('#chartConstituency').addClass('hidden')
		# And re-display vote question
		$('#vote').removeClass('hidden')