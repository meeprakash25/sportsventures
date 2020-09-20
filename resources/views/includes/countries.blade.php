<option value="">{{ $langg->lang157 }}</option>
@if(Auth::check())
	@foreach (DB::table('countries')->get() as $data)
	<option value="{{ $data->country_name }}" {{ $data->country_name == 'Nepal' ? 'selected' : '' }}>{{ $data->country_name }}</option>
	@endforeach
@else
	@foreach (DB::table('countries')->get() as $data)
	<option value="{{ $data->country_name }}">{{ $data->country_name }}</option>		
	@endforeach
@endif