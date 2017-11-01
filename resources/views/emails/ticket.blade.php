<!DOCTYPE html>
<html lang="en-US">
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<h2>New Ticket!</h2>
		<div>
			You have a new ticket. Click the link to view is status  <a href="{!! action('TicketsController@show', $ticket) !!}">{!! $ticket !!}! </a> 
		</div>
	</body>
</html>