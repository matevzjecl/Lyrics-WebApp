require('./bootstrap');

function sort(n) {
    let table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
  table = document.getElementById("songs");
  switching = true;
  dir = "asc";

  let is = document.querySelectorAll("i");
  for (let i = 0; i < is.length; i++) {
      is[i].removeAttribute("class");
  }

  while (switching) {
    switching = false;
    rows = table.rows;

    for (i = 1; i < (rows.length - 1); i++) {
      shouldSwitch = false;

      x = rows[i].getElementsByTagName("td")[n];
      y = rows[i + 1].getElementsByTagName("td")[n];

      if (dir == "asc") {
        table.getElementsByTagName("th")[n].getElementsByTagName("i")[0].classList.add("sort-by-desc");
        table.getElementsByTagName("th")[n].getElementsByTagName("i")[0].classList.remove("sort-by-asc");
        
        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
          shouldSwitch = true;
          break;
        }
      } else if (dir == "desc") {
        table.getElementsByTagName("th")[n].getElementsByTagName("i")[0].classList.add("sort-by-asc");
        table.getElementsByTagName("th")[n].getElementsByTagName("i")[0].classList.remove("sort-by-desc");

        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
          shouldSwitch = true;
          break;
        }
      }
    }
    if (shouldSwitch) {

      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
      switchcount ++;
    } else {

      if (switchcount == 0 && dir == "asc") {
        dir = "desc";
        switching = true;
      }
    }
  }

}

  $("#songs").on('click', '.increment', function(){
    const val = $(this).attr("data-value");
    if($(this).hasClass("up")) {
      $.get("/upvote",
        {
            song: val,
            query: $("#search").val(),
        },
            function (data) {
                $("#count-"+val).html(data);

            }

        );
          if($(this).next().hasClass("op")) {
            $(this).next().removeClass("op");
          }
          else {
            $(this).closest(".up").addClass("op");

          }
      
    } else {
      $.get("/downvote",
        {
            song: val,
            query: $("#search").val(),

        },
            function (data) {
              $("#count-"+val).html(data);
            }
        );
        if($(this).prev().hasClass("op")) {
          $(this).prev().removeClass("op");
        }
        else {
          $(this).closest(".down").addClass("op");

        }
    }
    if(!$(this).hasClass("guest")) {
      $(this).parent().addClass("bump");
    
      setTimeout(function(){
        $(this).parent().removeClass("bump");    
      }, 400);
    }
    
  });
  function auto_grow(element) {
    element.style.height = "5px";
    element.style.height = (element.scrollHeight)+"px";
}
$(document).ready(function () {

    const ths = document.querySelectorAll(".th-clickable");
    for (let i = 0; i < ths.length; i++) {
        ths[i].onclick = function () {
            sort(i);
        };
    }
    $(".td-clickable").click(function() {
        window.location = $(this).attr('href');
        return false;
    });


    $('#search').focus(function () {
        $('#search').attr('placeholder','');
      });

    $('#search').blur(function () {
    $('#search').attr('placeholder','Search songs');
    });

    $("#search").on('input',function(){
        $.get("/search",
        {
            query: $(this).val()
        },
            function (data) {
                $("#songs").html(data);

            }
        );
    });

});
