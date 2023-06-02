//star
$(document).ready(function(){
    var stepW = 30;
    var description = new Array("不值一看","遗憾的作品","值得一玩","优秀的作品","完美的旅程");
    var stars = $(".stars > li");
    var descriptionTemp;
    var option = $(".option");
    $(".showb").css("width",0);
    stars.each(function(i){
        $(stars[i]).click(function(e){
            var n = i+1;
            $(".showb").css({"width":stepW*n});
            descriptionTemp = description[i];
            $(this).find('a').blur();
            return stopDefault(e);
            return descriptionTemp;
        });
    });
    stars.each(function(i){
        $(stars[i]).hover(
            function(){
                $(".description").text(description[i]);
                option.find(".option-con:eq(" + $(this).index() + ")").show().siblings().hide();
                $(".prompt").hide();
            },
            function(){
                if(descriptionTemp != null){
                    $(".description").text(descriptionTemp);
                }else{
                   $(".description").text(" "); 
                   option.find(".option-con").hide();
                  $(".prompt").show();
                }

                    
            }
        );
    });
});
function stopDefault(e){
    if(e && e.preventDefault)
           e.preventDefault();
    else
           window.event.returnValue = false;
    return false;
};
