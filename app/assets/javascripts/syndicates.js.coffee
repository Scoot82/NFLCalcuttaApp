# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  Morris.Bar
	    element: 'teams_chart'
	    data: $('#teams_chart').data('teams')
	    xkey: 'name'
	    ykeys: ['price']
	    labels: ['price']