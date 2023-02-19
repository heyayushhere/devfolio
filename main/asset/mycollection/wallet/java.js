$(document).ready(function() {
    $("#submit-btn").click(function() {
        var name = $("#name").val();
        var email = $("#email").val();
        var amount = $("#amount").val();
        
        // Validate input fields
        if (!name || !email || !amount) {
            alert("Please fill out all the fields.");
            return;
        }
        
        // Send transaction data to server
        $.ajax({
            type: "POST",
            url: "/transactions",
            data: {
                name: name,
                email: email,
                amount: amount
            },
            success: function(response) {
                alert("Transaction successful!");
            },
            error: function(error) {
                console.error(error);
                alert("Transaction failed. Please try again later.");
            }
        });
    });
});
