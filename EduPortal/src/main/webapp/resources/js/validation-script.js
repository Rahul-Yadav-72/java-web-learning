$(document).ready(function() {
    // Custom method for mobile validation
    $.validator.addMethod("mobileIndia", function(value, element) {
        return this.optional(element) || /^[6-9]\d{9}$/.test(value);
    }, "Please enter a valid 10-digit mobile number.");

    // Universal Form Validation
    $(".common-form").validate({
        rules: {
            // Field Names (Matches the 'name' attribute in your JSP)
            username: { required: true, minlength: 5 },
            email: { required: true, email: true },
            password: { required: true, minlength: 8 },
            confirmPassword: { required: true, equalTo: "#password" },
            mobile: { required: true, mobileIndia: true },
            courseName: { required: true },
            fee: { required: true, number: true }
        },
        messages: {
            username: { minlength: "Username must be at least 5 characters long." },
            mobile: { mobileIndia: "Please enter a valid mobile number starting with 6-9." }
        },
        errorElement: "div",
        errorClass: "error-message", // CSS class for red text
        highlight: function(element) {
            $(element).addClass("is-invalid");
        },
        unhighlight: function(element) {
            $(element).removeClass("is-invalid");
        }
    });
});