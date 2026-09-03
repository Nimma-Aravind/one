<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>NexusShop</title>
<link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600;9..144,700&family=Archivo:wght@400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
<style>
  :root{
    --bg:#F3F0E8;
    --surface:#FFFFFF;
    --rail:#1C2541;
    --ink:#191825;
    --accent:#C98A2B;
    --accent-ink:#1C2541;
    --clay:#8B3A3A;
    --line:rgba(25,24,37,0.10);
    --muted:#68657A;
    --radius:4px;
  }
  *{margin:0;padding:0;box-sizing:border-box;}
  html{scroll-behavior:smooth;}
  body{
    font-family:'Archivo',sans-serif;
    background:var(--bg);
    color:var(--ink);
    line-height:1.5;
    -webkit-font-smoothing:antialiased;
  }
  a{color:inherit;text-decoration:none;}
  img{display:block;max-width:100%;}
  button{cursor:pointer;font-family:inherit;border:none;background:none;color:inherit;}
  h1,h2,h3,h4{font-family:'Fraunces',serif;font-weight:600;letter-spacing:-0.01em;}

  /* ===== layout shell: rail + main ===== */
  .shell{display:flex;min-height:100vh;}

  .rail{
    width:84px;flex-shrink:0;background:var(--rail);color:#EDEAE1;
    display:flex;flex-direction:column;align-items:center;
    padding:20px 0;position:sticky;top:0;height:100vh;z-index:50;
  }
  .rail .mark{
    width:40px;height:40px;border-radius:50%;background:var(--accent);
    display:grid;place-items:center;font-family:'Fraunces',serif;font-weight:700;
    font-size:17px;margin-bottom:34px;
  }
  .rail nav{display:flex;flex-direction:column;gap:6px;flex:1;align-items:center;}
  .rail nav a{
    width:52px;height:52px;border-radius:var(--radius);display:grid;place-items:center;
    font-size:17px;color:rgba(237,234,225,0.55);transition:.15s ease;position:relative;
  }
  .rail nav a span{
    position:absolute;left:64px;background:var(--ink);color:#fff;font-size:12px;
    padding:5px 10px;border-radius:3px;white-space:nowrap;opacity:0;pointer-events:none;
    transition:.15s ease;font-weight:500;
  }
  .rail nav a:hover span{opacity:1;left:70px;}
  .rail nav a:hover,.rail nav a.active{color:#fff;background:rgba(255,255,255,0.08);}
  .rail nav a.active{box-shadow:inset 3px 0 0 var(--accent);}
  .rail .foot{display:flex;flex-direction:column;gap:6px;align-items:center;}
  .rail .foot button{
    width:52px;height:52px;border-radius:var(--radius);display:grid;place-items:center;
    font-size:16px;color:rgba(237,234,225,0.55);position:relative;transition:.15s ease;
  }
  .rail .foot button:hover{color:#fff;background:rgba(255,255,255,0.08);}
  .cart-count{
    position:absolute;top:4px;right:10px;background:var(--clay);color:#fff;
    font-size:10px;font-weight:700;width:16px;height:16px;border-radius:50%;
    display:grid;place-items:center;
  }

  .main{flex:1;min-width:0;}

  /* ===== top strip ===== */
  .topstrip{
    display:flex;align-items:center;justify-content:space-between;gap:20px;
    padding:22px 40px;border-bottom:1px solid var(--line);
  }
  .mobile-toggle{display:none;width:40px;height:40px;border-radius:var(--radius);background:var(--surface);border:1px solid var(--line);}
  .search-wrap{
    display:flex;align-items:center;gap:10px;border:1px solid var(--line);
    border-radius:var(--radius);padding:10px 14px;background:var(--surface);
    max-width:380px;flex:1;
  }
  .search-wrap input{border:0;outline:none;background:transparent;flex:1;font-size:14px;}
  .search-wrap i{color:var(--muted);}
  .topstrip .right{display:flex;align-items:center;gap:18px;font-size:13px;color:var(--muted);}
  .topstrip .right strong{color:var(--ink);}

  .container{max-width:1180px;margin:0 auto;padding:0 40px;}

  /* ===== buttons ===== */
  .btn{
    display:inline-flex;align-items:center;gap:9px;padding:13px 26px;
    font-weight:600;font-size:14.5px;border-radius:var(--radius);transition:.15s ease;
    border:1px solid transparent;
  }
  .btn-accent{background:var(--accent);color:var(--accent-ink);}
  .btn-accent:hover{background:#A8721F;}
  .btn-line{border-color:var(--ink);color:var(--ink);}
  .btn-line:hover{background:var(--ink);color:#fff;}
  .btn-white{background:#fff;color:var(--ink);}
  .btn-white:hover{background:#EDEAE1;}

  /* ===== hero: split ===== */
  .hero{padding:56px 0 64px;}
  .hero-grid{display:grid;grid-template-columns:1.1fr 0.9fr;gap:48px;align-items:center;}
  .hero-copy .eyebrow{font-size:13.5px;color:var(--accent);font-weight:600;margin-bottom:14px;}
  .hero-copy h1{font-size:52px;line-height:1.05;max-width:520px;margin-bottom:18px;}
  .hero-copy p{color:var(--muted);font-size:16.5px;max-width:420px;margin-bottom:28px;line-height:1.6;}
  .hero-copy .actions{display:flex;gap:12px;}

  .hero-collage{display:grid;grid-template-columns:1fr 1fr;grid-template-rows:1fr 1fr;gap:12px;height:400px;}
  .hero-collage img{width:100%;height:100%;object-fit:cover;border-radius:var(--radius);}
  .hero-collage .a{grid-row:1/3;}

  /* ===== section header ===== */
  .section{padding:44px 0;border-top:1px solid var(--line);}
  .sec-head{display:flex;align-items:flex-end;justify-content:space-between;margin-bottom:26px;gap:16px;flex-wrap:wrap;}
  .sec-head .num{font-size:13px;color:var(--muted);font-variant-numeric:tabular-nums;}
  .sec-head h2{font-size:26px;}
  .sec-head .view-all{font-size:13.5px;font-weight:600;color:var(--accent);white-space:nowrap;}

  /* ===== categories: horizontal rack ===== */
  .cat-rack{display:flex;gap:14px;overflow-x:auto;padding-bottom:6px;}
  .cat-rack::-webkit-scrollbar{height:4px;}
  .cat-rack::-webkit-scrollbar-thumb{background:var(--line);}
  .cat-chip{
    flex:0 0 auto;display:flex;align-items:center;gap:10px;padding:13px 20px;
    background:var(--surface);border:1px solid var(--line);border-radius:999px;
    font-size:14px;font-weight:500;white-space:nowrap;transition:.15s ease;
  }
  .cat-chip i{color:var(--accent);}
  .cat-chip:hover{border-color:var(--accent);background:#F8EFDC;}

  /* ===== bento product grid ===== */
  .bento{
    display:grid;grid-template-columns:repeat(4,1fr);grid-auto-rows:220px;gap:16px;
  }
  .p-card{
    background:var(--surface);border:1px solid var(--line);border-radius:var(--radius);
    overflow:hidden;position:relative;display:flex;flex-direction:column;transition:.15s ease;
  }
  .p-card:hover{border-color:var(--ink);}
  .p-card.big{grid-column:span 2;grid-row:span 2;}
  .p-card .img-wrap{flex:1;position:relative;overflow:hidden;background:#EEECE4;}
  .p-card .img-wrap img{width:100%;height:100%;object-fit:cover;}
  .p-card .flag{
    position:absolute;top:10px;left:10px;background:var(--ink);color:#fff;
    font-size:10.5px;font-weight:700;padding:4px 10px;border-radius:2px;letter-spacing:.02em;
  }
  .p-card .flag.sale{background:var(--clay);}
  .p-card .wish{
    position:absolute;top:10px;right:10px;width:32px;height:32px;border-radius:50%;
    background:rgba(255,255,255,0.9);display:grid;place-items:center;color:var(--muted);
    font-size:14px;transition:.15s ease;
  }
  .p-card .wish:hover{color:var(--clay);}
  .p-card .info{padding:14px 16px 16px;display:flex;flex-direction:column;gap:5px;}
  .p-card .cat-tag{font-size:11px;color:var(--muted);}
  .p-card h5{font-size:15px;font-weight:600;line-height:1.3;font-family:'Archivo',sans-serif;}
  .p-card.big h5{font-size:19px;}
  .p-card .row{display:flex;align-items:center;justify-content:space-between;margin-top:4px;}
  .p-card .price{font-weight:700;font-size:16px;}
  .p-card .price .old{font-weight:400;color:var(--muted);text-decoration:line-through;font-size:13px;margin-left:6px;}
  .p-card .add{
    width:34px;height:34px;border-radius:50%;background:var(--ink);color:#fff;
    display:grid;place-items:center;font-size:13px;transition:.15s ease;flex-shrink:0;
  }
  .p-card .add:hover{background:var(--accent);}
  .p-card .add.added{background:var(--accent);}

  /* ===== deal: stat rail layout ===== */
  .deal{
    display:grid;grid-template-columns:1fr 300px;gap:0;background:var(--rail);color:#EDEAE1;
    border-radius:var(--radius);overflow:hidden;
  }
  .deal-main{padding:40px 44px;display:flex;gap:36px;align-items:center;}
  .deal-main img{width:190px;height:190px;object-fit:cover;border-radius:var(--radius);flex-shrink:0;}
  .deal-tag{display:inline-block;color:var(--clay);font-size:12.5px;font-weight:700;letter-spacing:.03em;margin-bottom:10px;}
  .deal-main h3{font-size:28px;color:#fff;margin-bottom:6px;}
  .deal-main p{color:rgba(237,234,225,0.65);font-size:14.5px;max-width:340px;margin-bottom:16px;}
  .deal-main .price-big{font-size:28px;font-weight:700;color:#fff;font-family:'Fraunces',serif;}
  .deal-main .price-big .old{font-size:17px;font-weight:400;color:rgba(237,234,225,0.4);text-decoration:line-through;margin-left:8px;}
  .deal-side{background:rgba(255,255,255,0.05);padding:34px 30px;display:flex;flex-direction:column;justify-content:center;gap:18px;}
  .deal-side .stock{font-size:13.5px;color:rgba(237,234,225,0.65);}
  .deal-side .stock strong{color:var(--clay);}
  .timer-row{display:flex;gap:8px;}
  .timer-box{background:rgba(255,255,255,0.08);padding:9px 0;border-radius:3px;text-align:center;flex:1;}
  .timer-box .n{font-size:19px;font-weight:700;font-family:'Fraunces',serif;}
  .timer-box .l{font-size:9px;color:rgba(237,234,225,0.5);letter-spacing:.04em;}

  /* ===== testimonials: stacked list ===== */
  .quote-list{display:flex;flex-direction:column;}
  .quote-row{
    display:grid;grid-template-columns:220px 1fr;gap:32px;padding:26px 0;
    border-bottom:1px solid var(--line);
  }
  .quote-row:first-child{border-top:1px solid var(--line);}
  .quote-who{display:flex;gap:12px;align-items:center;}
  .quote-who img{width:44px;height:44px;border-radius:50%;object-fit:cover;background:#EEECE4;}
  .quote-who .name{font-weight:600;font-size:14px;}
  .quote-who .role{font-size:12.5px;color:var(--muted);}
  .quote-body blockquote{font-size:16.5px;line-height:1.55;font-family:'Fraunces',serif;font-weight:400;}
  .quote-body .stars{color:var(--clay);font-size:13px;margin-top:8px;}

  /* ===== newsletter ===== */
  .newsletter{
    display:flex;align-items:center;justify-content:space-between;gap:30px;
    background:var(--surface);border:1px solid var(--line);border-radius:var(--radius);
    padding:34px 40px;flex-wrap:wrap;
  }
  .newsletter h3{font-size:22px;margin-bottom:3px;}
  .newsletter p{color:var(--muted);font-size:14.5px;}
  .newsletter form{display:flex;gap:10px;flex:1;max-width:420px;min-width:260px;}
  .newsletter form input{
    flex:1;padding:13px 16px;border:1px solid var(--line);border-radius:var(--radius);
    font-size:14px;outline:none;
  }
  .newsletter form input:focus{border-color:var(--accent);}
  #newsletterMsg{margin-top:8px;font-size:13.5px;color:var(--accent);width:100%;}

  /* ===== footer ===== */
  footer{padding:36px 0 26px;border-top:1px solid var(--line);margin-top:8px;}
  .foot-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:36px;margin-bottom:22px;}
  .foot-grid h5{font-size:13.5px;font-weight:700;margin-bottom:10px;}
  .foot-grid p{color:var(--muted);font-size:13.5px;max-width:260px;line-height:1.6;}
  .foot-grid ul{list-style:none;display:flex;flex-direction:column;gap:6px;}
  .foot-grid ul li a{color:var(--muted);font-size:13.5px;}
  .foot-grid ul li a:hover{color:var(--accent);}
  .foot-bottom{text-align:center;padding-top:16px;border-top:1px solid var(--line);color:var(--muted);font-size:12.5px;}

  /* ===== responsive ===== */
  @media (max-width:1080px){
    .bento{grid-template-columns:repeat(3,1fr);}
    .deal{grid-template-columns:1fr;}
  }
  @media (max-width:860px){
    .rail{position:fixed;bottom:0;top:auto;left:0;right:0;width:100%;height:64px;flex-direction:row;padding:0 10px;z-index:100;}
    .rail .mark{display:none;}
    .rail nav{flex-direction:row;flex:1;justify-content:space-around;}
    .rail nav a span{display:none;}
    .rail .foot{flex-direction:row;}
    body{padding-bottom:64px;}
    .container{padding:0 20px;}
    .topstrip{padding:16px 20px;}
    .hero-grid{grid-template-columns:1fr;}
    .hero-collage{height:280px;order:-1;}
    .hero-copy h1{font-size:36px;}
    .bento{grid-template-columns:repeat(2,1fr);grid-auto-rows:190px;}
    .p-card.big{grid-column:span 2;grid-row:span 1;}
    .deal-main{flex-direction:column;text-align:center;padding:30px 24px;}
    .quote-row{grid-template-columns:1fr;gap:10px;}
    .foot-grid{grid-template-columns:1fr 1fr;}
  }
  @media (max-width:480px){
    .bento{grid-template-columns:1fr 1fr;grid-auto-rows:170px;}
    .foot-grid{grid-template-columns:1fr;}
    .newsletter{flex-direction:column;align-items:flex-start;}
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
        <span><i class="fas fa-truck"></i> Free shipping over $50</span>
        <span><strong>12</strong> items on sale today</span>
      </div>
    </div>

    <main>
      <!-- ===== HERO: split ===== -->
      <section class="hero">
        <div class="container hero-grid">
          <div class="hero-copy">
            <div class="eyebrow">New collection · 2026</div>
            <h1>Premium essentials, chosen with care</h1>
            <p>Fashion, tech and accessories curated for everyday use. Free shipping on your first order, and deals refreshed weekly.</p>
            <div class="actions">
              <button class="btn btn-accent" id="shopNow"><i class="fas fa-arrow-right"></i> Shop the collection</button>
              <button class="btn btn-line" id="exploreDeals"><i class="fas fa-clock"></i> See today's deals</button>
            </div>
          </div>
          <div class="hero-collage">
            <img class="a" src="https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=700&q=80" alt="Folded knitwear" loading="lazy">
            <img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=500&q=80" alt="Wristwatch detail" loading="lazy">
            <img src="https://images.unsplash.com/photo-1491553895911-0055eca6402d?auto=format&fit=crop&w=500&q=80" alt="Leather bag" loading="lazy">
          </div>
        </div>
      </section>

      <!-- ===== CATEGORIES: rack ===== -->
      <section class="section" id="categories">
        <div class="container">
          <div class="sec-head">
            <div><span class="num">01</span> <h2 style="display:inline">Browse by category</h2></div>
            <a href="#" class="view-all">All categories →</a>
          </div>
          <div class="cat-rack" id="catRack"></div>
        </div>
      </section>

      <!-- ===== PRODUCTS: bento ===== -->
      <section class="section" id="products">
        <div class="container">
          <div class="sec-head">
            <div><span class="num">02</span> <h2 style="display:inline">Trending now</h2></div>
            <a href="#" class="view-all">View all →</a>
          </div>
          <div class="bento" id="productBento"></div>
        </div>
      </section>

      <!-- ===== DEAL: stat rail ===== -->
      <section class="section" id="deals">
        <div class="container">
          <div class="sec-head">
            <div><span class="num">03</span> <h2 style="display:inline">Flash deal</h2></div>
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

      <!-- ===== TESTIMONIALS: stacked ===== -->
      <section class="section" id="reviews">
        <div class="container">
          <div class="sec-head">
            <div><span class="num">04</span> <h2 style="display:inline">What customers say</h2></div>
          </div>
          <div class="quote-list" id="quoteList"></div>
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
                <button class="btn btn-accent" type="submit">Subscribe</button>
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
            <h5 style="font-family:'Fraunces',serif;font-size:19px;">NexusShop</h5>
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
  const categories = [
    {icon:'fa-shirt', name:'Apparel'},
    {icon:'fa-shoe-prints', name:'Footwear'},
    {icon:'fa-mobile-screen', name:'Electronics'},
    {icon:'fa-gem', name:'Accessories'},
    {icon:'fa-house', name:'Home'},
    {icon:'fa-dumbbell', name:'Fitness'},
  ];
  const catRack = document.getElementById('catRack');
  categories.forEach(c=>{
    const el = document.createElement('a');
    el.className = 'cat-chip'; el.href = '#';
    el.innerHTML = `<i class="fas ${c.icon}"></i> ${c.name}`;
    catRack.appendChild(el);
  });

  const products = [
    {name:'Merino Wool Overcoat', cat:'Apparel', price:189, old:240, img:'https://images.unsplash.com/photo-1591047139829-d91aecb6caea?auto=format&fit=crop&w=700&q=80', big:true, flag:'New'},
    {name:'Cross-body Leather Bag', cat:'Accessories', price:96, img:'https://images.unsplash.com/photo-1590874103328-eac38a683ce7?auto=format&fit=crop&w=500&q=80'},
    {name:'Wireless Earbuds Pro', cat:'Electronics', price:129, old:159, img:'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=500&q=80', flag:'Sale'},
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
        ${p.flag ? `<span class="flag${p.flag==='Sale'?' sale':''}">${p.flag}</span>` : ''}
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
      setTimeout(()=>btn.classList.remove('added'), 900);
    }
  });

  const testimonials = [
    {name:'Priya Nair', role:'Verified buyer', quote:"The coat fits exactly like the size guide promised, and it arrived two days early.", stars:5, avatar:'https://i.pravatar.cc/80?img=32'},
    {name:'Daniel Kwan', role:'Verified buyer', quote:"Ordered the earbuds during the flash deal — sound quality is well above the price point.", stars:5, avatar:'https://i.pravatar.cc/80?img=15'},
    {name:'Farah Idris', role:'Verified buyer', quote:"Customer support actually picked up the phone. Returns took three days start to finish.", stars:4, avatar:'https://i.pravatar.cc/80?img=47'},
  ];
  const quoteList = document.getElementById('quoteList');
  testimonials.forEach(t=>{
    const row = document.createElement('div');
    row.className = 'quote-row';
    row.innerHTML = `
      <div class="quote-who">
        <img src="${t.avatar}" alt="${t.name}">
        <div><div class="name">${t.name}</div><div class="role">${t.role}</div></div>
      </div>
      <div class="quote-body">
        <blockquote>“${t.quote}”</blockquote>
        <div class="stars">${'★'.repeat(t.stars)}${'☆'.repeat(5-t.stars)}</div>
      </div>`;
    quoteList.appendChild(row);
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
