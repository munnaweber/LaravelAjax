$(function(){
	$("#addcustomerform").on("submit", function(e){
		e.preventDefault();
		var form = $(this);
		var url = form.attr("action");
		var type = form.attr("method");
		var data = form.serialize();

		$.ajax({

			url: url,
			data: data,
			type: type,
			dataType: "JSON",
			beforeSend: function(){
				$(".load").fadeIn();
			},
			success: function(data){
				if(data == "success"){
					$("#addCustomer").modal("hide");
					swal("Great", "Successfully Customer Data Inputed", "success");
					form[0].reset();
					return getCustomerData();
				}
			},
			complete: function(){
				$(".load").fadeOut();
			},

		});

	});


	function getCustomerData(){
		var url = $("#getalldata").data("url");

		$.ajax({
			url: url, 
			type: "get",
			dataType: "HTMl",
			success: function(response){
				$("#showAllDataHere").html(response);
			}	
		})
	}


	// View Data
	$(document).on("click", "#view", function(e){
		e.preventDefault();
		var id = $(this).data("id");
		var url = $(this).attr("href");

		$.ajax({
			url: url,
			data: {id:id},
			type: "GET",
			dataType: "JSON",
			success: function(response){
				if($.isEmptyObject(response) != null){
					$("#ViewCustomer").modal("show");
					$("#customername").text(response.name + "'s Data");
					$(".cname").text("Name: " + response.name);
					$(".cphone").text("Phone: " + response.phone);
					$(".cemail").text("Email: " + response.email);
					$(".cdistrict").text("District: " + response.district);
				}
			}
		});

	});



	// Edit
	$(document).on("click", "#edit", function(arg){
		arg.preventDefault();
		var id = $(this).data("id");
		var url = $(this).attr("href");

		$.ajax({
			url: url,
			data: {id:id},
			dataType:"JSON",
			type: "GET",
			success(response){
				$("#UpdateCustomer").modal("show");
				$("#cname").val(response.name);
				$("#cphone").val(response.phone);
				$("#cemail").val(response.email);
				$("#cdistrict").val(response.district);
				$("#customerid").val(response.id);
				$("#updatecustomertitle").text("Update " + response.name + "'s Data");
			}
		})

	});	




	// Delete Data
	$(document).on("click", "#delete", function(arg){
		arg.preventDefault();
		var id = $(this).data("id");
		var url = $(this).attr('href');

		$.ajax({
			url: url,
			data: {id:id},
			type: "GET",
			dataType: "JSON", 
			success(response){
				swal("Deleted", "Customer Data Has Been Deleted", "success");
				return getCustomerData();
			}
		})

	})


	$("#updatecustomerform").on("submit", function(arg){
		arg.preventDefault();
		var form =$(this);
		var url = form.attr("action");
		var type = form.attr("method");
		var data = form.serialize();

		$.ajax({
			url: url,
			type: type,
			dataType: "JSON",
			data: data,
			beforeSend: function(){
				$(".load").fadeIn();
			},
			success: function(response){
				if(response == "success"){
					swal("Data Updated", "Success", "success");
					$("#UpdateCustomer").modal("hide");
					return getCustomerData();
				}
			},
			complete: function(){
				$(".load").fadeOut();
			}
		});

	});


	$(document).on("click", ".pagination li a", function(e){
		e.preventDefault();
		var page = $(this).attr("href");
		var pagenumber = page.split("?page=")[1];
		return getPagination(pagenumber);
	});

	function getPagination(pagenumber){
		var geturl = $("#getalldatabypagination").data("url");
		var url = geturl+"?page=" + pagenumber;
		
		$.ajax({
			url: url,
			type: "GET",
			dataType: "HTML",
			success: function(response){
				$("#showAllDataHere").html(response);
			}
		});
	}


});