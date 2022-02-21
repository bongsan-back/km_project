


    $("#checkAll").change(function() {
        if ($("#checkAll").is(':checked')) {
            $("input[name=chkagree1]").prop("checked", true);
        } else {
            $("input[name=chkagree1]").prop("checked", false);
        }
    });

    $("#checkAll_2").change(function() {
        if ($("#checkAll_2").is(':checked')) {
            $("input[name=chkagree3]").prop("checked", true);
        } else {
            $("input[name=chkagree3]").prop("checked", false);
        }
    });

    $("#checkAll_3").change(function() {
        if ($("#checkAll_3").is(':checked')) {
            $("input[name=chk_free]").prop("checked", true);
        } else {
            $("input[name=chk_free]").prop("checked", false);
        }
    });


    if(popup_right != 1) {
        $('.q-menu').css('right', -260);
        $('.q-btn-open').show();
        $('.q-btn-close').hide();
    } else {
        $('.q-menu').css('right', 10);
        $('.q-btn-close').show();
        $('.q-btn-open').hide();
    }
    

    $('.q-btn-close').click(function() {

        $('.q-menu').animate({
            right: '-260'
        }, 1000);
        $('.q-btn-open').show();
        $('.q-btn-close').hide();

        $.ajax({
            type: "POST",
            url: "popup_proc.php",
            data: {
                'right' : 0
            }, 
            cache: false,
            async: false,
            success :function(data) {
                console.log(data);
            }
        });
    });

    $('.q-btn-open').click(function() {
        $('.q-menu').animate({
            right: '10'
        }, 1000);
        $('.q-btn-close').show();
        $('.q-btn-open').hide();

        $.ajax({
            type: "POST",
            url: "popup_proc.php",
            data: {
                'right' : 1
            },  
            cache: false,
            async: false,
            success :function(data) {
                console.log(data);
            }  
        });
    }); 

    