$(document).ready(function () {
    $("#search").keyup(function(){
        $.get("url('song/search')",
        {
            query: $(this).val()
        },
            function (data) {
                $("#song-search").empty();
                data.forEach(function(song){
                    $("#book-hits").append("<li><a href= '{{ url('/song?id=') }}" + song.id + "'>"  + song.name + "</li>");
                });
            }
        );
    });

});