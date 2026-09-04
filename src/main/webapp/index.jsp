<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>NexusShop</title>
<link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@400;500;600;700&family=Nunito:wght@400;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
<style>
  :root{
    --bg:#FFF6EA;
    --surface:#FFFFFF;
    --rail:#241E3D;
    --ink:#241E3D;
    --coral:#FF6B4A;
    --coral-ink:#241E3D;
    --mint:#2FD9B9;
    --sun:#FFC93C;
    --berry:#FF4785;
    --line:rgba(36,30,61,0.12);
    --muted:#6B637F;
    --r-lg:24px;
    --r-md:16px;
    --r-sm:10px;
  }
  *{margin:0;padding:0;box-sizing:border-box;}
  html{scroll-behavior:smooth;}
  body{
    font-family:'Nunito',sans-serif;
    background:var(--bg);
    color:var(--ink);
    line-height:1.5;
    -webkit-font-smoothing:antialiased;
  }
  a{color:inherit;text-decoration:none;}
  img{display:block;max-width:100%;}
  button{cursor:pointer;font-family:inherit;border:none;background:none;color:inherit;}
  h1,h2,h3,h4{font-family:'Fredoka',sans-serif;font-weight:600;letter-spacing:0;}

  @media (prefers-reduced-motion: reduce){
    *{animation-duration:0.001s !important;transition-duration:0.001s !important;}
  }

  /* ===== layout shell ===== */
  .shell{display:flex;min-height:100vh;}

  .rail{
    width:88px;flex-shrink:0;background:var(--rail);color:#fff;
    display:flex;flex-direction:column;align-items:center;
    padding:22px 0;position:sticky;top:0;height:100vh;z-index:50;
    border-radius:0 28px 28px 0;
  }
  .rail .mark{
    width:44px;height:44px;border-radius:14px;background:var(--sun);color:var(--ink);
    display:grid;place-items:center;font-family:'Fredoka',sans-serif;font-weight:700;
    font-size:19px;margin-bottom:30px;transform:rotate(-6deg);
  }
  .rail nav{display:flex;flex-direction:column;gap:8px;flex:1;align-items:center;}
  .rail nav a{
    width:52px;height:52px;border-radius:16px;display:grid;place-items:center;
    font-size:17px;color:rgba(255,255,255,0.55);transition:.15s ease;position:relative;
  }
  .rail nav a span{
    position:absolute;left:66px;background:var(--ink);color:#fff;font-size:12.5px;
    padding:6px 12px;border-radius:10px;white-space:nowrap;opacity:0;pointer-events:none;
    transition:.15s ease;font-weight:600;
  }
  .rail nav a:hover span{opacity:1;left:72px;}
  .rail nav a:hover{color:#fff;background:rgba(255,255,255,0.1);}
  .rail nav a.active{color:var(--ink);background:var(--mint);}
  .rail .foot{display:flex;flex-direction:column;gap:8px;align-items:center;}
  .rail .foot button{
    width:52px;height:52px;border-radius:16px;display:grid;place-items:center;
    font-size:16px;color:rgba(255,255,255,0.55);position:relative;transition:.15s ease;
  }
  .rail .foot button:hover{color:#fff;background:rgba(255,255,255,0.1);}
  .cart-count{
    position:absolute;top:2px;right:6px;background:var(--berry);color:#fff;
    font-size:10.5px;font-weight:700;width:18px;height:18px;border-radius:50%;
    display:grid;place-items:center;border:2px solid var(--rail);
  }

  .main{flex:1;min-width:0;}

  /* ===== top strip ===== */
  .topstrip{
    display:flex;align-items:center;justify-content:space-between;gap:20px;
    padding:24px 44px;
  }
  .mobile-toggle{display:none;width:42px;height:42px;border-radius:14px;background:var(--surface);border:2px solid var(--line);}
  .search-wrap{
    display:flex;align-items:center;gap:10px;border:2px solid var(--line);
    border-radius:999px;padding:11px 18px;background:var(--surface);
    max-width:380px;flex:1;
  }
  .search-wrap:focus-within{border-color:var(--mint);}
  .search-wrap input{border:0;outline:none;background:transparent;flex:1;font-size:14.5px;font-family:'Nunito',sans-serif;}
  .search-wrap i{color:var(--muted);}
  .topstrip .right{display:flex;align-items:center;gap:12px;font-size:13.5px;color:var(--muted);font-weight:700;}
  .topstrip .right .pill{background:#fff;border:2px solid var(--line);padding:8px 14px;border-radius:999px;display:flex;align-items:center;gap:7px;}
  .topstrip .right .pill.hot{background:var(--sun);border-color:var(--sun);color:var(--ink);}
  .topstrip .right .pill i{color:var(--coral);}
  .topstrip .right .pill.hot i{color:var(--ink);}

  .container{max-width:1180px;margin:0 auto;padding:0 44px;}

  /* ===== buttons ===== */
  .btn{
    display:inline-flex;align-items:center;gap:9px;padding:14px 28px;
    font-weight:700;font-size:15px;border-radius:999px;transition:.15s ease;
    border:2px solid transparent;font-family:'Nunito',sans-serif;
  }
  .btn-coral{background:var(--coral);color:#fff;}
  .btn-coral:hover{background:#E85A3B;transform:translateY(-2px);}
  .btn-line{border-color:var(--ink);color:var(--ink);}
  .btn-line:hover{background:var(--ink);color:#fff;}
  .btn-white{background:#fff;color:var(--ink);}
  .btn-white:hover{transform:translateY(-2px);}

  /* ===== hero ===== */
  .hero{padding:36px 0 70px;position:relative;overflow:hidden;}
  .hero-grid{display:grid;grid-template-columns:1.05fr 0.95fr;gap:50px;align-items:center;}
  .hero-copy .eyebrow{
    display:inline-flex;align-items:center;gap:8px;font-size:14px;color:var(--ink);
    font-weight:800;margin-bottom:18px;background:var(--sun);padding:8px 16px 8px 10px;
    border-radius:999px;
  }
  .hero-copy .eyebrow .dot{width:8px;height:8px;border-radius:50%;background:var(--berry);}
  .hero-copy h1{font-size:54px;line-height:1.08;max-width:540px;margin-bottom:20px;}
  .hero-copy h1 em{font-style:normal;color:var(--coral);}
  .hero-copy p{color:var(--muted);font-size:17px;max-width:420px;margin-bottom:30px;line-height:1.6;font-weight:600;}
  .hero-copy .actions{display:flex;gap:14px;flex-wrap:wrap;}

  .hero-collage{position:relative;height:420px;}
  .hero-collage .blob{
    position:absolute;inset:0;background:var(--mint);border-radius:44% 56% 60% 40% / 50% 45% 55% 50%;
    opacity:0.35;
  }
  .hero-collage img{
    position:absolute;border-radius:20px;object-fit:cover;border:6px solid #fff;
    box-shadow:0 14px 30px rgba(36,30,61,0.18);
  }
  .hero-collage .a{width:250px;height:320px;top:10px;left:20px;transform:rotate(-6deg);z-index:2;}
  .hero-collage .b{width:190px;height:190px;bottom:20px;right:10px;transform:rotate(8deg);z-index:3;}
  .hero-collage .c{width:150px;height:150px;top:30px;right:40px;transform:rotate(-4deg);z-index:1;}
  .hero-collage .sticker{
    position:absolute;bottom:60px;left:0;background:var(--berry);color:#fff;font-family:'Fredoka',sans-serif;
    font-weight:600;font-size:14px;padding:12px 18px;border-radius:16px;transform:rotate(-5deg);
    z-index:4;box-shadow:0 8px 18px rgba(255,71,133,0.35);
  }

  /* ===== section header ===== */
  .section{padding:50px 0;}
  .sec-head{display:flex;align-items:center;justify-content:space-between;margin-bottom:28px;gap:16px;flex-wrap:wrap;}
  .sec-head h2{font-size:28px;display:flex;align-items:center;gap:12px;}
  .sec-head h2 .badge{width:38px;height:38px;border-radius:12px;display:grid;place-items:center;font-size:16px;color:#fff;}
  .sec-head .view-all{font-size:14.5px;font-weight:800;color:var(--coral);white-space:nowrap;}

  /* ===== categories ===== */
  .cat-rack{display:flex;gap:14px;overflow-x:auto;padding-bottom:8px;}
  .cat-rack::-webkit-scrollbar{height:5px;}
  .cat-rack::-webkit-scrollbar-thumb{background:var(--line);border-radius:8px;}
  .cat-chip{
    flex:0 0 auto;display:flex;align-items:center;gap:11px;padding:14px 22px;
    border-radius:999px;font-size:14.5px;font-weight:800;white-space:nowrap;transition:.15s ease;
    border:2px solid transparent;
  }
  .cat-chip i{font-size:15px;}
  .cat-chip:hover{transform:translateY(-3px);}

  /* ===== bento product grid ===== */
  .bento{
    display:grid;grid-template-columns:repeat(4,1fr);grid-auto-rows:230px;gap:18px;
  }
  .p-card{
    background:var(--surface);border-radius:var(--r-lg);
    overflow:hidden;position:relative;display:flex;flex-direction:column;transition:.15s ease;
    border:2px solid transparent;
  }
  .p-card:hover{transform:translateY(-4px);border-color:var(--ink);}
  .p-card.big{grid-column:span 2;grid-row:span 2;}
  .p-card .img-wrap{flex:1;position:relative;overflow:hidden;background:#F1ECE0;}
  .p-card .img-wrap img{width:100%;height:100%;object-fit:cover;}
  .p-card .flag{
    position:absolute;top:12px;left:12px;color:#fff;
    font-size:11px;font-family:'Fredoka',sans-serif;font-weight:600;padding:6px 13px;border-radius:999px;
    transform:rotate(-4deg);
  }
  .p-card .flag.new{background:var(--mint);color:var(--ink);}
  .p-card .flag.sale{background:var(--berry);}
  .p-card .wish{
    position:absolute;top:12px;right:12px;width:34px;height:34px;border-radius:50%;
    background:rgba(255,255,255,0.92);display:grid;place-items:center;color:var(--muted);
    font-size:14px;transition:.15s ease;
  }
  .p-card .wish:hover{color:var(--berry);}
  .p-card .info{padding:15px 17px 17px;display:flex;flex-direction:column;gap:5px;}
  .p-card .cat-tag{font-size:11.5px;color:var(--muted);font-weight:800;}
  .p-card h5{font-size:15.5px;font-weight:600;line-height:1.3;font-family:'Fredoka',sans-serif;}
  .p-card.big h5{font-size:20px;}
  .p-card .row{display:flex;align-items:center;justify-content:space-between;margin-top:5px;}
  .p-card .price{font-weight:800;font-size:16.5px;}
  .p-card .price .old{font-weight:700;color:var(--muted);text-decoration:line-through;font-size:13px;margin-left:6px;}
  .p-card .add{
    width:36px;height:36px;border-radius:50%;background:var(--ink);color:#fff;
    display:grid;place-items:center;font-size:13px;transition:.15s ease;flex-shrink:0;
  }
  .p-card .add:hover{background:var(--coral);}
  .p-card .add.added{background:var(--mint);color:var(--ink);animation:pop .35s ease;}
  @keyframes pop{0%{transform:scale(1);}45%{transform:scale(1.35);}100%{transform:scale(1);}}

  /* ===== deal ===== */
  .deal{
    display:grid;grid-template-columns:1fr 300px;gap:0;background:var(--coral);color:#fff;
    border-radius:var(--r-lg);overflow:hidden;position:relative;
  }
  .deal::before{
    content:'';position:absolute;top:-60px;right:-60px;width:220px;height:220px;
    background:rgba(255,255,255,0.12);border-radius:50%;
  }
  .deal-main{padding:44px 46px;display:flex;gap:38px;align-items:center;position:relative;}
  .deal-main img{width:190px;height:190px;object-fit:cover;border-radius:20px;flex-shrink:0;border:5px solid rgba(255,255,255,0.5);transform:rotate(-3deg);}
  .deal-tag{display:inline-block;background:var(--ink);color:var(--sun);font-size:12.5px;font-weight:800;padding:6px 14px;border-radius:999px;margin-bottom:12px;}
  .deal-main h3{font-size:30px;color:#fff;margin-bottom:8px;}
  .deal-main p{color:rgba(255,255,255,0.85);font-size:14.5px;max-width:340px;margin-bottom:18px;font-weight:600;}
  .deal-main .price-big{font-size:30px;font-weight:700;color:#fff;font-family:'Fredoka',sans-serif;}
  .deal-main .price-big .old{font-size:17px;font-weight:600;color:rgba(255,255,255,0.55);text-decoration:line-through;margin-left:8px;}
  .deal-side{background:rgba(0,0,0,0.14);padding:36px 32px;display:flex;flex-direction:column;justify-content:center;gap:20px;position:relative;}
  .deal-side .stock{font-size:13.5px;color:rgba(255,255,255,0.85);font-weight:700;}
  .deal-side .stock strong{color:var(--sun);}
  .timer-row{display:flex;gap:8px;}
  .timer-box{background:rgba(255,255,255,0.18);padding:10px 0;border-radius:12px;text-align:center;flex:1;}
  .timer-box .n{font-size:20px;font-weight:600;font-family:'Fredoka',sans-serif;}
  .timer-box .l{font-size:9px;color:rgba(255,255,255,0.7);letter-spacing:.02em;font-weight:700;}

  /* ===== testimonials ===== */
  .quote-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:20px;}
  .quote-card{
    border-radius:var(--r-lg);padding:26px 26px 22px;position:relative;
  }
  .quote-card::after{
    content:'';position:absolute;bottom:-12px;left:34px;width:24px;height:24px;
    background:inherit;clip-path:polygon(0 0, 100% 0, 0 100%);
  }
  .quote-body blockquote{font-size:16px;line-height:1.55;font-family:'Nunito',sans-serif;font-weight:700;margin-bottom:16px;}
  .quote-who{display:flex;gap:12px;align-items:center;}
  .quote-who img{width:42px;height:42px;border-radius:50%;object-fit:cover;background:#fff;border:2px solid #fff;}
  .quote-who .name{font-weight:800;font-size:14px;}
  .quote-who .role{font-size:12px;font-weight:700;opacity:0.65;}
  .quote-body .stars{color:var(--berry);font-size:13px;margin-bottom:10px;}

  /* ===== newsletter ===== */
  .newsletter{
    display:flex;align-items:center;justify-content:space-between;gap:30px;
    background:var(--ink);color:#fff;border-radius:var(--r-lg);
    padding:38px 46px;flex-wrap:wrap;position:relative;overflow:hidden;
  }
  .newsletter::before{
    content:'';position:absolute;bottom:-70px;left:-20px;width:200px;height:200px;
    background:var(--mint);opacity:0.25;border-radius:50%;
  }
  .newsletter h3{font-size:23px;margin-bottom:4px;color:#fff;position:relative;}
  .newsletter p{color:rgba(255,255,255,0.7);font-size:14.5px;font-weight:600;position:relative;}
  .newsletter form{display:flex;gap:10px;flex:1;max-width:420px;min-width:260px;position:relative;}
  .newsletter form input{
    flex:1;padding:14px 18px;border:2px solid rgba(255,255,255,0.2);border-radius:999px;
    font-size:14px;outline:none;background:rgba(255,255,255,0.08);color:#fff;font-family:'Nunito',sans-serif;font-weight:600;
  }
  .newsletter form input::placeholder{color:rgba(255,255,255,0.5);}
  .newsletter form input:focus{border-color:var(--sun);}
  #newsletterMsg{margin-top:10px;font-size:13.5px;color:var(--sun);width:100%;font-weight:700;position:relative;}

  /* ===== footer ===== */
  footer{padding:40px 0 28px;margin-top:8px;}
  .foot-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:36px;margin-bottom:24px;}
  .foot-grid h5{font-size:14px;font-weight:800;margin-bottom:12px;}
  .foot-grid p{color:var(--muted);font-size:13.5px;max-width:260px;line-height:1.6;font-weight:600;}
  .foot-grid ul{list-style:none;display:flex;flex-direction:column;gap:8px;}
  .foot-grid ul li a{color:var(--muted);font-size:13.5px;font-weight:700;}
  .foot-grid ul li a:hover{color:var(--coral);}
  .foot-bottom{text-align:center;padding-top:18px;border-top:2px solid var(--line);color:var(--muted);font-size:12.5px;font-weight:700;}

  /* ===== responsive ===== */
  @media (max-width:1080px){
    .bento{grid-template-columns:repeat(3,1fr);}
    .deal{grid-template-columns:1fr;}
    .quote-grid{grid-template-columns:1fr 1fr;}
  }
  @media (max-width:860px){
    .rail{position:fixed;bottom:0;top:auto;left:0;right:0;width:100%;height:70px;flex-direction:row;padding:0 12px;z-index:100;border-radius:24px 24px 0 0;}
    .rail .mark{display:none;}
    .rail nav{flex-direction:row;flex:1;justify-content:space-around;}
    .rail nav a span{display:none;}
    .rail .foot{flex-direction:row;}
    body{padding-bottom:70px;}
    .container{padding:0 20px;}
    .topstrip{padding:18px 20px;}
    .hero-grid{grid-template-columns:1fr;}
    .hero-collage{height:300px;order:-1;}
    .hero-copy h1{font-size:38px;}
    .bento{grid-template-columns:repeat(2,1fr);grid-auto-rows:190px;}
    .p-card.big{grid-column:span 2;grid-row:span 1;}
    .deal-main{flex-direction:column;text-align:center;padding:32px 26px;}
    .quote-grid{grid-template-columns:1fr;}
    .foot-grid{grid-template-columns:1fr 1fr;}
  }
  @media (max-width:480px){
    .bento{grid-template-columns:1fr 1fr;grid-auto-rows:170px;}
    .foot-grid{grid-template-columns:1fr;}
    .newsletter{flex-direction:column;align-items:flex-start;}
  }

  a:focus-visible, button:focus-visible, input:focus-visible{
    outline:3px solid var(--mint);outline-offset:2px;
  }
</style>
</head>
<body>

<div class="shell">
  <!-- ===== LEFT RAIL ===== -->
  <aside class="rail">
    <div class="mark">N</div>
    <nav aria-label="Main navigation">
      <a href="#" class="active"><i class="fas fa-house"></i><span>Home</span></a>
      <a href="#categories"><i class="fas fa-border-all"></i><span>Categories</span></a>
      <a href="#products"><i class="fas fa-bag-shopping"></i><span>Trending</span></a>
      <a href="#deals"><i class="fas fa-bolt"></i><span>Deals</span></a>
      <a href="#reviews"><i class="fas fa-star"></i><span>Reviews</span></a>
    </nav>
    <div class="foot">
      <button title="Account"><i class="far fa-circle-user"></i></button>
      <button title="Wishlist"><i class="far fa-heart"></i></button>
      <button title="Cart" id="cartBtn"><i class="fas fa-bag-shopping"></i><span class="cart-count" id="cartCount">0</span></button>
    </div>
  </aside>

  <div class="main">
    <!-- ===== TOP STRIP ===== -->
    <div class="topstrip">
      <button class="mobile-toggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
      <div class="search-wrap" role="search">
        <i class="fas fa-search"></i>
        <input type="search" placeholder="Search products…" aria-label="Search" />
      </div>
      <div class="right">
        <span class="pill"><i class="fas fa-truck"></i> Free shipping over $50</span>
        <span class="pill hot"><i class="fas fa-fire"></i> 12 items on sale today</span>
      </div>
    </div>

    <main>
      <!-- ===== HERO ===== -->
      <section class="hero">
        <div class="container hero-grid">
          <div class="hero-copy">
            <div class="eyebrow"><span class="dot"></span> New collection, 2026</div>
            <h1>Premium essentials, <em>chosen with care</em></h1>
            <p>Fashion, tech and accessories curated for everyday use. Free shipping on your first order, and deals refreshed weekly.</p>
            <div class="actions">
              <button class="btn btn-coral" id="shopNow"><i class="fas fa-arrow-right"></i> Shop the collection</button>
              <button class="btn btn-line" id="exploreDeals"><i class="fas fa-clock"></i> See today's deals</button>
            </div>
          </div>
          <div class="hero-collage">
            <div class="blob"></div>
            <img class="a" src="https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=700&q=80" alt="Folded knitwear" loading="lazy">
            <img class="b" src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=500&q=80" alt="Wristwatch detail" loading="lazy">
            <img class="c" src="https://images.unsplash.com/photo-1491553895911-0055eca6402d?auto=format&fit=crop&w=500&q=80" alt="Leather bag" loading="lazy">
            <div class="sticker">Handpicked ✦</div>
          </div>
        </div>
      </section>

      <!-- ===== CATEGORIES ===== -->
      <section class="section" id="categories">
        <div class="container">
          <div class="sec-head">
            <h2><span class="badge" style="background:var(--mint);color:var(--ink);"><i class="fas fa-border-all"></i></span> Browse by category</h2>
            <a href="#" class="view-all">All categories →</a>
          </div>
          <div class="cat-rack" id="catRack"></div>
        </div>
      </section>

      <!-- ===== PRODUCTS ===== -->
      <section class="section" id="products">
        <div class="container">
          <div class="sec-head">
            <h2><span class="badge" style="background:var(--coral);"><i class="fas fa-bag-shopping"></i></span> Trending now</h2>
            <a href="#" class="view-all">View all →</a>
          </div>
          <div class="bento" id="productBento"></div>
        </div>
      </section>

      <!-- ===== DEAL ===== -->
      <section class="section" id="deals">
        <div class="container">
          <div class="sec-head">
            <h2><span class="badge" style="background:var(--sun);color:var(--ink);"><i class="fas fa-bolt"></i></span> Flash deal</h2>
          </div>
          <div class="deal">
            <div class="deal-main">
              <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=500&q=80" alt="MacBook Air M2">
              <div>
                <span class="deal-tag">Limited offer</span>
                <h3>MacBook Air M2</h3>
                <p>Thin, light and quietly powerful — the M2 chip redefines what a laptop this size can do.</p>
                <div class="price-big">$999 <span class="old">$1,199</span></div>
              </div>
            </div>
            <div class="deal-side">
              <p class="stock">Only <strong>12</strong> left in stock</p>
              <div class="timer-row" id="dealTimer">
                <div class="timer-box"><div class="n" id="dealDays">0</div><div class="l">DAYS</div></div>
                <div class="timer-box"><div class="n" id="dealHours">00</div><div class="l">HRS</div></div>
                <div class="timer-box"><div class="n" id="dealMinutes">00</div><div class="l">MIN</div></div>
                <div class="timer-box"><div class="n" id="dealSeconds">00</div><div class="l">SEC</div></div>
              </div>
              <button class="btn btn-white" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to bag</button>
            </div>
          </div>
        </div>
      </section>

      <!-- ===== TESTIMONIALS ===== -->
      <section class="section" id="reviews">
        <div class="container">
          <div class="sec-head">
            <h2><span class="badge" style="background:var(--berry);"><i class="fas fa-star"></i></span> What customers say</h2>
          </div>
          <div class="quote-grid" id="quoteList"></div>
        </div>
      </section>

      <!-- ===== NEWSLETTER ===== -->
      <section class="section">
        <div class="container">
          <div class="newsletter">
            <div class="text">
              <h3>Get the weekly drop</h3>
              <p>New arrivals and deals, once a week, no spam.</p>
            </div>
            <div style="flex:1;min-width:260px;">
              <form id="newsletterForm">
                <input type="email" placeholder="you@example.com" required />
                <button class="btn btn-coral" type="submit">Subscribe</button>
              </form>
              <div id="newsletterMsg"></div>
            </div>
          </div>
        </div>
      </section>
    </main>

    <!-- ===== FOOTER ===== -->
    <footer>
      <div class="container">
        <div class="foot-grid">
          <div>
            <h5 style="font-family:'Fredoka',sans-serif;font-size:20px;">NexusShop</h5>
            <p>Curated fashion, tech and accessories, shipped fast — with a return policy that doesn't make you read fine print.</p>
          </div>
          <div>
            <h5>Shop</h5>
            <ul><li><a href="#">New arrivals</a></li><li><a href="#">Trending</a></li><li><a href="#">Deals</a></li></ul>
          </div>
          <div>
            <h5>Support</h5>
            <ul><li><a href="#">Contact</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li></ul>
          </div>
          <div>
            <h5>Company</h5>
            <ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li></ul>
          </div>
        </div>
        <div class="foot-bottom">© 2026 NexusShop. All rights reserved.</div>
      </div>
    </footer>
  </div>
</div>

<script>
  const catColors = [
    {bg:'#2FD9B9', ink:'#241E3D'}, // mint
    {bg:'#FFC93C', ink:'#241E3D'}, // sun
    {bg:'#FF6B4A', ink:'#fff'},    // coral
    {bg:'#FF4785', ink:'#fff'},    // berry
    {bg:'#241E3D', ink:'#fff'},    // ink
    {bg:'#FFDDC7', ink:'#241E3D'}, // peach
  ];
  const categories = [
    {icon:'fa-shirt', name:'Apparel'},
    {icon:'fa-shoe-prints', name:'Footwear'},
    {icon:'fa-mobile-screen', name:'Electronics'},
    {icon:'fa-gem', name:'Accessories'},
    {icon:'fa-house', name:'Home'},
    {icon:'fa-dumbbell', name:'Fitness'},
  ];
  const catRack = document.getElementById('catRack');
  categories.forEach((c,i)=>{
    const col = catColors[i % catColors.length];
    const el = document.createElement('a');
    el.className = 'cat-chip'; el.href = '#';
    el.style.background = col.bg; el.style.color = col.ink;
    el.innerHTML = `<i class="fas ${c.icon}"></i> ${c.name}`;
    catRack.appendChild(el);
  });

  const products = [
    {name:'Merino Wool Overcoat', cat:'Apparel', price:189, old:240, img:'https://images.unsplash.com/photo-1591047139829-d91aecb6caea?auto=format&fit=crop&w=700&q=80', big:true, flag:'new', flagLabel:'New'},
    {name:'Cross-body Leather Bag', cat:'Accessories', price:96, img:'https://images.unsplash.com/photo-1590874103328-eac38a683ce7?auto=format&fit=crop&w=500&q=80'},
    {name:'Wireless Earbuds Pro', cat:'Electronics', price:129, old:159, img:'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=500&q=80', flag:'sale', flagLabel:'Sale'},
    {name:'Minimalist Watch', cat:'Accessories', price:145, img:'https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=500&q=80'},
    {name:'Canvas Sneakers', cat:'Footwear', price:68, img:'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?auto=format&fit=crop&w=500&q=80'},
    {name:'Ceramic Pour-Over Set', cat:'Home', price:54, img:'https://images.unsplash.com/photo-1517705008128-361805f42e86?auto=format&fit=crop&w=500&q=80'},
    {name:'Adjustable Kettlebell', cat:'Fitness', price:89, img:'https://images.unsplash.com/photo-1517963628607-235ccdd5476c?auto=format&fit=crop&w=500&q=80'},
  ];
  const bento = document.getElementById('productBento');
  products.forEach(p=>{
    const card = document.createElement('div');
    card.className = 'p-card' + (p.big ? ' big' : '');
    card.innerHTML = `
      <div class="img-wrap">
        ${p.flag ? `<span class="flag ${p.flag}">${p.flagLabel}</span>` : ''}
        <button class="wish" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <img src="${p.img}" alt="${p.name}" loading="lazy">
      </div>
      <div class="info">
        <span class="cat-tag">${p.cat}</span>
        <h5>${p.name}</h5>
        <div class="row">
          <span class="price">$${p.price}${p.old ? `<span class="old">$${p.old}</span>` : ''}</span>
          <button class="add" aria-label="Add to bag"><i class="fas fa-plus"></i></button>
        </div>
      </div>`;
    bento.appendChild(card);
  });

  let cartCount = 0;
  const cartCountEl = document.getElementById('cartCount');
  document.addEventListener('click', (e)=>{
    const btn = e.target.closest('.add, #buyDeal');
    if(!btn) return;
    cartCount++;
    cartCountEl.textContent = cartCount;
    if(btn.classList.contains('add')){
      btn.classList.add('added');
      setTimeout(()=>btn.classList.remove('added'), 500);
    }
  });

  const quoteColors = ['#FFE8B8', '#C9F5EC', '#FFD9E6'];
  const testimonials = [
    {name:'Priya Nair', role:'Verified buyer', quote:"The coat fits exactly like the size guide promised, and it arrived two days early.", stars:5, avatar:'https://i.pravatar.cc/80?img=32'},
    {name:'Daniel Kwan', role:'Verified buyer', quote:"Ordered the earbuds during the flash deal — sound quality is well above the price point.", stars:5, avatar:'https://i.pravatar.cc/80?img=15'},
    {name:'Farah Idris', role:'Verified buyer', quote:"Customer support actually picked up the phone. Returns took three days start to finish.", stars:4, avatar:'https://i.pravatar.cc/80?img=47'},
  ];
  const quoteList = document.getElementById('quoteList');
  testimonials.forEach((t,i)=>{
    const card = document.createElement('div');
    card.className = 'quote-card';
    card.style.background = quoteColors[i % quoteColors.length];
    card.innerHTML = `
      <div class="quote-body">
        <div class="stars">${'★'.repeat(t.stars)}${'☆'.repeat(5-t.stars)}</div>
        <blockquote>“${t.quote}”</blockquote>
      </div>
      <div class="quote-who">
        <img src="${t.avatar}" alt="${t.name}">
        <div><div class="name">${t.name}</div><div class="role">${t.role}</div></div>
      </div>`;
    quoteList.appendChild(card);
  });

  // countdown
  const dealEnd = Date.now() + (1000*60*60*26);
  function tick(){
    const diff = Math.max(0, dealEnd - Date.now());
    const d = Math.floor(diff/86400000);
    const h = Math.floor((diff%86400000)/3600000);
    const m = Math.floor((diff%3600000)/60000);
    const s = Math.floor((diff%60000)/1000);
    document.getElementById('dealDays').textContent = d;
    document.getElementById('dealHours').textContent = String(h).padStart(2,'0');
    document.getElementById('dealMinutes').textContent = String(m).padStart(2,'0');
    document.getElementById('dealSeconds').textContent = String(s).padStart(2,'0');
  }
  tick(); setInterval(tick, 1000);

  document.getElementById('newsletterForm').addEventListener('submit', (e)=>{
    e.preventDefault();
    document.getElementById('newsletterMsg').textContent = "You're subscribed — check your inbox to confirm.";
    e.target.reset();
  });

  document.getElementById('shopNow').addEventListener('click', ()=>{
    document.getElementById('products').scrollIntoView({behavior:'smooth'});
  });
  document.getElementById('exploreDeals').addEventListener('click', ()=>{
    document.getElementById('deals').scrollIntoView({behavior:'smooth'});
  });
</script>
</body>
</html>
