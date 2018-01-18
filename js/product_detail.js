$("#header").load("header.html", function () {
});
$("#footer").load("footer.html", function () {
});
$(
    $(".prev-btn").click(function(e){
        e.preventDefault();
        $(".top-img>div").css({"transform":"translate3d(0px, 0px, 0px)" })
    })
)
$(
    $(".next-btn").click(function(e){
        e.preventDefault();
        $(".top-img>div").css({"transform": "translate3d(0px, -456px, 0px)"})
    })
)
//评价
$("[data-show='evaluate']").on("click",function(){
    $("[data-show='detail']").removeClass("active");
    $(this).addClass("active");
    $(".imgwrap").hide();
    $(".evaluate").show();
})
$("[data-show='detail']").on("click",function(){
    $("[data-show='evaluate']").removeClass("active");
    $(this).addClass("active");
    $(".evaluate").hide();
    $(".imgwrap").show();
})
//$(".map").on("click",function() {
//    layer.open({
//        title:false,
//        shadeClose: true,
//        content:$(".fencang-img"),
//        type:1,
//        area:['720px'],
//        closeBtn:0
//    });
//});
$(".map").on("click",function() {
    $(".fencang-img").show(500);
    $("#layui-layer-shade12").show();
});

$(".fencang-img,#layui-layer-shade12").on("click",function(){
    $(".fencang-img").hide(500);
    $("#layui-layer-shade12").hide();
})