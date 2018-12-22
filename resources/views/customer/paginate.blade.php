
<table class="table table-striped table-hover table-bordered">
	<thead>
		<th>Sl</th>
		<th>Name</th>
		<th>Phone</th>
		<th>Email</th>
		<th>District</th>
		<th>Registered Date</th>
		<th>Manage</th>
	</thead>
	<tbody>
		@foreach($data as $show)
		<tr>
			<td>{{ $sl++ }}</td>
			<td>{{ $show->name }}</td>
			<td>{{ $show->phone }}</td>
			<td>{{ $show->email }}</td>
			<td>{{ $show->district }}</td>
			<td>{{ date("d-m-Y", strtotime($show->created_at)) }}</td>
			<td>
				<a href="{{ url('view/customer/data') }}" data-id="{{ $show->id }}" id="view" class="btn btn-sm btn-success">View</a>
				<a href="{{ url('edit/customer/data') }}" data-id="{{ $show->id }}" id="edit" class="btn btn-sm btn-primary">Edit</a>
				<a onclick="return confirm('Are you sure to delete?')" href="{{ url('delete/customer/data') }}" data-id="{{ $show->id }}" id="delete" class="btn btn-sm btn-danger">Delete</a>
			</td>
		</tr>
		@endforeach
	</tbody>
</table>

{!! $data->render() !!}