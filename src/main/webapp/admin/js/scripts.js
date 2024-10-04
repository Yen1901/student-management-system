//add
document.getElementById('add-new-btn').addEventListener('click', function() {
    $('#addNewModal').modal('show');
});
//edit
document.querySelector('.edit-btn').addEventListener('click', function() {
    $('#editModal').modal('show');
});

//del
document.getElementById('confirmDeleteBtn').addEventListener('click', function() {
    var isSuccess = true; 
    
    if (isSuccess) {
        $('#deleteModal').modal('hide');
        $('#successModal').modal('show');
    } else {
        $('#deleteModal').modal('hide');
        $('#errorModal').modal('show');
    }
});

