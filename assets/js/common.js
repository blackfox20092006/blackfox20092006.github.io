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

/* ===== INTERACTIVE PARTICLE BACKGROUND ===== */
class ParticleBackground {
    constructor() {
        this.canvas = document.getElementById('particles-canvas');
        if (!this.canvas) {
            this.canvas = document.createElement('canvas');
            this.canvas.id = 'particles-canvas';
            document.body.appendChild(this.canvas);
        }
        this.ctx = this.canvas.getContext('2d');
        this.particles = [];
        this.mouse = { x: null, y: null, radius: 100 };
        this.init();
    }

    init() {
        this.resize();
        window.addEventListener('resize', () => this.resize());
        window.addEventListener('mousemove', (e) => {
            this.mouse.x = e.clientX;
            this.mouse.y = e.clientY;
        });
        window.addEventListener('mouseout', () => {
            this.mouse.x = null;
            this.mouse.y = null;
        });
        this.createParticles();
        this.animate();
    }

    resize() {
        this.canvas.width = window.innerWidth;
        this.canvas.height = window.innerHeight;
    }

    createParticles() {
        const count = Math.min(Math.floor(window.innerWidth * 0.05), 80);
        for (let i = 0; i < count; i++) {
            this.particles.push({
                x: Math.random() * this.canvas.width,
                y: Math.random() * this.canvas.height,
                size: Math.random() * 2 + 0.5,
                speedX: (Math.random() - 0.5) * 0.5,
                speedY: (Math.random() - 0.5) * 0.5,
                opacity: Math.random() * 0.5 + 0.1,
            });
        }
    }

    animate() {
        const ctx = this.ctx;
        ctx.clearRect(0, 0, this.canvas.width, this.canvas.height);

        const isDark = document.documentElement.getAttribute('data-theme') === 'dark';
        const particleColor = isDark ? '184, 170, 224' : '156, 142, 199';

        for (let i = 0; i < this.particles.length; i++) {
            const p = this.particles[i];
            
            // Mouse interaction
            if (this.mouse.x !== null) {
                const dx = this.mouse.x - p.x;
                const dy = this.mouse.y - p.y;
                const dist = Math.sqrt(dx * dx + dy * dy);
                if (dist < this.mouse.radius) {
                    const force = (this.mouse.radius - dist) / this.mouse.radius;
                    p.x -= dx * force * 0.02;
                    p.y -= dy * force * 0.02;
                }
            }

            p.x += p.speedX;
            p.y += p.speedY;

            if (p.x < 0 || p.x > this.canvas.width) p.speedX *= -1;
            if (p.y < 0 || p.y > this.canvas.height) p.speedY *= -1;

            ctx.beginPath();
            ctx.arc(p.x, p.y, p.size, 0, Math.PI * 2);
            ctx.fillStyle = `rgba(${particleColor}, ${p.opacity})`;
            ctx.fill();

            // Connections
            for (let j = i + 1; j < this.particles.length; j++) {
                const p2 = this.particles[j];
                const dx = p.x - p2.x;
                const dy = p.y - p2.y;
                const dist = Math.sqrt(dx * dx + dy * dy);
                
                if (dist < 150) {
                    ctx.beginPath();
                    ctx.moveTo(p.x, p.y);
                    ctx.lineTo(p2.x, p2.y);
                    ctx.strokeStyle = `rgba(${particleColor}, ${0.1 * (1 - dist / 150)})`;
                    ctx.lineWidth = 0.5;
                    ctx.stroke();
                }
            }
        }

        requestAnimationFrame(() => this.animate());
    }
}

/* ===== DYNAMIC GRADIENT BACKGROUND ON SCROLL ===== */
function initDynamicBg() {
    const bg = document.getElementById('dynamic-bg');
    if (!bg) return;

    window.addEventListener('scroll', () => {
        const scrollTop = window.scrollY;
        const docHeight = document.documentElement.scrollHeight - window.innerHeight;
        let scrollPercent = docHeight > 0 ? scrollTop / docHeight : 0;
        const pos = scrollPercent * 100;
        bg.style.backgroundPosition = `${pos}% ${pos}%`;
    });
}

