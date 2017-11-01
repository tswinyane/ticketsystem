@extends('master')
@section('title', 'Edit a ticket')
@section('content')
	<div class="container col-md-8 col-md-offset-2">
		<div class="well well bs-component">
		<form class="form-horizontal" method="post">
			@foreach ($errors->all() as $error)
				<p class="alert alert-danger">{{ $error }}</p>
			@endforeach
			@if (session('status'))
			<div class="alert alert-success">
				{{ session('status') }}
			</div>
			@endif
			<input type="hidden" name="_token" value="{!! csrf_token() !!}">
			<fieldset>
				<legend>Edit ticket</legend>
				<div class="form-group">
						<label for="uname" class="col-lg-2 control-label">Name</label>
						<div class="col-lg-10">
							<input type="title" class="form-control" id="uname" placeholder="Your Name" name="uname" value="{!! $ticket->uname !!}">
						</div>
					</div>
					<div class="form-group">
						<label for="email" class="col-lg-2 control-label">Email</label>
						<div class="col-lg-10">
							<input type="title" class="form-control" id="email" placeholder="You Email Address" name="email" value="{!! $ticket->email !!}">
						</div>
					</div>
				<div class="form-group">
					<label for="title" class="col-lg-2 control-label">Ticket Title</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="title" name="title" value="{!! $ticket->title !!}">
					</div>
				</div>
				<div class="form-group">
						<label for="category" class="col-lg-2 control-label">Category</label>	
						<!--<div class="col-sm-6 col-md-4">--> 	
						<div class="col-lg-10 ">	
							<select class="form-control" id="category" name="category">
								<option value="{!! $ticket->category !!}">{!! $ticket->category !!}</option>
								@foreach(array('Sales','IT','Account') as $category)
									<option value="{!! $category !!}">{!! $category !!}</option>
								@endforeach
								<!--<option value="Sales">Sales</option>
	        					<option value="Accounts">Accounts</option>
	        					<option value="IT">IT</option>	-->
							</select>
						</div>
					</div>
				<div class="form-group">
				<label for="content" class="col-lg-2 control-label">Content</label>
				<div class="col-lg-10">
				<textarea class="form-control" rows="3" id="content" name="content">{!! $ticket->content !!}</textarea>
				</div>
				</div>
				<div class="form-group">
				<label>
				<input type="checkbox" name="status" {!! $ticket->status?"":"checked"!!} > Close this ticket?
				</label>
				</div>
				<div class="form-group">
				<div class="col-lg-10 col-lg-offset-2">
				<button class="btn btn-default">Cancel</button>
				<button type="submit" class="btn btn-primary">Update</button>
				</div>
				</div>
			</fieldset>
		</form>
		</div>
	</div>
@endsection