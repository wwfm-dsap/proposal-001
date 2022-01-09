<html>
<body>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
$(function () {
    var table = $('#portStatus tbody');
    var hosts = ['datro.local'];
    for (var i = 0; i < hosts.length; ++i) {
        var host = hosts[i];
        $.getJSON('xx.php', {
            host: host
        }, function (data) {
            var tr = $('<tr/>');
            tr.append($('td').html(host)); //this appends the hostname to the td;
            for (var port in data) {
                tr.append($('<td><img src="' + (data[port] === 'on' ? 'accept.png' : 'error.png') + '"></td>');
                }
                table.append(tr);
            });
        }
    });
</script>
</body>
</html>
