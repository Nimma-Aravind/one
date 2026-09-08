<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Nexus General Goods — Order Catalog</title>
<link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600;9..144,700&family=Work+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
<style>
  :root{
    --ink:#1F2A24;
    --ink-soft:#3A483F;
    --paper:#E7E2D2;
    --paper-dim:#DDD7C4;
    --paper-line:rgba(31,42,36,0.16);
    --rust:#A63D2F;
    --rust-dark:#832F24;
    --mustard:#C99A3A;
    --sage:#7C8A6E;
    --cream-white:#F5F2E8;
    --muted:#6B6555;
    --r-card:2px;
  }
  *{margin:0;padding:0;box-sizing:border-box;}
  html{scroll-behavior:smooth;}
  body{
    font-family:'Work Sans',sans-serif;
    background:var(--paper);
    color:var(--ink);
    line-height:1.5;
    -webkit-font-smoothing:antialiased;
    font-variant-numeric:tabular-nums;
  }
  a{color:inherit;text-decoration:none;}
  img{display:block;max-width:100%;}
  button{cursor:pointer;font-family:inherit;border:none;background:none;color:inherit;}
  h1,h2,h3,h4{font-family:'Fraunces',serif;font-weight:600;letter-spacing:-0.01em;}
  ::selection{background:var(--mustard);color:var(--ink);}

  @media (prefers-reduced-motion: reduce){
    *{animation-duration:0.001s !important;transition-duration:0.001s !important;}
  }

  .container{max-width:1180px;margin:0 auto;padding:0 32px;}

  /* ===== ledger header ===== */
  .ledger-bar{
    background:var(--ink);color:var(--paper);
    font-size:12.5px;font-weight:600;
    padding:9px 0;
  }
  .ledger-bar .container{display:flex;justify-content:space-between;align-items:center;flex-wrap:wrap;gap:6px;}
  .ledger-bar .l-item{display:flex;align-items:center;gap:7px;color:rgba(231,226,210,0.75);}
  .ledger-bar .l-item i{color:var(--mustard);font-size:11px;}

  header.masthead{
    background:var(--paper);border-bottom:3px solid var(--ink);
    padding:22px 0 18px;position:sticky;top:0;z-index:50;
  }
  .masthead .container{display:flex;align-items:center;justify-content:space-between;gap:24px;}
  .brand{display:flex;align-items:center;gap:14px;}
  .brand .seal{
    width:52px;height:52px;border:2.5px solid var(--ink);border-radius:50%;
    display:grid;place-items:center;font-family:'Fraunces',serif;font-weight:700;
    font-size:20px;flex-shrink:0;position:relative;
  }
  .brand .seal::before{
    content:'';position:absolute;inset:5px;border:1px solid var(--ink);border-radius:50%;
  }
  .brand-text h1{font-size:23px;line-height:1;}
  .brand-text .est{font-size:11px;color:var(--muted);font-weight:600;letter-spacing:0.03em;margin-top:3px;}

  nav.main-nav{display:flex;gap:2px;}
  nav.main-nav a{
    padding:9px 16px;font-size:14px;font-weight:600;color:var(--ink-soft);
    border-bottom:2px solid transparent;transition:.15s ease;
  }
  nav.main-nav a:hover, nav.main-nav a.active{color:var(--rust);border-bottom-color:var(--rust);}

  .head-actions{display:flex;align-items:center;gap:16px;}
  .search-wrap{
    display:flex;align-items:center;gap:9px;border-bottom:2px solid var(--ink);
    padding:6px 2px;
  }
  .search-wrap input{border:0;outline:none;background:transparent;width:150px;font-size:14px;font-family:'Work Sans',sans-serif;color:var(--ink);}
  .search-wrap input::placeholder{color:var(--muted);}
  .icon-btn{position:relative;font-size:17px;color:var(--ink);width:34px;height:34px;display:grid;place-items:center;}
  .icon-btn .badge-count{
    position:absolute;top:-3px;right:-3px;background:var(--rust);color:var(--cream-white);
    font-size:10px;font-weight:700;width:17px;height:17px;border-radius:50%;
    display:grid;place-items:center;
  }
  .mobile-toggle{display:none;font-size:20px;}

  /* ===== buttons ===== */
  .btn{
    display:inline-flex;align-items:center;gap:9px;padding:13px 26px;
    font-weight:700;font-size:14px;transition:.15s ease;
    border:2px solid var(--ink);font-family:'Work Sans',sans-serif;letter-spacing:0.01em;
  }
  .btn-fill{background:var(--ink);color:var(--paper);}
  .btn-fill:hover{background:var(--rust);border-color:var(--rust);}
  .btn-outline{background:transparent;color:var(--ink);}
  .btn-outline:hover{background:var(--ink);color:var(--paper);}
  .btn-rust{background:var(--rust);color:var(--cream-white);border-color:var(--rust);}
  .btn-rust:hover{background:var(--rust-dark);border-color:var(--rust-dark);}

  /* ===== hero / cover sheet ===== */
  .cover{padding:64px 0 56px;border-bottom:3px solid var(--ink);position:relative;overflow:hidden;}
  .cover-grid{display:grid;grid-template-columns:1fr 420px;gap:56px;align-items:center;}
  .cover-copy .index-no{
    font-size:13px;font-weight:700;color:var(--rust);letter-spacing:0.02em;margin-bottom:14px;
    display:flex;align-items:center;gap:10px;
  }
  .cover-copy .index-no::after{content:'';flex:1;height:1px;background:var(--paper-line);max-width:90px;}
  .cover-copy h2{font-size:52px;line-height:1.05;max-width:520px;margin-bottom:18px;}
  .cover-copy p{color:var(--ink-soft);font-size:16.5px;max-width:430px;margin-bottom:30px;font-weight:400;}
  .cover-copy .actions{display:flex;gap:14px;flex-wrap:wrap;}

  .cover-plate{
    position:relative;border:3px solid var(--ink);background:var(--cream-white);
    padding:14px;
  }
  .cover-plate img{width:100%;height:340px;object-fit:cover;filter:grayscale(0.12) contrast(1.05);}
  .cover-plate .plate-cap{
    display:flex;justify-content:space-between;align-items:center;
    padding-top:12px;font-size:12px;font-weight:700;color:var(--ink-soft);
  }
  .stamp{
    position:absolute;top:-18px;right:-18px;width:96px;height:96px;border-radius:50%;
    border:3px solid var(--rust);color:var(--rust);display:grid;place-items:center;
    text-align:center;font-family:'Fraunces',serif;font-weight:700;font-size:12.5px;line-height:1.25;
    transform:rotate(-14deg);background:var(--paper);
    animation:stamp-in .5s cubic-bezier(.2,1.4,.4,1) .15s both;
  }
  @keyframes stamp-in{
    0%{transform:rotate(-14deg) scale(2.4);opacity:0;}
    70%{opacity:1;}
    100%{transform:rotate(-14deg) scale(1);opacity:1;}
  }

  /* ===== section header ===== */
  .section{padding:56px 0;border-bottom:1px solid var(--paper-line);}
  .section:last-of-type{border-bottom:none;}
  .sec-head{
    display:flex;align-items:baseline;justify-content:space-between;margin-bottom:30px;gap:16px;flex-wrap:wrap;
    border-bottom:2px solid var(--ink);padding-bottom:14px;
  }
  .sec-head .sec-title{display:flex;align-items:baseline;gap:12px;}
  .sec-head .sec-num{font-size:13px;font-weight:700;color:var(--rust);}
  .sec-head h3{font-size:26px;}
  .sec-head .view-all{font-size:13.5px;font-weight:700;color:var(--ink-soft);border-bottom:1px solid var(--ink-soft);padding-bottom:2px;}
  .sec-head .view-all:hover{color:var(--rust);border-color:var(--rust);}

  /* ===== category index ===== */
  .cat-index{display:grid;grid-template-columns:repeat(6,1fr);gap:0;border-top:1px solid var(--paper-line);border-left:1px solid var(--paper-line);}
  .cat-tile{
    border-right:1px solid var(--paper-line);border-bottom:1px solid var(--paper-line);
    padding:22px 16px;display:flex;flex-direction:column;gap:12px;align-items:flex-start;
    transition:.15s ease;
  }
  .cat-tile:hover{background:var(--ink);color:var(--paper);}
  .cat-tile:hover .cat-tile-no{color:var(--mustard);}
  .cat-tile i{font-size:20px;}
  .cat-tile-no{font-size:11.5px;font-weight:700;color:var(--rust);}
  .cat-tile-name{font-size:14.5px;font-weight:600;}

  /* ===== product index cards ===== */
  .product-index{display:grid;grid-template-columns:repeat(4,1fr);gap:0;border-top:1px solid var(--ink);border-left:1px solid var(--ink);}
  .p-card{
    border-right:1px solid var(--ink);border-bottom:1px solid var(--ink);
    background:var(--paper);display:flex;flex-direction:column;position:relative;
  }
  .p-card .p-img{aspect-ratio:1/1;overflow:hidden;background:var(--paper-dim);position:relative;border-bottom:1px dashed var(--paper-line);}
  .p-card .p-img img{width:100%;height:100%;object-fit:cover;transition:transform .3s ease;}
  .p-card:hover .p-img img{transform:scale(1.04);}
  .p-card .p-flag{
    position:absolute;top:10px;left:0;background:var(--rust);color:var(--cream-white);
    font-size:10.5px;font-weight:700;padding:5px 12px 5px 9px;letter-spacing:0.02em;
  }
  .p-card .p-flag.new{background:var(--sage);}
  .p-card .wish{
    position:absolute;top:8px;right:8px;width:30px;height:30px;border-radius:50%;
    background:var(--cream-white);display:grid;place-items:center;color:var(--ink);
    font-size:13px;border:1px solid var(--paper-line);
  }
  .p-card .wish:hover{color:var(--rust);}
  .p-card .p-info{padding:16px 16px 18px;display:flex;flex-direction:column;gap:6px;flex:1;}
  .p-card .p-no{font-size:11px;font-weight:700;color:var(--muted);}
  .p-card .p-name{font-size:15px;font-weight:600;font-family:'Fraunces',serif;line-height:1.3;flex:1;}
  .p-card .p-row{display:flex;align-items:flex-end;justify-content:space-between;margin-top:8px;padding-top:10px;border-top:1px dashed var(--paper-line);}
  .p-card .p-price{font-weight:700;font-size:16px;font-variant-numeric:tabular-nums;}
  .p-card .p-price .old{font-weight:600;color:var(--muted);text-decoration:line-through;font-size:12.5px;margin-left:6px;}
  .p-card .add{
    width:32px;height:32px;border:1.5px solid var(--ink);display:grid;place-items:center;
    font-size:12px;transition:.15s ease;flex-shrink:0;
  }
  .p-card .add:hover{background:var(--ink);color:var(--paper);}
  .p-card .add.added{background:var(--sage);border-color:var(--sage);color:var(--cream-white);animation:pop .35s ease;}
  @keyframes pop{0%{transform:scale(1);}45%{transform:scale(1.3);}100%{transform:scale(1);}}

  /* ===== clearance ticket (deal) ===== */
  .ticket{
    background:var(--ink);color:var(--paper);border:3px solid var(--ink);
    display:grid;grid-template-columns:1fr 300px;position:relative;
  }
  .ticket-main{padding:40px 44px;display:flex;gap:36px;align-items:center;}
  .ticket-main .t-img-wrap{
    flex-shrink:0;border:2px solid var(--paper);padding:8px;background:var(--ink);
  }
  .ticket-main img{width:170px;height:170px;object-fit:cover;}
  .ticket-tag{
    display:inline-flex;align-items:center;gap:8px;font-size:12px;font-weight:700;
    color:var(--mustard);margin-bottom:12px;letter-spacing:0.02em;
  }
  .ticket-tag::before{content:'';width:7px;height:7px;background:var(--mustard);border-radius:50%;}
  .ticket-main h4{font-size:29px;color:var(--paper);margin-bottom:8px;}
  .ticket-main p{color:rgba(231,226,210,0.72);font-size:14px;max-width:320px;margin-bottom:16px;}
  .ticket-main .t-price{font-size:28px;font-weight:700;color:var(--paper);font-family:'Fraunces',serif;}
  .ticket-main .t-price .old{font-size:16px;font-weight:500;color:rgba(231,226,210,0.5);text-decoration:line-through;margin-left:8px;font-family:'Work Sans',sans-serif;}

  .ticket-side{
    border-left:2px dashed rgba(231,226,210,0.35);padding:34px 30px;
    display:flex;flex-direction:column;justify-content:center;gap:18px;position:relative;
  }
  .ticket-side::before, .ticket-side::after{
    content:'';position:absolute;left:-11px;width:22px;height:22px;border-radius:50%;background:var(--paper);
  }
  .ticket-side::before{top:-11px;}
  .ticket-side::after{bottom:-11px;}
  .ticket-side .stock{font-size:12.5px;color:rgba(231,226,210,0.8);font-weight:600;}
  .ticket-side .stock strong{color:var(--mustard);}
  .timer-row{display:flex;gap:6px;}
  .timer-box{background:rgba(231,226,210,0.1);padding:9px 0;text-align:center;flex:1;border:1px solid rgba(231,226,210,0.25);}
  .timer-box .n{font-size:18px;font-weight:600;font-family:'Fraunces',serif;color:var(--paper);}
  .timer-box .l{font-size:9px;color:rgba(231,226,210,0.6);font-weight:700;}

  /* ===== order slips (testimonials) ===== */
  .slip-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:22px;}
  .slip{
    background:var(--cream-white);border:1px solid var(--ink);padding:24px 24px 20px;
    position:relative;transform:rotate(var(--tilt,0deg));
  }
  .slip:nth-child(1){--tilt:-0.6deg;}
  .slip:nth-child(2){--tilt:0.4deg;}
  .slip:nth-child(3){--tilt:-0.3deg;}
  .slip::before{
    content:'';position:absolute;top:-7px;left:26px;width:26px;height:14px;
    background:rgba(166,61,47,0.55);border-radius:2px;transform:rotate(-3deg);
  }
  .slip-stars{color:var(--mustard);font-size:13px;margin-bottom:12px;letter-spacing:2px;}
  .slip blockquote{font-size:15.5px;line-height:1.55;font-family:'Fraunces',serif;font-weight:500;margin-bottom:18px;color:var(--ink);}
  .slip-who{display:flex;justify-content:space-between;align-items:center;border-top:1px dashed var(--paper-line);padding-top:12px;}
  .slip-who .name{font-weight:700;font-size:13.5px;}
  .slip-who .role{font-size:11.5px;color:var(--muted);font-weight:600;}
  .slip-who .order-no{font-size:11px;color:var(--rust);font-weight:700;}

  /* ===== subscribe form ===== */
  .subscribe{
    display:flex;align-items:center;justify-content:space-between;gap:30px;
    background:var(--cream-white);border:2px solid var(--ink);
    padding:36px 40px;flex-wrap:wrap;
  }
  .subscribe h4{font-size:22px;margin-bottom:4px;}
  .subscribe p{color:var(--ink-soft);font-size:14px;}
  .subscribe form{display:flex;gap:0;flex:1;max-width:420px;min-width:260px;border-bottom:2px solid var(--ink);}
  .subscribe form input{
    flex:1;padding:13px 4px;border:none;outline:none;background:transparent;
    font-size:14px;font-family:'Work Sans',sans-serif;color:var(--ink);
  }
  .subscribe form input::placeholder{color:var(--muted);}
  .subscribe form button{font-weight:700;font-size:13.5px;padding:0 6px;color:var(--rust);}
  .subscribe form button:hover{color:var(--rust-dark);}
  #newsletterMsg{margin-top:10px;font-size:13px;color:var(--sage);width:100%;font-weight:600;}

  /* ===== footer ===== */
  footer{background:var(--ink);color:var(--paper);padding:48px 0 22px;}
  .foot-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:36px;margin-bottom:30px;}
  .foot-grid h1{font-size:22px;color:var(--paper);margin-bottom:10px;}
  .foot-grid h5{font-size:13px;font-weight:700;margin-bottom:14px;color:var(--mustard);letter-spacing:0.02em;}
  .foot-grid p{color:rgba(231,226,210,0.65);font-size:13.5px;max-width:280px;line-height:1.6;}
  .foot-grid ul{list-style:none;display:flex;flex-direction:column;gap:9px;}
  .foot-grid ul li a{color:rgba(231,226,210,0.7);font-size:13.5px;}
  .foot-grid ul li a:hover{color:var(--mustard);}
  .foot-bottom{text-align:center;padding-top:18px;border-top:1px solid rgba(231,226,210,0.2);color:rgba(231,226,210,0.55);font-size:12px;}

  /* ===== responsive ===== */
  @media (max-width:1080px){
    .product-index{grid-template-columns:repeat(3,1fr);}
    .cat-index{grid-template-columns:repeat(3,1fr);}
    .ticket{grid-template-columns:1fr;}
    .slip-grid{grid-template-columns:1fr 1fr;}
  }
  @media (max-width:860px){
    nav.main-nav{display:none;}
    .mobile-toggle{display:block;}
    .search-wrap input{width:100px;}
    .cover-grid{grid-template-columns:1fr;}
    .cover-plate{order:-1;}
    .cover-copy h2{font-size:38px;}
    .product-index{grid-template-columns:repeat(2,1fr);}
    .ticket-main{flex-direction:column;text-align:center;padding:32px 26px;}
    .ticket-main p{margin-left:auto;margin-right:auto;}
    .slip-grid{grid-template-columns:1fr;}
    .foot-grid{grid-template-columns:1fr 1fr;}
    .subscribe{flex-direction:column;align-items:flex-start;}
  }
  @media (max-width:480px){
    .cat-index{grid-template-columns:repeat(2,1fr);}
    .product-index{grid-template-columns:1fr;}
    .foot-grid{grid-template-columns:1fr;}
    .ledger-bar .l-item:nth-child(2){display:none;}
  }

  a:focus-visible, button:focus-visible, input:focus-visible{
    outline:2px solid var(--rust);outline-offset:2px;
  }
