   $(".navbar-search-button").click(function () {
      $(this).text(function(i, text){
          return text === "Search" ? "Close" : "Search";
      })
      var x = document.getElementById('search-bar');
    if (x.style.display === 'block') {
        x.style.display = 'none';
    } else {
        x.style.display = 'block';
    }
   });

