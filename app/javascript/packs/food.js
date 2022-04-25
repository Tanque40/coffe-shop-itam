import $ from 'jquery'

import { FoodSearch } from './FoodSearch'

const f = new FoodSearch();

$(document).ready(function(){
	
    $("#photoSelect").keyup(function() {
    
	    f.searchOptions(
	        $("#photoSelect").val()
	    );

    });
    
    $(".foodPhotoLink").click(function(){
        console.log("yashoi");
        f.selectImage(
            $(this)
        );
    });

});