</style>
</head>
<body>

  <!-- ===== LEDGER BAR ===== -->
  <div class="ledger-bar">
    <div class="container">
      <span class="l-item"><i class="fas fa-truck"></i> Free shipping over $50</span>
      <span class="l-item"><i class="fas fa-bolt"></i> 12 items marked down today</span>
      <span class="l-item"><i class="fas fa-rotate-left"></i> Returns accepted, no fine print</span>
    </div>
  </div>

  <!-- ===== MASTHEAD ===== -->
  <header class="masthead">
    <div class="container">
      <div class="brand">
        <div class="seal">N</div>
        <div class="brand-text">
          <h1>Nexus General Goods</h1>
          <div class="est">Catalog no. 26 · Est. season 2026</div>
        </div>
      </div>
      <nav class="main-nav" aria-label="Main navigation">
        <a href="#" class="active">Home</a>
        <a href="#categories">Departments</a>
        <a href="#products">Index</a>
        <a href="#deals">Clearance</a>
        <a href="#reviews">Order slips</a>
      </nav>
      <div class="head-actions">
        <div class="search-wrap" role="search">
          <i class="fas fa-search" style="font-size:13px;color:var(--muted);"></i>
          <input type="search" placeholder="Search the index…" aria-label="Search" />
        </div>
        <button class="icon-btn" title="Account"><i class="far fa-circle-user"></i></button>
        <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
        <button class="icon-btn" id="cartBtn" title="Order bag"><i class="fas fa-bag-shopping"></i><span class="badge-count" id="cartCount">0</span></button>
        <button class="mobile-toggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
      </div>
    </div>
  </header>

  <main>
    <!-- ===== COVER SHEET (hero) ===== -->
    <section class="cover">
      <div class="container cover-grid">
        <div class="cover-copy">
          <div class="index-no">Volume II — Spring goods</div>
          <h2>Everyday essentials, listed plainly and priced fair</h2>
          <p>Apparel, tech, and home goods, catalogued by department. No markdowns dressed up as discoveries — just what's in stock, and what it costs.</p>
          <div class="actions">
            <button class="btn btn-fill" id="shopNow"><i class="fas fa-list"></i> Browse the index</button>
            <button class="btn btn-outline" id="exploreDeals"><i class="fas fa-tag"></i> Today's clearance</button>
          </div>
        </div>
        <div class="cover-plate">
          <div class="stamp">Handpicked<br>lot</div>
          <img src="https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=700&q=80" alt="Folded knitwear on a shelf">
          <div class="plate-cap"><span>Fig. 1 — Merino overcoat</span><span>No. 014</span></div>
        </div>
      </div>
    </section>

    <!-- ===== DEPARTMENTS (categories) ===== -->
    <section class="section" id="categories">
      <div class="container">
        <div class="sec-head">
          <div class="sec-title"><span class="sec-num">01</span><h3>Departments</h3></div>
          <a href="#" class="view-all">Full directory</a>
        </div>
        <div class="cat-index" id="catIndex"></div>
      </div>
    </section>

    <!-- ===== PRODUCT INDEX ===== -->
    <section class="section" id="products">
      <div class="container">
        <div class="sec-head">
          <div class="sec-title"><span class="sec-num">02</span><h3>This week's index</h3></div>
          <a href="#" class="view-all">Full catalog</a>
        </div>
        <div class="product-index" id="productIndex"></div>
      </div>
    </section>

    <!-- ===== CLEARANCE TICKET (deal) ===== -->
    <section class="section" id="deals">
      <div class="container">
        <div class="sec-head">
          <div class="sec-title"><span class="sec-num">03</span><h3>Clearance ticket</h3></div>
        </div>
        <div class="ticket">
          <div class="ticket-main">
            <div class="t-img-wrap">
              <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=500&q=80" alt="MacBook Air M2">
            </div>
            <div>
              <span class="ticket-tag">Marked down today</span>
              <h4>MacBook Air, M2</h4>
              <p>Thin, light and quietly powerful — built for a desk that folds into a bag at the end of the day.</p>
              <div class="t-price">$999 <span class="old">$1,199</span></div>
            </div>
          </div>
          <div class="ticket-side">
            <p class="stock">Only <strong>12</strong> left on the shelf</p>
            <div class="timer-row" id="dealTimer">
              <div class="timer-box"><div class="n" id="dealDays">0</div><div class="l">days</div></div>
              <div class="timer-box"><div class="n" id="dealHours">00</div><div class="l">hrs</div></div>
              <div class="timer-box"><div class="n" id="dealMinutes">00</div><div class="l">min</div></div>
              <div class="timer-box"><div class="n" id="dealSeconds">00</div><div class="l">sec</div></div>
            </div>
            <button class="btn btn-rust" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to bag</button>
          </div>
        </div>
      </div>
    </section>

    <!-- ===== ORDER SLIPS (testimonials) ===== -->
    <section class="section" id="reviews">
      <div class="container">
        <div class="sec-head">
          <div class="sec-title"><span class="sec-num">04</span><h3>Order slips</h3></div>
        </div>
        <div class="slip-grid" id="slipList"></div>
      </div>
    </section>

    <!-- ===== SUBSCRIBE ===== -->
    <section class="section" style="border-bottom:none;">
      <div class="container">
        <div class="subscribe">
          <div class="text">
            <h4>Join the mailing list</h4>
            <p>One dispatch a week — new stock and clearance, nothing else.</p>
          </div>
          <div style="flex:1;min-width:260px;">
            <form id="newsletterForm">
              <input type="email" placeholder="you@example.com" required />
              <button type="submit">Subscribe →</button>
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
          <h1>Nexus General Goods</h1>
          <p>Fashion, tech, and home goods, shipped fast — with a return policy that doesn't need a lawyer to read.</p>
        </div>
        <div>
          <h5>Shop</h5>
          <ul><li><a href="#">New arrivals</a></li><li><a href="#">This week's index</a></li><li><a href="#">Clearance</a></li></ul>
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
      <div class="foot-bottom">© 2026 Nexus General Goods. All rights reserved.</div>
    </div>
  </footer>

