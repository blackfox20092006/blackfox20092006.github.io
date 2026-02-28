// add toggle functionality to abstract and bibtex buttons
$(document).ready(function() {
    $('a.abstract').click(function() {
        $(this).parent().parent().find(".abstract.hidden").toggleClass('open');
        $(this).parent().parent().find(".bibtex.hidden.open").toggleClass('open');
    });
    $('a.bibtex').click(function() {
        $(this).parent().parent().find(".bibtex.hidden").toggleClass('open');
        $(this).parent().parent().find(".abstract.hidden.open").toggleClass('open');
    });
    $('a').removeClass('waves-effect waves-light');
});

// bootstrap-toc
$(document).ready(function () {
    if($('#toc-sidebar').length){
        var navSelector = "#toc-sidebar";
        var $myNav = $(navSelector);
        Toc.init($myNav);
        $("body").scrollspy({
            target: navSelector,
        });
    }
});



/* ===== CUSTOM DYNAMIC BACKGROUND & CLICK WAVE ===== */
document.addEventListener('DOMContentLoaded', () => {

    // 1. DYNAMIC GRADIENT BACKGROUND ON SCROLL
    const bg = document.createElement('div');
    bg.id = 'dynamic-bg';
    document.body.appendChild(bg);

    window.addEventListener('scroll', () => {
        // Calculate scroll percentage
        const scrollTop = window.scrollY;
        const docHeight = document.documentElement.scrollHeight - window.innerHeight;
        let scrollPercent = scrollTop / docHeight;
        
        // Map 0-1 to 0-100%
        if(docHeight === 0) scrollPercent = 0;
        
        // Update background position based on scroll
        const pos = scrollPercent * 100;
        bg.style.backgroundPosition = `${pos}% ${pos}%`;
    });

    // 2. CLICK WAVE EFFECT
    document.addEventListener('click', function(e) {
        let wave = document.createElement("span");
        wave.classList.add("click-wave");
        
        // Define size
        let size = 100;
        wave.style.width = size + "px";
        wave.style.height = size + "px";
        
        // Define position
        wave.style.left = (e.pageX - size / 2) + "px";
        wave.style.top = (e.pageY - size / 2) + "px";
        
        document.body.appendChild(wave);
        
        // Remove after animation completes
        setTimeout(() => {
            wave.remove();
        }, 600);
    });
});
