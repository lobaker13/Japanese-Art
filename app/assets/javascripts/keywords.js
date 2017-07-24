//document.addEventListener("turbolinks:load",function(){
document.addEventListener("DOMContentLoaded",function(){
  let elCategorySelect = document.getElementById("category_select"),
      elKeywordArea = document.getElementById("keywords");
  if( elCategorySelect ) {
    elCategorySelect.addEventListener("change",function(event){
      // remove active from all .category_keywords that have it
      document.querySelectorAll(".category_keywords.active").forEach( el => el.classList.remove("active") );
      // add active to the area that was just selected
      document.getElementById("category_"+event.target.value).classList.add("active");
      console.log(event.target.value);
    });
  }
  if( elKeywordArea ) {
    elKeywordArea.addEventListener("change",function(event){
      console.log(event);
      Array.from(event.target.parentNode.querySelectorAll("input")).filter( c => c != event.target ).forEach( c => c.checked = false );
    });
  }
});

// ES6
// select( c => c != event.target );
//
// ES5
// select( function(c) {
//   return c != event.target;
// });
