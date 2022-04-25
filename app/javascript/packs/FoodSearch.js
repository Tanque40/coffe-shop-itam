export class FoodSearch{
    
    constructor(){
	
	    // Key for spoonacular API
	    this.API_KEY = "apiKey=91a321fa14be4eee964e136880ae081c";
	    //API Link
	    this.link = "https://api.spoonacular.com/";
        
        this.imgIDs = [];
    }    
    
    // Start a search on spoonacular API and 
    // show images on .photosContainer 
    searchOptions(foodName){
	
	    const linkSearch = `${this.link}recipes/complexSearch?${this.API_KEY}&query=${foodName}&number=9`;
	    console.log(linkSearch);
	    console.log(this);
        var obj = [this]
	    $.get(linkSearch, function(data){
	        console.table(data.results);
            $("#foodRowImage").removeClass('d-none');
            var message = `<div class="row">`;
	        var countImage = 0;
	        data.results.forEach(element => {
	    
	           // message += `<div class="foodPhoto col-4">
	            //                <a class="foodPhotoLink" id="${element.id}">
	             //                   <img src="${element.image}" alt="foodName option ${countImage}" class="img-thumbail img-fluid">
	             //               </a>    
                //            </div>`;
                $(`#img${countImage}`).attr("src", `${element.image}`);
                $(`#img${countImage}`).attr("codigo", `${element.id}`);
                console.log(this);
                obj[0].imgIDs.push( element.id );

	            countImage++;
	    
	        });
            message += `</div>`

    	 //   $('div.foodPhotosContainer').html(
           //     message
	        //);
    	});

	    console.log(this);

    }

    selectImage(element){ 
        console.log("yei");
        var photoID = $(element).attr('id');
        console.log("imgid: " + this.imgIDs[photoID]); 
        $("#food_photo").val( this.imgIDs[photoID] );
    }

    
}
