$(function() {
    $('li').hover(function() {
        $(this).addClass('lichude');
    }, function() {
        $(this).removeClass('lichude');
    });
$('li').click(function() {
        // $('#content').text($(this).text()+'-'+$(this).attr('value'));
        var objHTTP = new XMLHttpRequest();
        var id = $(this).attr('value');
        objHTTP.open('GET', 'getNews.php?id=' + id, true);
        objHTTP.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200)

            {
                $('#conten1').text(this.responseText);
            }
        }
        
        objHTTP.send();
    })
})
