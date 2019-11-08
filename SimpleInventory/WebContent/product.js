/**
 * 
 */
$("#addE").validate({
               rules: {
                              name: { required: true ,lettersonly: true},
                              desc: { required: true},
                              id: { required: true, maxlength: 3 },
                              price: {required:true},
                              quantity:{required:true,maxlength:2}
                           
               },
               messages: {
            	   			  Name: { required: "Name is required",lettersonly: "Name can have only letters" },
            	   			  desc: { required: "Description is required"},
                              id: { required: "ID is mandatory", maxlength: "Id must be maximum 3 charecters long." },
                              price:{required:"Price is required"},
                              quantity:{required:"Quantity is required",maxlength:"Quantity maximum is 99"}
                               },
               errorElement: 'div',
});