<script>
  const departments = [
    {icon:'fa-shirt', name:'Apparel'},
    {icon:'fa-shoe-prints', name:'Footwear'},
    {icon:'fa-mobile-screen', name:'Electronics'},
    {icon:'fa-gem', name:'Accessories'},
    {icon:'fa-house', name:'Home'},
    {icon:'fa-dumbbell', name:'Fitness'},
  ];
  const catIndex = document.getElementById('catIndex');
  departments.forEach((c,i)=>{
    const el = document.createElement('a');
    el.className = 'cat-tile'; el.href = '#';
    el.innerHTML = `<i class="fas ${c.icon}"></i><span class="cat-tile-no">Dept. ${String(i+1).padStart(2,'0')}</span><span class="cat-tile-name">${c.name}</span>`;
    catIndex.appendChild(el);
  });

  const products = [
    {no:'014', name:'Merino Wool Overcoat', price:189, old:240, img:'https://images.unsplash.com/photo-1591047139829-d91aecb6caea?auto=format&fit=crop&w=700&q=80', flag:'new', flagLabel:'New stock'},
    {no:'027', name:'Cross-body Leather Bag', price:96, img:'https://images.unsplash.com/photo-1590874103328-eac38a683ce7?auto=format&fit=crop&w=500&q=80'},
    {no:'031', name:'Wireless Earbuds Pro', price:129, old:159, img:'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=500&q=80', flag:'sale', flagLabel:'Marked down'},
    {no:'042', name:'Minimalist Watch', price:145, img:'https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=500&q=80'},
    {no:'056', name:'Canvas Sneakers', price:68, img:'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?auto=format&fit=crop&w=500&q=80'},
    {no:'063', name:'Ceramic Pour-Over Set', price:54, img:'https://images.unsplash.com/photo-1517705008128-361805f42e86?auto=format&fit=crop&w=500&q=80'},
    {no:'071', name:'Adjustable Kettlebell', price:89, img:'https://images.unsplash.com/photo-1517963628607-235ccdd5476c?auto=format&fit=crop&w=500&q=80'},
    {no:'078', name:'Wool Scarf, Charcoal', price:42, img:'https://images.unsplash.com/photo-1520903920243-9c5d3f2b2c8b?auto=format&fit=crop&w=500&q=80'},
  ];
  const productIndex = document.getElementById('productIndex');
  products.forEach(p=>{
    const card = document.createElement('div');
    card.className = 'p-card';
    card.innerHTML = `
      <div class="p-img">
        ${p.flag ? `<span class="p-flag ${p.flag}">${p.flagLabel}</span>` : ''}
        <button class="wish" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <img src="${p.img}" alt="${p.name}" loading="lazy">
      </div>
      <div class="p-info">
        <span class="p-no">No. ${p.no}</span>
        <span class="p-name">${p.name}</span>
        <div class="p-row">
          <span class="p-price">$${p.price}${p.old ? `<span class="old">$${p.old}</span>` : ''}</span>
          <button class="add" aria-label="Add to bag"><i class="fas fa-plus"></i></button>
        </div>
      </div>`;
    productIndex.appendChild(card);
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

  const testimonials = [
    {name:'Priya Nair', role:'Verified order', orderNo:'#40218', quote:'The coat fits exactly like the size chart promised, and it arrived two days early.', stars:5},
    {name:'Daniel Kwan', role:'Verified order', orderNo:'#39902', quote:'Bought the earbuds during the clearance window — sound quality well above the price.', stars:5},
    {name:'Farah Idris', role:'Verified order', orderNo:'#41055', quote:'Support actually picked up the phone. Return was closed out in three days flat.', stars:4},
  ];
  const slipList = document.getElementById('slipList');
  testimonials.forEach(t=>{
    const el = document.createElement('div');
    el.className = 'slip';
    el.innerHTML = `
      <div class="slip-stars">${'★'.repeat(t.stars)}${'☆'.repeat(5-t.stars)}</div>
      <blockquote>“${t.quote}”</blockquote>
      <div class="slip-who">
        <div><div class="name">${t.name}</div><div class="role">${t.role}</div></div>
        <div class="order-no">${t.orderNo}</div>
      </div>`;
    slipList.appendChild(el);
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
    document.getElementById('newsletterMsg').textContent = "You're on the list — check your inbox to confirm.";
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
