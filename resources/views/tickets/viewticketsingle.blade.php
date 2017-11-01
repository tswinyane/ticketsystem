@extends('master')
@section('title', 'View ticket details')
@section('content')
	<div class="container col-md-8 col-md-offset-2">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h2> Ticket Details </h2>
			</div>
			<!--@if (session('status'))
				<div class="alert alert-success">
					{{ session('status') }}
				</div>
			-->
			<table class="table">
				<thead>
				<tr>
					<th>ID</th>
					<th>Ticket Title</th>
					<th>Name</th>
					<th>Email</th>					
					<th>Category</th>
					<th>Status</th>
				</tr>
				</thead>
				<tbody>
					
						<tr>
							<td>{!! $ticket->id !!}</td>
							<td>
								<a href="{!! action('TicketsController@show', $ticket->slug) !!}">{!! $ticket->title !!} </a>
							</td>
							<td>{!! $ticket->uname !!}</td>
							<td>{!! $ticket->email !!}</td>
							<td>{!! $ticket->category !!}</td>							
							<td>{!! $ticket->status ? 'Pending' : 'Answered' !!}</td>
						</tr>
					
				</tbody>
			</table>
			<!--@endif -->
		</div>
	</div>
@endsection