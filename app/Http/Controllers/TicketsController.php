<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Http\Requests\TicketFormRequest;

use App\Ticket;

use Illuminate\Support\Facades\Mail;

class TicketsController extends Controller
{
    
	public function create()
	{
		return view('tickets.create');
	}

    //
    public function store(TicketFormRequest $request)
	{

		$slug = uniqid();
	
		$ticket = new Ticket(array(
			'uname' => $request->get('uname'),
			'email' => $request->get('email'),
			'title' => $request->get('title'),
			'category' => $request->get('category'),
			'content' => $request->get('content'),
			'slug' => $slug
		));
		$ticket->save();
		
		$data = array(
			'ticket' => $slug,
			'email' => $request->get('email'),
		);
		

		Mail::send('emails.ticket', $data, function ($message) use($request) {			
			$message->from('tswinyane01@gmail.com', 'New Ticket');
			$message->to($request->get('email'))->subject('There is a new ticket!');
		});	
		return redirect('/contact')->with('status', 'Your ticket has been created! Its unique id is: '.$slug);
	}

	public function viewtickets()
	{
		$tickets = Ticket::all();
		return view('tickets.viewtickets', compact('tickets'));
	}

	public function viewticketsingle($slug)
	{
		$tickets = Ticket::whereSlug($slug)->firstOrFail();
		return view('tickets.viewticketsingle', compact('ticket'));
	}

	public function show($slug)
	{
		$ticket = Ticket::whereSlug($slug)->firstOrFail();
		$comments = $ticket->comments()->get();
		return view('tickets.show', compact('ticket', 'comments'));
	}

	public function edit($slug)
	{
		$ticket = Ticket::whereSlug($slug)->firstOrFail();
		return view('tickets.edit', compact('ticket'));
	}

	public function update($slug, TicketFormRequest $request)
	{
		$ticket = Ticket::whereSlug($slug)->firstOrFail();
		$ticket->title = $request->get('title');
		$ticket->category = $request->get('category');
		$ticket->content = $request->get('content');
		if($request->get('status') != null) {
			$ticket->status = 0;
		} else {
			$ticket->status = 1;
		}
		$ticket->save();
		return redirect(action('TicketsController@edit', $ticket->slug))->with('status', 'The ticket '.$slug.' has been updated!');
	}

	public function destroy($slug)
	{
		$ticket = Ticket::whereSlug($slug)->firstOrFail();
		$ticket->delete();
		return redirect('/tickets')->with('status', 'The ticket '.$slug.' has been deleted!');
	}
}