/* ===== CLICK WAVE EFFECT ===== */
function initClickWave() {
    document.addEventListener('click', function(e) {
        // Skip if clicking interactive elements
        if (e.target.closest('a, button, .btn, .nav-link, .card, .carousel, .fancybox')) return;
        
        let wave = document.createElement("span");
        wave.classList.add("click-wave");
        let size = 60 + Math.random() * 40;
        wave.style.width = size + "px";
        wave.style.height = size + "px";
        wave.style.left = (e.pageX - size / 2) + "px";
        wave.style.top = (e.pageY - size / 2) + "px";
        document.body.appendChild(wave);
        setTimeout(() => wave.remove(), 600);
    });
}

/* ===== SCROLL REVEAL INIT ===== */
function initScrollReveal() {
    const sections = document.querySelectorAll('.stats-container, .places-section, .skills-section, article, .post, .publications, .gallery-section, .people-list, .contact-grid');
    sections.forEach(section => {
        if (!section.classList.contains('reveal')) {
            section.classList.add('reveal');
        }
    });
    
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const el = entry.target;
                el.classList.add('active');

                // Animate skill cards with stagger
                if (el.classList.contains('skills-section')) {
                    const cards = el.querySelectorAll('.card');
                    cards.forEach((card, i) => {
                        setTimeout(() => card.classList.add('animate-in'), i * 120);
                    });
                }

                // Animate award years with stagger
                if (el.classList.contains('award-year')) {
                    el.classList.add('animate-in');
                    const awardCards = el.querySelectorAll('.award-card');
                    awardCards.forEach((card, i) => {
                        setTimeout(() => card.classList.add('animate-in'), i * 100 + 150);
                    });
                }

                // Animate individual award cards directly
                if (el.classList.contains('award-card')) {
                    el.classList.add('animate-in');
                }

                observer.unobserve(el);
            }
        });
    }, { threshold: 0.08, rootMargin: '0px 0px -40px 0px' });
    
    document.querySelectorAll('.reveal, .skills-section, .award-year, .award-card, .award-section').forEach(el => observer.observe(el));
}

/* ===== COUNTER ANIMATION ===== */
let hasAnimated = false;

function animateCounters() {
    if (hasAnimated) return;
    hasAnimated = true;
    
    const counters = document.querySelectorAll('.stat-number');
    const speed = 200;
    
    counters.forEach(counter => {
        const target = +counter.getAttribute('data-target');
        if (target === 0) return;
        const inc = target / speed;

        const updateCount = () => {
            const count = +counter.innerText;
            if (count < target) {
                counter.innerText = Math.ceil(count + inc);
                setTimeout(updateCount, 15);
            } else {
                counter.innerText = target;
            }
        };
        updateCount();
    });
}

/* ===== STATS OBSERVER ===== */
function initStatsObserver() {
    const statsContainer = document.querySelector('.stats-container');
    if (!statsContainer) return;
    
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                animateCounters();
                observer.disconnect();
            }
        });
    }, { threshold: 0.5 });
    
    observer.observe(statsContainer);
}

/* ===== GitHub Projects Count ===== */
function fetchGitHubProjects() {
    const projectsEl = document.getElementById("projects-count");
    if (!projectsEl) return;
    
    fetch("https://api.github.com/users/nhanhqq")
        .then(response => response.json())
        .then(data => {
            if (data.public_repos) {
                projectsEl.setAttribute("data-target", data.public_repos);
                if (hasAnimated) {
                    const target = data.public_repos;
                    const speed = 200;
                    const inc = target / speed;
                    const updateCount = () => {
                        const count = +projectsEl.innerText;
                        if (count < target) {
                            projectsEl.innerText = Math.ceil(count + inc);
                            setTimeout(updateCount, 15);
                        } else {
                            projectsEl.innerText = target;
                        }
                    };
                    updateCount();
                }
            }
        })
        .catch(err => console.log("GitHub API error:", err));
}

/* ===== Initialize Everything on DOM Ready ===== */
document.addEventListener('DOMContentLoaded', () => {
    // Initialize background gradient
    initDynamicBg();
    
    // Initialize click wave
    initClickWave();
    
    // Initialize scroll reveal
    initScrollReveal();
    
    // Initialize stats observer
    initStatsObserver();
    
    // Fetch GitHub projects count
    fetchGitHubProjects();
    
    // Initialize particles (delayed slightly for performance)
    setTimeout(() => {
        new ParticleBackground();
    }, 500);
});