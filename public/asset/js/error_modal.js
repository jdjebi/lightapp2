function echo_swal_error(){
	Swal.fire({
		icon: 'error',
		title: 'Oops...',
		text: "Une erreur c'est produite",
	});
}

function echo_swal_error2(titre,message,type){
	Swal.fire({
		icon: type,
		title: titre,
		text: message,
	});
}