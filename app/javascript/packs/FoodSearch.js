export class FoodSearch{
    
    constructor(){
	
	// Key for spoonacular API
	this.API_KEY = "apiKey=91a321fa14be4eee964e136880ae081c";
	//API Link
	this.link = "https://api.spoonacular.com/";
    
    }    
    
    // Start a search on spoonacular API and 
    // show images on .photosContainer 
    searchOptions(foodName){
	
	const linkSearch = `${this.link}recipes/complexSearch?${this.API_KEY}&query=${foodName}`;
	console.log(linkSearch);
	$.get(linkSearch, function(data){
	    console.table(data);
        
        var message = `<div class="row">`;
	    var countImage = 1;
	    data.results.forEach(element => {
	    
	        message += `<div class="foodPhoto col">
	                        <a href="javascript:void(0)" class="foodPhotoLink" id="${element.id}">
	                            <img src="${element.image}" alt="foodName option ${countImage}" class="img-fluid img-thumbail">
	                        </a>    
                       </div>`;
	        countImage++;
	    
	    });
        message += `</div>`

	    $('div.foodPhotosContainer').html(
            message
	    );
	});

    }

    
}
