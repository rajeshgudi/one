<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5, user-scalable=yes">
  <title>Nexus · friendly shop</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', -apple-system, system-ui, sans-serif;
      background: #f7f8fc;
      color: #1a1e2b;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    :root {
      --radius-card: 20px;
      --radius-btn: 60px;
      --shadow-soft: 0 8px 30px rgba(0, 0, 0, 0.04);
      --shadow-hover: 0 16px 48px rgba(0, 0, 0, 0.07);
      --accent: #2a7de1;
      --accent-soft: #eef4fe;
      --accent-dark: #1b5fc7;
      --bg-white: #ffffff;
      --bg-light: #f2f4fa;
      --muted: #6b7280;
      --muted-light: #9ca3af;
      --success: #16a34a;
      --border-light: #e9edf4;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 20px;
    }

    /* header */
    .header {
      background: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(14px);
      -webkit-backdrop-filter: blur(14px);
      border-bottom: 1px solid rgba(0, 0, 0, 0.03);
      position: sticky;
      top: 0;
      z-index: 50;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 10px 0;
      flex-wrap: wrap;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 800;
      font-size: 22px;
      letter-spacing: -0.3px;
      color: #0b1e33;
    }
    .brand i {
      color: var(--accent);
      font-size: 26px;
    }
    .brand span {
      background: linear-gradient(145deg, #1a2a4a, #2a7de1);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    .search-wrapper {
      display: flex;
      align-items: center;
      background: var(--bg-white);
      border-radius: var(--radius-btn);
      padding: 2px 2px 2px 18px;
      border: 1px solid var(--border-light);
      flex: 1 1 260px;
      max-width: 380px;
      transition: 0.2s;
    }
    .search-wrapper:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 4px rgba(42, 125, 225, 0.08);
    }
    .search-wrapper input {
      border: none;
      background: transparent;
      padding: 12px 0;
      font-size: 14px;
      width: 100%;
      outline: none;
      color: #1a1e2b;
    }
    .search-wrapper input::placeholder {
      color: var(--muted-light);
    }
    .search-wrapper button {
      background: var(--accent);
      border: none;
      color: white;
      width: 44px;
      height: 44px;
      border-radius: 60px;
      font-size: 16px;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .search-wrapper button:hover {
      background: var(--accent-dark);
      transform: scale(0.96);
    }

    .nav-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .nav-actions .icon-btn {
      width: 44px;
      height: 44px;
      border-radius: 60px;
      background: transparent;
      border: none;
      font-size: 18px;
      color: #2d3748;
      transition: 0.15s;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .nav-actions .icon-btn:hover {
      background: var(--bg-light);
      color: var(--accent);
    }
    .cart-wrap {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -2px;
      right: -2px;
      background: var(--accent);
      color: white;
      font-size: 11px;
      font-weight: 700;
      min-width: 20px;
      height: 20px;
      border-radius: 40px;
      display: flex;
      align-items: center;
      justify-content: center;
      border: 2px solid white;
    }

    .mobile-toggle {
      display: none;
      background: var(--bg-light);
      border: none;
      width: 44px;
      height: 44px;
      border-radius: 60px;
      font-size: 20px;
      color: #1a1e2b;
    }
    #mobileMenu {
      display: none;
      background: white;
      padding: 12px 0 20px;
      border-top: 1px solid var(--border-light);
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 12px 16px;
      border-radius: 14px;
      font-weight: 500;
      color: #1a1e2b;
      transition: 0.1s;
    }
    #mobileMenu ul li a:hover {
      background: var(--bg-light);
    }

    /* main nav */
    .main-nav ul {
      display: flex;
      gap: 2px;
      list-style: none;
    }
    .main-nav ul li a {
      display: flex;
      align-items: center;
      gap: 6px;
      padding: 8px 16px;
      border-radius: 40px;
      font-size: 14px;
      font-weight: 500;
      color: var(--muted);
      transition: 0.15s;
    }
    .main-nav ul li a:hover,
    .main-nav ul li a.active {
      background: var(--bg-light);
      color: #0b1e33;
    }

    /* hero */
    .hero {
      background: linear-gradient(145deg, #f0f4fe, #e9effa);
      border-radius: 32px;
      padding: 48px 40px;
      margin: 24px 0 20px;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
    }
    .hero-content {
      max-width: 560px;
    }
    .hero-content .badge {
      background: rgba(42, 125, 225, 0.12);
      color: var(--accent-dark);
      padding: 4px 16px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 13px;
      display: inline-block;
      margin-bottom: 12px;
    }
    .hero-content h1 {
      font-size: 42px;
      font-weight: 800;
      line-height: 1.1;
      letter-spacing: -0.02em;
      margin-bottom: 12px;
    }
    .hero-content p {
      color: var(--muted);
      font-size: 17px;
      max-width: 420px;
      margin-bottom: 24px;
    }
    .hero-actions {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 12px 28px;
      border-radius: var(--radius-btn);
      font-weight: 600;
      font-size: 15px;
      border: none;
      transition: 0.2s;
    }
    .btn-primary {
      background: var(--accent);
      color: white;
    }
    .btn-primary:hover {
      background: var(--accent-dark);
      transform: translateY(-2px);
      box-shadow: 0 12px 28px rgba(42, 125, 225, 0.25);
    }
    .btn-outline {
      background: transparent;
      color: #1a1e2b;
      border: 1.5px solid var(--border-light);
    }
    .btn-outline:hover {
      background: white;
      border-color: var(--accent);
    }
    .hero-visual {
      background: white;
      border-radius: 28px;
      padding: 16px 24px;
      box-shadow: var(--shadow-soft);
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }
    .hero-visual i {
      font-size: 32px;
      color: var(--accent);
      background: var(--accent-soft);
      padding: 14px;
      border-radius: 20px;
    }

    /* section */
    .section {
      padding: 40px 0;
    }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      margin-bottom: 24px;
      flex-wrap: wrap;
      gap: 8px;
    }
    .section-header h2 {
      font-size: 26px;
      font-weight: 700;
      letter-spacing: -0.02em;
    }
    .section-header p {
      color: var(--muted);
      font-size: 15px;
      margin-top: 2px;
    }
    .view-all {
      font-weight: 600;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 14px;
      transition: 0.2s;
    }
    .view-all:hover {
      gap: 12px;
      color: var(--accent-dark);
    }

    /* categories */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(120px, 1fr));
      gap: 14px;
    }
    .cat-card {
      background: var(--bg-white);
      border-radius: var(--radius-card);
      padding: 20px 12px;
      text-align: center;
      box-shadow: var(--shadow-soft);
      border: 1px solid transparent;
      transition: 0.2s;
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      border-color: var(--accent-soft);
      box-shadow: var(--shadow-hover);
    }
    .cat-card .icon-wrap {
      width: 56px;
      height: 56px;
      margin: 0 auto 10px;
      background: var(--accent-soft);
      border-radius: 60px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 24px;
      color: var(--accent);
      transition: 0.2s;
    }
    .cat-card:hover .icon-wrap {
      background: var(--accent);
      color: white;
    }
    .cat-card h4 {
      font-size: 14px;
      font-weight: 600;
    }
    .cat-card .count {
      font-size: 12px;
      color: var(--muted-light);
    }

    /* products */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
      gap: 20px;
    }
    .product-card {
      background: var(--bg-white);
      border-radius: var(--radius-card);
      overflow: hidden;
      box-shadow: var(--shadow-soft);
      transition: 0.2s;
      border: 1px solid transparent;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      border-color: var(--accent-soft);
      box-shadow: var(--shadow-hover);
    }
    .product-card .img-wrap {
      aspect-ratio: 1 / 1;
      background: var(--bg-light);
      position: relative;
      overflow: hidden;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: 0.3s;
    }
    .product-card:hover .img-wrap img {
      transform: scale(1.03);
    }
    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--accent);
      color: white;
      padding: 2px 12px;
      border-radius: 60px;
      font-size: 11px;
      font-weight: 700;
    }
    .badge.sale {
      background: #f59e0b;
      color: #0b1e33;
    }
    .product-card .wish-btn {
      position: absolute;
      top: 10px;
      right: 10px;
      background: rgba(255, 255, 255, 0.8);
      backdrop-filter: blur(4px);
      border: none;
      width: 34px;
      height: 34px;
      border-radius: 60px;
      font-size: 15px;
      color: #6b7280;
      transition: 0.2s;
    }
    .product-card .wish-btn:hover {
      background: white;
      color: #e11d48;
    }
    .product-card .body {
      padding: 14px 14px 8px;
      flex: 1;
    }
    .product-card .body .category {
      font-size: 11px;
      text-transform: uppercase;
      color: var(--muted-light);
      font-weight: 600;
      letter-spacing: 0.4px;
    }
    .product-card .body h5 {
      font-size: 15px;
      font-weight: 600;
      margin: 4px 0 2px;
      line-height: 1.3;
    }
    .product-card .price-row {
      display: flex;
      align-items: center;
      gap: 8px;
      margin-top: 4px;
    }
    .product-card .price {
      font-weight: 700;
      font-size: 17px;
    }
    .product-card .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 13px;
    }
    .product-card .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 13px;
      color: #f5a623;
      margin: 4px 0 6px;
    }
    .product-card .rating span {
      color: var(--muted);
    }
    .product-card .footer {
      padding: 0 14px 14px;
    }
    .product-card .add-btn {
      width: 100%;
      padding: 10px;
      border-radius: 60px;
      background: #1a1e2b;
      color: white;
      font-weight: 600;
      font-size: 14px;
      border: none;
      transition: 0.15s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .product-card .add-btn:hover {
      background: var(--accent);
    }
    .product-card .add-btn.added {
      background: var(--success);
    }

    /* deal */
    .deal-wrap {
      background: var(--bg-white);
      border-radius: var(--radius-card);
      display: flex;
      flex-wrap: wrap;
      overflow: hidden;
      box-shadow: var(--shadow-soft);
    }
    .deal-img {
      flex: 1 1 220px;
      min-height: 200px;
      background: var(--bg-light);
    }
    .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-content {
      flex: 2 1 300px;
      padding: 28px 32px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-content .tag {
      background: #fef3c7;
      color: #92400e;
      padding: 2px 14px;
      border-radius: 60px;
      font-weight: 700;
      font-size: 12px;
      align-self: flex-start;
      margin-bottom: 8px;
    }
    .deal-content h3 {
      font-size: 24px;
      font-weight: 700;
    }
    .deal-content .desc {
      color: var(--muted);
      margin: 4px 0 12px;
    }
    .deal-content .price-big {
      font-size: 30px;
      font-weight: 800;
    }
    .deal-content .price-big .old {
      font-size: 18px;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 8px;
    }
    .deal-content .stock {
      font-size: 14px;
      color: var(--muted);
      margin: 2px 0 12px;
    }
    .deal-content .stock strong {
      color: var(--accent);
    }
    .timer-grid {
      display: flex;
      gap: 10px;
      margin: 8px 0 16px;
    }
    .timer-box {
      background: #1a1e2b;
      color: white;
      padding: 8px 14px;
      border-radius: 14px;
      min-width: 56px;
      text-align: center;
    }
    .timer-box .num {
      font-size: 22px;
      font-weight: 700;
      line-height: 1.2;
    }
    .timer-box .label {
      font-size: 10px;
      opacity: 0.7;
      text-transform: uppercase;
    }

    /* testimonials */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
    }
    .testimonial-card {
      flex: 0 0 280px;
      background: var(--bg-white);
      border-radius: var(--radius-card);
      padding: 20px 24px;
      box-shadow: var(--shadow-soft);
      scroll-snap-align: start;
    }
    .testimonial-card .stars {
      color: #f5a623;
      letter-spacing: 2px;
      margin-bottom: 6px;
    }
    .testimonial-card blockquote {
      font-style: italic;
      font-size: 15px;
      color: #1a1e2b;
      margin-bottom: 12px;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testimonial-card .author img {
      width: 44px;
      height: 44px;
      border-radius: 60px;
      object-fit: cover;
      background: var(--bg-light);
    }
    .testimonial-card .author .name {
      font-weight: 600;
      font-size: 14px;
    }
    .testimonial-card .author .role {
      font-size: 12px;
      color: var(--muted);
    }

    /* newsletter */
    .newsletter-wrap {
      background: linear-gradient(145deg, #0b1e33, #1a2a4a);
      border-radius: var(--radius-card);
      padding: 36px 40px;
      color: white;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      gap: 24px;
    }
    .newsletter-wrap h3 {
      font-size: 24px;
      font-weight: 700;
    }
    .newsletter-wrap p {
      opacity: 0.8;
    }
    .newsletter-wrap form {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
      flex: 1 1 300px;
    }
    .newsletter-wrap input {
      flex: 1;
      padding: 14px 20px;
      border-radius: 60px;
      border: none;
      background: rgba(255, 255, 255, 0.1);
      color: white;
      font-size: 15px;
      outline: 2px solid transparent;
      transition: 0.2s;
      min-width: 160px;
    }
    .newsletter-wrap input::placeholder {
      color: rgba(255, 255, 255, 0.5);
    }
    .newsletter-wrap input:focus {
      outline-color: var(--accent);
      background: rgba(255, 255, 255, 0.18);
    }
    .newsletter-wrap .btn {
      background: var(--accent);
      color: white;
      padding: 14px 32px;
    }
    .newsletter-wrap .btn:hover {
      background: #1b5fc7;
    }
    #newsletterMsg {
      width: 100%;
      margin-top: 8px;
      font-size: 14px;
    }

    /* footer */
    footer {
      padding: 40px 0 20px;
      border-top: 1px solid var(--border-light);
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 32px;
      margin-bottom: 28px;
    }
    .footer-grid .brand-col p {
      color: var(--muted);
      font-size: 14px;
      max-width: 280px;
      margin: 8px 0 12px;
    }
    .socials {
      display: flex;
      gap: 8px;
    }
    .socials a {
      width: 40px;
      height: 40px;
      border-radius: 60px;
      background: var(--bg-light);
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--muted);
      transition: 0.2s;
    }
    .socials a:hover {
      background: var(--accent);
      color: white;
    }
    .footer-grid .col h5 {
      font-weight: 700;
      margin-bottom: 12px;
      font-size: 14px;
    }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .footer-grid .col ul li a {
      color: var(--muted);
      font-size: 14px;
      transition: 0.15s;
    }
    .footer-grid .col ul li a:hover {
      color: var(--accent);
    }
    .footer-bottom {
      text-align: center;
      color: var(--muted-light);
      font-size: 13px;
      border-top: 1px solid var(--border-light);
      padding-top: 20px;
    }

    @media (max-width: 992px) {
      .main-nav {
        display: none;
      }
      .mobile-toggle {
        display: flex;
        align-items: center;
        justify-content: center;
      }
      .hero {
        flex-direction: column;
        text-align: center;
        padding: 32px 24px;
      }
      .hero-content p {
        margin-left: auto;
        margin-right: auto;
      }
      .hero-actions {
        justify-content: center;
      }
      .footer-grid {
        grid-template-columns: 1fr 1fr;
      }
      .deal-content {
        padding: 20px 24px;
      }
    }

    @media (max-width: 600px) {
      .header-inner {
        flex-wrap: nowrap;
      }
      .search-wrapper {
        flex: 1 1 120px;
        min-width: 100px;
      }
      .search-wrapper input {
        font-size: 13px;
        padding: 10px 0;
      }
      .brand {
        font-size: 18px;
      }
      .hero-content h1 {
        font-size: 30px;
      }
      .products-grid {
        grid-template-columns: 1fr 1fr;
        gap: 12px;
      }
      .categories-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .footer-grid {
        grid-template-columns: 1fr;
        gap: 24px;
      }
      .newsletter-wrap {
        padding: 24px 20px;
        flex-direction: column;
        text-align: center;
      }
      .newsletter-wrap form {
        flex-direction: column;
      }
      .deal-content .price-big {
        font-size: 24px;
      }
    }
  </style>
</head>
<body>

  <header class="header">
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:8px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
        <a class="brand" href="#"><i class="fas fa-store-alt"></i><span>Nexus</span></a>
      </div>

      <nav class="main-nav" aria-label="Main">
        <ul>
          <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:8px;flex:1 1 auto; justify-content:flex-end;">
        <div class="search-wrapper">
          <input type="search" id="searchInput" placeholder="Search..." aria-label="Search">
          <button id="searchBtn" aria-label="Submit"><i class="fas fa-search"></i></button>
        </div>
        <div class="nav-actions">
          <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
          <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
          <div class="cart-wrap">
            <button class="icon-btn" id="cartBtn" aria-label="Cart"><i class="fas fa-shopping-bag"></i></button>
            <span class="cart-count" id="cartCount">0</span>
          </div>
        </div>
      </div>
    </div>

    <!-- mobile menu -->
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
          <li><a href="#"><i class="far fa-user"></i> Account</a></li>
        </ul>
      </div>
    </div>
  </header>

  <main class="container">

    <!-- hero -->
    <section class="hero">
      <div class="hero-content">
        <span class="badge"><i class="fas fa-sparkles"></i> fresh 2026</span>
        <h1>Smart picks <br>for everyday</h1>
        <p>Curated tech, style & accessories — free shipping on first order.</p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
          <button class="btn btn-outline" id="exploreDeals"><i class="fas fa-clock"></i> Deals</button>
        </div>
      </div>
      <div class="hero-visual">
        <i class="fas fa-laptop"></i>
        <i class="fas fa-headphones"></i>
        <i class="fas fa-watch"></i>
        <i class="fas fa-camera"></i>
      </div>
    </section>

    <!-- categories -->
    <section class="section" id="categories">
      <div class="section-header">
        <div><h2>Browse</h2><p>find your vibe</p></div>
        <a href="#" class="view-all">All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid"></div>
    </section>

    <!-- products -->
    <section class="section" id="products">
      <div class="section-header">
        <div><h2>Trending</h2><p>community favorites</p></div>
        <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid"></div>
    </section>

    <!-- deal -->
    <section class="section" id="deals">
      <div class="section-header">
        <div><h2>⚡ Flash deal</h2><p>limited stock</p></div>
      </div>
      <div class="deal-wrap">
        <div class="deal-img">
          <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook" loading="lazy">
        </div>
        <div class="deal-content">
          <span class="tag"><i class="fas fa-bolt"></i> limited</span>
          <h3>MacBook Air M2</h3>
          <p class="desc">Light, fast, and incredible battery life.</p>
          <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
          <p class="stock">Only <strong>12</strong> left — hurry!</p>
          <div class="timer-grid" id="dealTimer">
            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hrs</div></div>
            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
          </div>
          <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to cart</button>
        </div>
      </div>
    </section>

    <!-- testimonials -->
    <section class="section" id="testimonials">
      <div class="section-header">
        <div><h2>❤️ Real reviews</h2><p>from real people</p></div>
      </div>
      <div class="testimonials-scroll" id="testimonialsList"></div>
    </section>

    <!-- newsletter -->
    <section class="section">
      <div class="newsletter-wrap">
        <div>
          <h3>Stay in the loop</h3>
          <p>Exclusive offers, early access</p>
        </div>
        <form id="newsletterForm" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="Your email" required>
          <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </section>
  </main>

  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="brand-col">
          <div class="brand"><i class="fas fa-store-alt"></i><span>Nexus</span></div>
          <p>Modern e‑commerce demo — built for clarity and ease.</p>
          <div class="socials">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-youtube"></i></a>
          </div>
        </div>
        <div class="col"><h5>Company</h5><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li></ul></div>
        <div class="col"><h5>Support</h5><ul><li><a href="#">Help</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li></ul></div>
        <div class="col"><h5>Legal</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookies</a></li></ul></div>
      </div>
      <div class="footer-bottom">&copy; <span id="year"></span> Nexus. All rights reserved.</div>
    </div>
  </footer>

  <script>
    // ===== DATA =====
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
    ];

    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category: 'Smartphones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '', img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category: 'Laptops' },
      { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'Accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '', img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'Footwear' },
      { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42, badge: 'New', img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category: 'Gadgets' },
      { id: 6, title: 'Chanel No.5', price: 120, rating: 5, reviews: 189, badge: '', img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'Accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'Accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '', img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'Gadgets' }
    ];

    const TESTIMONIALS = [
      { name: 'Ava Martin', role: 'Verified', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80', text: 'Fast shipping, excellent support. Exceeded expectations!', stars: 5 },
      { name: 'Michael Lee', role: 'Shopper', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80', text: 'Great selection and smooth checkout. Will be back.', stars: 4 },
      { name: 'Sophia Chen', role: 'Designer', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80', text: 'Love the quality. Everything arrived perfectly.', stars: 5 },
      { name: 'James Wilson', role: 'Tech lover', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80', text: 'Amazing prices on electronics. M2 deal was unbeatable.', stars: 5 }
    ];

    // ===== STATE =====
    let cartCount = 0;

    // ===== REFS =====
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    const newsletterEmail = document.getElementById('newsletterEmail');
    const newsletterMsg = document.getElementById('newsletterMsg');
    const testimonialsList = document.getElementById('testimonialsList');

    // ===== RENDER =====
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(c => {
        const el = document.createElement('div');
        el.className = 'cat-card';
        el.innerHTML = `<div class="icon-wrap"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4><div class="count">${c.count} items</div>`;
        el.addEventListener('click', () => {
          searchInput.value = c.name;
          filterProducts(c.name);
          document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        categoriesGrid.appendChild(el);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      if (!list.length) {
        productsGrid.innerHTML = `<p style="grid-column:1/-1;text-align:center;padding:30px;color:var(--muted);">No products found.</p>`;
        return;
      }
      list.forEach(p => {
        const el = document.createElement('div');
        el.className = 'product-card';
        const badgeClass = p.badge === 'Sale' ? 'sale' : '';
        const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
        const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : '';
        const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
        el.innerHTML = `
          <div class="img-wrap">
            <img src="${p.img}" alt="${p.title}" loading="lazy">
            ${badgeHtml}
            <button class="wish-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
          </div>
          <div class="body">
            <div class="category">${p.category}</div>
            <h5>${p.title}</h5>
            <div class="price-row"><span class="price">$${p.price.toLocaleString()}</span>${oldPriceHtml}</div>
            <div class="rating">${stars} <span>(${p.reviews})</span></div>
          </div>
          <div class="footer"><button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button></div>
        `;
        productsGrid.appendChild(el);
      });
      document.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', function(e) {
          e.stopPropagation();
          addToCart(Number(this.dataset.id), this);
        });
      });
    }

    function renderTestimonials() {
      testimonialsList.innerHTML = '';
      TESTIMONIALS.forEach(t => {
        const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
        const el = document.createElement('div');
        el.className = 'testimonial-card';
        el.innerHTML = `
          <div class="stars">${stars}</div>
          <blockquote>“${t.text}”</blockquote>
          <div class="author"><img src="${t.avatar}" alt="${t.name}" loading="lazy"><div><div class="name">${t.name}</div><div class="role">${t.role}</div></div></div>
        `;
        testimonialsList.appendChild(el);
      });
    }

    // ===== UTILITY =====
    function updateCartCount() {
      cartCountEl.textContent = cartCount;
      cartCountEl.style.transform = 'scale(1.3)';
      setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
    }

    function addToCart(productId, btnEl) {
      const p = PRODUCTS.find(x => x.id === productId);
      if (!p) return;
      cartCount++;
      updateCartCount();
      if (btnEl) {
        const orig = btnEl.innerHTML;
        btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
        btnEl.classList.add('added');
        setTimeout(() => { btnEl.innerHTML = orig; btnEl.classList.remove('added'); }, 1400);
      }
    }

    function filterProducts(query) {
      const q = String(query || '').trim().toLowerCase();
      if (!q) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
      renderProducts(filtered);
    }

    // ===== DEAL TIMER =====
    (function() {
      const now = new Date();
      const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);
      function tick() {
        const diff = target - new Date();
        if (diff <= 0) {
          document.getElementById('dealDays').textContent = '0';
          document.getElementById('dealHours').textContent = '00';
          document.getElementById('dealMinutes').textContent = '00';
          document.getElementById('dealSeconds').textContent = '00';
          return;
        }
        const days = Math.floor(diff / (24 * 3600 * 1000));
        const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
        const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
        const secs = Math.floor((diff % (60 * 1000)) / 1000);
        document.getElementById('dealDays').textContent = days;
        document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
        document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
        document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
      }
      tick();
      setInterval(tick, 1000);
    })();

    // ===== EVENTS =====
    searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });

    mobileToggle.addEventListener('click', () => {
      const open = mobileMenu.style.display === 'block';
      mobileMenu.style.display = open ? 'none' : 'block';
      mobileToggle.innerHTML = open ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
    });
    mobileMenu.querySelectorAll('a').forEach(link => {
      link.addEventListener('click', () => {
        mobileMenu.style.display = 'none';
        mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
      });
    });

    document.getElementById('shopNow').addEventListener('click', () => document.getElementById('products').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));

    document.getElementById('buyDeal').addEventListener('click', function() {
      cartCount++;
      updateCartCount();
      const orig = this.innerHTML;
      this.innerHTML = '<i class="fas fa-check"></i> Added!';
      this.style.background = '#16a34a';
      setTimeout(() => { this.innerHTML = orig; this.style.background = ''; }, 1500);
    });

    document.getElementById('cartBtn').addEventListener('click', () => alert(`🛒 ${cartCount} item${cartCount !== 1 ? 's' : ''} in cart`));

    document.getElementById('newsletterForm').addEventListener('submit', (e) => {
      e.preventDefault();
      const email = newsletterEmail.value.trim();
      if (!email || !email.includes('@')) {
        newsletterMsg.textContent = 'Please enter a valid email.';
        newsletterMsg.style.color = '#fca5a5';
        return;
      }
      newsletterMsg.textContent = '🎉 Subscribed! Check your inbox.';
      newsletterMsg.style.color = '#86efac';
      newsletterEmail.value = '';
      setTimeout(() => newsletterMsg.textContent = '', 3500);
    });

    document.getElementById('year').textContent = new Date().getFullYear();

    // ===== INIT =====
    renderCategories();
    renderProducts(PRODUCTS);
    renderTestimonials();
    updateCartCount();

    window.addEventListener('resize', () => {
      if (window.innerWidth > 768) { mobileMenu.style.display = 'none'; mobileToggle.innerHTML = '<i class="fas fa-bars"></i>'; }
    });

    console.log('✨ NexusShop — friendly UI loaded.');
  </script>
</body>
</html>
