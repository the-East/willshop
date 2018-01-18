$(".nav-metu").mouseover(function(e){
    $(this).css("border-top","none").children().last().css("height",158).css();
})
$(".nav-metu").mouseout(function(e){
    $(this).css("border-top","1px dotted #f4b1cf;").children().last().css("height",0).css();
})
