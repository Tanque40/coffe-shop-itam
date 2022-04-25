import $ from 'jquery'

import { FoodSearch } from './FoodSearch'

const f = new FoodSearch();

$(document).ready(function(){
	
    $("#food_photo").keyup(function() {
    
	f.searchOptions(
	    $("#food_photo").val()
	);

    });

});


