document.addEventListener("turbolinks:load",function(){
  let elCategorySelect = document.getElementById("category_select");
  if( elCategorySelect ) {
    elCategorySelect.addEventListener("change",function(event){
      // remove active from all .category_keywords that have it
      document.querySelectorAll(".category_keywords.active").forEach( el => el.classList.remove("active") );
      // add active to the area that was just selected
      document.getElementById("category_"+event.target.value).classList.add("active");
      console.log(event.target.value);
    });
  }
});
