import $ from 'jquery'

import { FoodSearch } from './FoodSearch'

const f = new FoodSearch();

$(document).ready(function(){
	
    $("#photoSelect").keyup(function() {
    
	f.searchOptions(
	    $("#photoSelect").val()
	);

    });
    
    $("a.foodPhotoLink").on("click", function(){
        var photoID = $(this).attr('id');
        console.log("ID: " + photoID); 
        $("#food_photo").val( photoID );

    });

});


