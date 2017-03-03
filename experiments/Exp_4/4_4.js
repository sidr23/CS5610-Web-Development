$(document).ready(function () {

    function getText() {
        $.ajax({
            url: '1.txt',
            type: 'GET',
            dataType: 'text',
            success: onSuccess,
            error:onError
            }
        );
    }

    function showError() {
        $.ajax({
            url: '2.txt',
            type: 'GET',
            dataType: 'text',
            success: onError,
            error: onError
        }
        );
    }
    function onSuccess(result) {
        $('#content').append(result);
    }

    function onError(xhr, status, strErr) {
        $('#errcontent').append(strErr);
    }

    $('#disp').click(function () {
        getText();
    });
    $('#errdisp').click(function () {
        showError();
    });

});