export class FoodSearch{
    
    constructor(){
	
	    // Key for spoonacular API
	    this.API_KEY = "apiKey=91a321fa14be4eee964e136880ae081c";
	    //API Link
	    this.link = "https://api.spoonacular.com/";
        
        this.imgIDs = [];


        this.selectedImage = false;
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
	        var countImage = 0;
	        data.results.forEach(element => {
	    
                $(`#img${countImage}`).attr("src", `${element.image}`);
                $(`#img${countImage}`).attr("codigo", `${element.id}`);
                console.log(this);
                obj[0].imgIDs.push( element.id );

	            countImage++;
	    
	        });

    	});

    }

    selectImage(element){ 

        var photoArrayPos = $(element).attr('id');
        //console.log("imgid: " + this.imgIDs[photoArrayPos]); 
        $("#food_photo").val( this.imgIDs[photoArrayPos] );
        
        if(this.selectedImage){
            
            $(this.selectedImage).removeClass("foodPhotoActive");
            this.selectedImage = element;
            $(this.selectedImage).addClass("foodPhotoActive"); 

        } else {
        
            this.selectedImage = element;
            $(this.selectedImage).addClass("foodPhotoActive");

        }

    }

    
}
