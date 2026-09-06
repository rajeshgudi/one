<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>VividMart — Fresh E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Prata&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== ROOT VARIABLES ========== */
        :root {
            --bg: #f7f5f2;
            --bg-card: #ffffff;
            --primary: #1e2b2f;
            --primary-light: #2f3f44;
            --accent: #d46a4e;
            --accent-light: #f0d5cb;
            --accent-dark: #b5533a;
            --muted: #6f7a7e;
            --muted-light: #a4b0b5;
            --surface: #edebe8;
            --success: #3c8d7a;
            --warning: #e3b574;
            --radius: 20px;
            --radius-sm: 12px;
            --shadow: 0 8px 32px rgba(30, 43, 47, 0.06);
            --shadow-hover: 0 16px 56px rgba(30, 43, 47, 0.12);
            --transition: 0.3s cubic-bezier(0.25, 0.46, 0.45, 0.94);
            --container: 1280px;
        }

        /* ========== RESET & BASE ========== */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        html {
            scroll-behavior: smooth;
        }
        body {
            font-family: 'DM Sans', system-ui, -apple-system, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        a {
            color: inherit;
            text-decoration: none;
        }
        img {
            display: block;
            max-width: 100%;
        }
        button {
            cursor: pointer;
            font-family: inherit;
            border: none;
            background: none;
            color: inherit;
        }
        input {
            font-family: inherit;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 28px;
        }

        /* ========== BUTTONS ========== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 14px 34px;
            border-radius: 999px;
            font-weight: 700;
            font-size: 15px;
            transition: var(--transition);
            border: 2px solid transparent;
            letter-spacing: 0.3px;
        }
        .btn-primary {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
        }
        .btn-primary:hover {
            background: var(--accent-dark);
            border-color: var(--accent-dark);
            transform: translateY(-3px);
            box-shadow: 0 12px 32px rgba(212, 106, 78, 0.30);
        }
        .btn-secondary {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
        }
        .btn-secondary:hover {
            background: var(--primary-light);
            border-color: var(--primary-light);
            transform: translateY(-3px);
            box-shadow: 0 12px 32px rgba(30, 43, 47, 0.20);
        }
        .btn-outline {
            background: transparent;
            color: var(--primary);
            border-color: rgba(30, 43, 47, 0.15);
        }
        .btn-outline:hover {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
            transform: translateY(-3px);
        }
        .btn-ghost {
            background: rgba(255, 255, 255, 0.12);
            color: #fff;
            border-color: rgba(255, 255, 255, 0.2);
        }
        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.22);
            border-color: rgba(255, 255, 255, 0.35);
            transform: translateY(-3px);
        }
        .btn-sm {
            padding: 10px 22px;
            font-size: 13px;
        }

        /* ========== HEADER ========== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(247, 245, 242, 0.92);
            backdrop-filter: blur(14px);
            -webkit-backdrop-filter: blur(14px);
            border-bottom: 1px solid rgba(30, 43, 47, 0.04);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 14px 0;
            min-height: 72px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Prata', serif;
            font-size: 26px;
            letter-spacing: -0.5px;
            color: var(--primary);
            flex-shrink: 0;
        }
        .brand .accent {
            color: var(--accent);
        }
        .brand i {
            font-size: 28px;
            color: var(--accent);
        }

        nav.main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
            align-items: center;
        }
        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 10px 20px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            font-size: 14px;
            color: var(--muted);
            transition: var(--transition);
            position: relative;
        }
        nav.main-nav li a::after {
            content: '';
            position: absolute;
            bottom: 4px;
            left: 50%;
            transform: translateX(-50%);
            width: 0;
            height: 3px;
            border-radius: 999px;
            background: var(--accent);
            transition: var(--transition);
        }
        nav.main-nav li a:hover::after,
        nav.main-nav li a.active::after {
            width: 20px;
        }
        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            color: var(--primary);
            background: rgba(212, 106, 78, 0.06);
        }
        nav.main-nav li a i {
            font-size: 14px;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 4px;
            flex-shrink: 0;
        }
        .header-actions .icon-btn {
            width: 44px;
            height: 44px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            font-size: 18px;
            color: var(--muted);
            transition: var(--transition);
            position: relative;
        }
        .header-actions .icon-btn:hover {
            background: var(--surface);
            color: var(--primary);
        }

        .cart-wrap {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: var(--accent);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            border: 2px solid var(--bg);
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: #fff;
            border-radius: 999px;
            padding: 0 18px 0 22px;
            transition: var(--transition);
            border: 2px solid rgba(30, 43, 47, 0.06);
            min-width: 240px;
            box-shadow: var(--shadow);
        }
        .search-wrap:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 6px rgba(212, 106, 78, 0.08);
        }
        .search-wrap input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 12px 0;
            font-size: 14px;
            color: var(--primary);
        }
        .search-wrap input::placeholder {
            color: var(--muted-light);
        }
        .search-wrap button {
            padding: 10px 0 10px 12px;
            color: var(--muted);
            font-size: 16px;
            transition: var(--transition);
        }
        .search-wrap button:hover {
            color: var(--accent);
        }

        .mobile-toggle {
            display: none;
            width: 44px;
            height: 44px;
            border-radius: 50%;
            font-size: 20px;
            background: #fff;
            color: var(--primary);
            transition: var(--transition);
            box-shadow: var(--shadow);
        }
        .mobile-toggle:hover {
            background: var(--accent-light);
        }

        #mobileMenu {
            display: none;
            background: #fff;
            border-top: 1px solid rgba(30, 43, 47, 0.04);
            padding: 16px 0 24px;
        }
        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 2px;
        }
        #mobileMenu ul li a {
            display: flex;
            align-items: center;
            gap: 14px;
            padding: 14px 20px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            color: var(--primary);
            transition: var(--transition);
        }
        #mobileMenu ul li a:hover {
            background: var(--surface);
        }
        #mobileMenu ul li a i {
            width: 24px;
            color: var(--muted);
            font-size: 16px;
        }

        /* ========== HERO ========== */
        .hero {
            position: relative;
            display: flex;
            align-items: center;
            min-height: 520px;
            padding: 60px 0;
            border-radius: var(--radius);
            overflow: hidden;
            margin: 24px 28px 0;
            background: linear-gradient(145deg, #1e2b2f 0%, #2f3f44 100%);
        }
        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            opacity: 0.25;
            z-index: 0;
        }
        .hero .container {
            position: relative;
            z-index: 1;
        }
        .hero .badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(212, 106, 78, 0.20);
            color: var(--accent-light);
            padding: 6px 20px;
            border-radius: 999px;
            font-weight: 600;
            font-size: 13px;
            letter-spacing: 0.5px;
            margin-bottom: 18px;
            border: 1px solid rgba(212, 106, 78, 0.15);
        }
        .hero h1 {
            font-family: 'Prata', serif;
            font-size: 52px;
            font-weight: 400;
            color: #fff;
            line-height: 1.1;
            max-width: 660px;
            margin-bottom: 18px;
        }
        .hero h1 .highlight {
            color: var(--accent-light);
        }
        .hero p {
            color: rgba(255, 255, 255, 0.80);
            font-size: 18px;
            max-width: 520px;
            margin-bottom: 32px;
            line-height: 1.7;
        }
        .hero .actions {
            display: flex;
            gap: 14px;
            flex-wrap: wrap;
        }

        /* ========== SECTION ========== */
        .section {
            padding: 60px 0;
        }
        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 36px;
            flex-wrap: wrap;
        }
        .section-header .title-group h2 {
            font-family: 'Prata', serif;
            font-size: 32px;
            font-weight: 400;
            letter-spacing: -0.3px;
        }
        .section-header .title-group p {
            color: var(--muted);
            margin-top: 4px;
            font-size: 15px;
        }
        .section-header .view-all {
            font-weight: 600;
            color: var(--accent);
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 14px;
            transition: var(--transition);
            white-space: nowrap;
            border-bottom: 2px solid transparent;
            padding-bottom: 4px;
        }
        .section-header .view-all:hover {
            gap: 14px;
            border-bottom-color: var(--accent);
        }

        /* ========== CATEGORIES ========== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 18px;
        }
        .cat-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 28px 16px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: var(--transition);
            cursor: pointer;
            border: 2px solid transparent;
        }
        .cat-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-light);
        }
        .cat-card .icon-wrap {
            width: 64px;
            height: 64px;
            border-radius: 50%;
            background: var(--accent-light);
            display: grid;
            place-items: center;
            margin: 0 auto 14px;
            font-size: 26px;
            color: var(--accent);
            transition: var(--transition);
        }
        .cat-card:hover .icon-wrap {
            background: var(--accent);
            color: #fff;
            transform: scale(1.05);
        }
        .cat-card h4 {
            font-size: 16px;
            font-weight: 700;
        }
        .cat-card .count {
            font-size: 13px;
            color: var(--muted);
            margin-top: 4px;
        }

        /* ========== PRODUCTS ========== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
        }
        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
            display: flex;
            flex-direction: column;
            border: 2px solid transparent;
            position: relative;
        }
        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-light);
        }
        .product-card .img-wrap {
            position: relative;
            overflow: hidden;
            background: var(--surface);
            aspect-ratio: 1 / 1;
        }
        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }
        .product-card:hover .img-wrap img {
            transform: scale(1.05);
        }
        .product-card .badge {
            position: absolute;
            top: 14px;
            left: 14px;
            background: var(--accent);
            color: #fff;
            padding: 4px 14px;
            border-radius: 999px;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.5px;
        }
        .product-card .badge.sale {
            background: var(--warning);
            color: var(--primary);
        }
        .product-card .wish-btn {
            position: absolute;
            top: 14px;
            right: 14px;
            width: 38px;
            height: 38px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.92);
            display: grid;
            place-items: center;
            font-size: 16px;
            color: var(--muted);
            transition: var(--transition);
            backdrop-filter: blur(6px);
        }
        .product-card .wish-btn:hover {
            background: #fff;
            color: var(--accent);
            transform: scale(1.12);
        }
        .product-card .body {
            padding: 18px 20px 16px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }
        .product-card .body .category-tag {
            font-size: 12px;
            color: var(--muted-light);
            text-transform: uppercase;
            letter-spacing: 0.5px;
            font-weight: 600;
        }
        .product-card .body h5 {
            font-size: 16px;
            font-weight: 700;
            line-height: 1.3;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .product-card .body .price-row {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-top: 2px;
        }
        .product-card .body .price {
            font-weight: 700;
            font-size: 20px;
            color: var(--primary);
        }
        .product-card .body .old-price {
            color: var(--muted-light);
            text-decoration: line-through;
            font-size: 14px;
        }
        .product-card .body .rating {
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 14px;
            color: #e3b574;
        }
        .product-card .body .rating span {
            color: var(--muted);
            font-weight: 400;
        }
        .product-card .footer {
            padding: 0 20px 20px;
            display: flex;
            gap: 10px;
        }
        .product-card .footer .add-btn {
            flex: 1;
            padding: 12px;
            border-radius: var(--radius-sm);
            background: var(--primary);
            color: #fff;
            font-weight: 700;
            font-size: 14px;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }
        .product-card .footer .add-btn:hover {
            background: var(--accent);
            transform: scale(1.02);
        }
        .product-card .footer .add-btn.added {
            background: var(--success);
        }

        /* ========== DEAL ========== */
        .deal-wrap {
            display: flex;
            gap: 0;
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
        }
        .deal-wrap .deal-img {
            flex: 0 0 50%;
            background: var(--surface);
            min-height: 320px;
        }
        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .deal-wrap .deal-content {
            flex: 1;
            padding: 44px 48px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .deal-wrap .deal-content .tag {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: var(--warning);
            color: var(--primary);
            padding: 6px 18px;
            border-radius: 999px;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            align-self: flex-start;
            margin-bottom: 14px;
        }
        .deal-wrap .deal-content h3 {
            font-family: 'Prata', serif;
            font-size: 32px;
            font-weight: 400;
            margin-bottom: 6px;
        }
        .deal-wrap .deal-content .desc {
            color: var(--muted);
            margin-bottom: 18px;
            font-size: 15px;
        }
        .deal-wrap .deal-content .price-big {
            font-size: 34px;
            font-weight: 800;
            color: var(--accent);
        }
        .deal-wrap .deal-content .price-big .old {
            font-size: 20px;
            font-weight: 400;
            color: var(--muted-light);
            text-decoration: line-through;
            margin-left: 12px;
        }
        .deal-wrap .deal-content .stock {
            font-size: 14px;
            color: var(--muted);
            margin: 6px 0 18px;
        }
        .deal-wrap .deal-content .stock strong {
            color: var(--accent);
        }

        .timer-grid {
            display: flex;
            gap: 14px;
            margin: 12px 0 22px;
        }
        .timer-box {
            background: var(--primary);
            color: #fff;
            padding: 12px 20px;
            border-radius: var(--radius-sm);
            min-width: 72px;
            text-align: center;
        }
        .timer-box .num {
            font-size: 28px;
            font-weight: 700;
            line-height: 1.2;
            font-family: 'Prata', serif;
        }
        .timer-box .label {
            font-size: 11px;
            opacity: 0.70;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        /* ========== TESTIMONIALS ========== */
        .testimonials-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 8px 4px 16px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
        }
        .testimonials-scroll::-webkit-scrollbar {
            height: 4px;
        }
        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: var(--accent-light);
            border-radius: 999px;
        }
        .testimonial-card {
            flex: 0 0 360px;
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 28px 30px;
            box-shadow: var(--shadow);
            scroll-snap-align: start;
            transition: var(--transition);
            border: 2px solid transparent;
        }
        .testimonial-card:hover {
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-light);
        }
        .testimonial-card .stars {
            color: #e3b574;
            font-size: 16px;
            letter-spacing: 2px;
            margin-bottom: 12px;
        }
        .testimonial-card blockquote {
            font-size: 15px;
            line-height: 1.7;
            color: var(--primary);
            margin-bottom: 16px;
            font-style: italic;
        }
        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 14px;
        }
        .testimonial-card .author .avatar {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            object-fit: cover;
            background: var(--surface);
            border: 2px solid var(--accent-light);
        }
        .testimonial-card .author .name {
            font-weight: 700;
            font-size: 14px;
        }
        .testimonial-card .author .role {
            font-size: 13px;
            color: var(--muted);
        }

        /* ========== NEWSLETTER ========== */
        .newsletter-wrap {
            background: linear-gradient(145deg, var(--primary) 0%, var(--primary-light) 100%);
            border-radius: var(--radius);
            padding: 52px 60px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 32px;
            flex-wrap: wrap;
        }
        .newsletter-wrap .text h3 {
            font-family: 'Prata', serif;
            font-size: 28px;
            font-weight: 400;
            margin-bottom: 4px;
        }
        .newsletter-wrap .text p {
            opacity: 0.75;
            font-size: 15px;
        }
        .newsletter-wrap form {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
            flex: 1;
            max-width: 500px;
        }
        .newsletter-wrap form input {
            flex: 1;
            min-width: 200px;
            padding: 16px 24px;
            border-radius: 999px;
            border: 0;
            font-size: 15px;
            background: rgba(255, 255, 255, 0.10);
            color: #fff;
            transition: var(--transition);
            outline: 2px solid transparent;
        }
        .newsletter-wrap form input::placeholder {
            color: rgba(255, 255, 255, 0.5);
        }
        .newsletter-wrap form input:focus {
            outline-color: var(--accent-light);
            background: rgba(255, 255, 255, 0.18);
        }
        .newsletter-wrap form .btn {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
            padding: 16px 36px;
        }
        .newsletter-wrap form .btn:hover {
            background: var(--accent-dark);
            border-color: var(--accent-dark);
        }
        #newsletterMsg {
            margin-top: 14px;
            font-size: 14px;
            opacity: 0.9;
            width: 100%;
        }

        /* ========== FOOTER ========== */
        footer {
            margin-top: 16px;
            padding: 48px 0 32px;
            border-top: 1px solid rgba(30, 43, 47, 0.04);
        }
        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 44px;
            margin-bottom: 36px;
        }
        .footer-grid .brand-col .brand {
            font-family: 'Prata', serif;
            font-size: 22px;
            margin-bottom: 10px;
        }
        .footer-grid .brand-col p {
            color: var(--muted);
            font-size: 14px;
            max-width: 300px;
            line-height: 1.7;
        }
        .footer-grid .brand-col .socials {
            display: flex;
            gap: 12px;
            margin-top: 16px;
        }
        .footer-grid .brand-col .socials a {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            background: var(--surface);
            display: grid;
            place-items: center;
            color: var(--muted);
            transition: var(--transition);
            font-size: 16px;
        }
        .footer-grid .brand-col .socials a:hover {
            background: var(--accent);
            color: #fff;
            transform: translateY(-3px);
        }
        .footer-grid .col h5 {
            font-weight: 700;
            font-size: 14px;
            margin-bottom: 14px;
            color: var(--primary);
        }
        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }
        .footer-grid .col ul li a {
            color: var(--muted);
            font-size: 14px;
            transition: var(--transition);
        }
        .footer-grid .col ul li a:hover {
            color: var(--accent);
            padding-left: 4px;
        }
        .footer-bottom {
            text-align: center;
            padding-top: 24px;
            border-top: 1px solid rgba(30, 43, 47, 0.04);
            color: var(--muted-light);
            font-size: 13px;
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 1200px) {
            .products-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .categories-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .footer-grid {
                grid-template-columns: 1fr 1fr;
                gap: 32px;
            }
        }

        @media (max-width: 992px) {
            .hero h1 {
                font-size: 38px;
            }
            .hero {
                min-height: 400px;
                margin: 16px 16px 0;
                padding: 40px 0;
            }
            .deal-wrap {
                flex-direction: column;
            }
            .deal-wrap .deal-img {
                flex: 0 0 220px;
            }
            .deal-wrap .deal-content {
                padding: 30px 32px;
            }
            .newsletter-wrap {
                padding: 36px 32px;
                flex-direction: column;
                text-align: center;
            }
            .newsletter-wrap form {
                max-width: 100%;
            }
            .search-wrap {
                min-width: 160px;
            }
        }

        @media (max-width: 768px) {
            nav.main-nav {
                display: none;
            }
            .mobile-toggle {
                display: grid;
                place-items: center;
            }
            .products-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 16px;
            }
            .categories-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 14px;
            }
            .hero h1 {
                font-size: 30px;
            }
            .hero p {
                font-size: 15px;
            }
            .section-header h2 {
                font-size: 24px;
            }
            .deal-wrap .deal-content h3 {
                font-size: 24px;
            }
            .deal-wrap .deal-content .price-big {
                font-size: 28px;
            }
            .timer-box {
                min-width: 60px;
                padding: 10px 14px;
            }
            .timer-box .num {
                font-size: 22px;
            }
            .footer-grid {
                grid-template-columns: 1fr;
                gap: 24px;
            }
            .header-inner {
                flex-wrap: nowrap;
            }
            .brand {
                font-size: 20px;
            }
            .brand i {
                font-size: 22px;
            }
            .search-wrap {
                min-width: 120px;
                padding: 0 12px 0 16px;
            }
            .search-wrap input {
                font-size: 13px;
                padding: 10px 0;
            }
            .header-actions .icon-btn {
                width: 38px;
                height: 38px;
                font-size: 16px;
            }
            .cart-count {
                width: 18px;
                height: 18px;
                font-size: 10px;
            }
            .testimonial-card {
                flex: 0 0 280px;
            }
            .hero .actions .btn {
                padding: 12px 24px;
                font-size: 14px;
            }
            .section {
                padding: 40px 0;
            }
        }

        @media (max-width: 480px) {
            .products-grid {
                grid-template-columns: 1fr 1fr;
                gap: 12px;
            }
            .categories-grid {
                grid-template-columns: 1fr 1fr;
                gap: 12px;
            }
            .hero {
                margin: 10px 10px 0;
                min-height: 280px;
                padding: 24px 0;
                border-radius: var(--radius-sm);
            }
            .hero h1 {
                font-size: 22px;
            }
            .container {
                padding: 0 14px;
            }
            .deal-wrap .deal-content {
                padding: 20px 18px;
            }
            .deal-wrap .deal-img {
                flex: 0 0 160px;
            }
            .newsletter-wrap {
                padding: 24px 18px;
            }
            .newsletter-wrap .text h3 {
                font-size: 20px;
            }
            .product-card .body {
                padding: 12px 14px 10px;
            }
            .product-card .body h5 {
                font-size: 13px;
            }
            .product-card .body .price {
                font-size: 16px;
            }
            .product-card .footer {
                padding: 0 14px 14px;
            }
            .product-card .footer .add-btn {
                font-size: 12px;
                padding: 8px;
            }
            .timer-box {
                min-width: 48px;
                padding: 6px 10px;
            }
            .timer-box .num {
                font-size: 18px;
            }
            .timer-box .label {
                font-size: 9px;
            }
            .cat-card {
                padding: 16px 10px;
            }
            .cat-card .icon-wrap {
                width: 48px;
                height: 48px;
                font-size: 20px;
            }
            .cat-card h4 {
                font-size: 13px;
            }
        }
    </style>
</head>

<body>

    <!-- ===== HEADER ===== -->
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:14px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <i class="fas fa-leaf"></i>
                    <span>Vivid<span class="accent">Mart</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Main navigation">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:12px;">
                <div class="search-wrap" role="search">
                    <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
                    <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions">
                    <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
                    <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart">
                            <i class="fas fa-shopping-bag"></i>
                        </button>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Mobile Menu -->
        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                    <li><a href="#"><i class="far fa-user"></i> Account</a></li>
                    <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- ===== MAIN ===== -->
    <main>

        <!-- HERO -->
        <section class="hero" aria-label="Hero banner">
            <div class="container">
                <div class="badge"><i class="fas fa-sparkles"></i> Fresh Summer Collection</div>
                <h1>Elevate Your <br><span class="highlight">Everyday Style</span></h1>
                <p>Discover thoughtfully curated fashion, accessories & lifestyle goods. Free shipping on all orders.</p>
                <div class="actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Explore Now</button>
                    <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Flash Deals</button>
                </div>
            </div>
        </section>

        <!-- CATEGORIES -->
        <section class="section" id="categories" aria-labelledby="cat-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="cat-title">Shop by Category</h2>
                        <p>Find exactly what you need</p>
                    </div>
                    <a href="#" class="view-all">See All <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="categories-grid" id="categoriesGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- PRODUCTS -->
        <section class="section" id="products" aria-labelledby="prod-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="prod-title">Bestsellers</h2>
                        <p>Most loved items this season</p>
                    </div>
                    <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="products-grid" id="productsGrid" aria-live="polite"></div>
            </div>
        </section>

        <!-- DEAL -->
        <section class="section" id="deals" aria-labelledby="deals-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="deals-title">🔥 Daily Deal</h2>
                        <p>Limited time offer — don't miss out</p>
                    </div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=800&q=80" alt="Premium Watch" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-bolt"></i> 40% OFF</span>
                        <h3>Luxury Chronograph</h3>
                        <p class="desc">Elegant stainless steel case with sapphire crystal. Water-resistant and timeless.</p>
                        <div>
                            <span class="price-big">$249 <span class="old">$415</span></span>
                        </div>
                        <p class="stock">Only <strong>8</strong> units remaining — act fast!</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-box">
                                <div class="num" id="dealDays">0</div>
                                <div class="label">Days</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealHours">00</div>
                                <div class="label">Hours</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealMinutes">00</div>
                                <div class="label">Mins</div>
                            </div>
                            <div class="timer-box">
                                <div class="num" id="dealSeconds">00</div>
                                <div class="label">Secs</div>
                            </div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- TESTIMONIALS -->
        <section class="section" id="testimonials" aria-labelledby="test-title">
            <div class="container">
                <div class="section-header">
                    <div class="title-group">
                        <h2 id="test-title">Customer Stories</h2>
                        <p>What people are saying</p>
                    </div>
                </div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- NEWSLETTER -->
        <section class="section" aria-labelledby="news-title">
            <div class="container">
                <div class="newsletter-wrap">
                    <div class="text">
                        <h3 id="news-title">Get the Good Stuff</h3>
                        <p>Exclusive offers, early access & style inspiration</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required />
                        <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                        <div id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>

    </main>

    <!-- ===== FOOTER ===== -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <div class="brand">
                        <i class="fas fa-leaf"></i>
                        <span>Vivid<span class="accent">Mart</span></span>
                    </div>
                    <p>Fresh, modern e‑commerce for the style‑conscious. Quality you can trust.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col">
                    <h5>Company</h5>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Press</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Shipping Info</a></li>
                        <li><a href="#">Returns</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="col">
                    <h5>Legal</h5>
                    <ul>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms of Use</a></li>
                        <li><a href="#">Cookie Policy</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; <span id="year"></span> VividMart. All rights reserved.
            </div>
        </div>
    </footer>

    <!-- ===== SCRIPT ===== -->
    <script>
        // ============================================================
        // DATA
        // ============================================================
        const CATEGORIES = [
            { id: 'men', name: 'Men\'s Wear', icon: 'fa-user-tie', count: 38 },
            { id: 'women', name: 'Women\'s Wear', icon: 'fa-female', count: 44 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-gem', count: 29 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 33 },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-microchip', count: 22 },
            { id: 'home', name: 'Home & Living', icon: 'fa-couch', count: 27 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'Slim Fit Denim Jacket', price: 89, oldPrice: 129, rating: 5, reviews: 94, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1521223890158-f9f7c3d5d504?auto=format&fit=crop&w=600&q=80',
                category: 'Men\'s Wear' },
            { id: 2, title: 'Silk Midi Dress', price: 149, rating: 4, reviews: 112, badge: 'New',
                img: 'https://images.unsplash.com/photo-1539008835657-9e8e9680c956?auto=format&fit=crop&w=600&q=80',
                category: 'Women\'s Wear' },
            { id: 3, title: 'Leather Crossbody Bag', price: 79, oldPrice: 99, rating: 5, reviews: 67, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1548036328-c9fa89d128fa?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 4, title: 'Running Sneakers', price: 120, rating: 4, reviews: 156, badge: '',
                img: 'https://images.unsplash.com/photo-1556906781-9a4122f9d0c8?auto=format&fit=crop&w=600&q=80',
                category: 'Footwear' },
            { id: 5, title: 'Wireless Earbuds Pro', price: 199, rating: 5, reviews: 84, badge: 'New',
                img: 'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' },
            { id: 6, title: 'Plaid Throw Blanket', price: 59, rating: 5, reviews: 43, badge: '',
                img: 'https://images.unsplash.com/photo-1584100936596-c0654b7a3e9c?auto=format&fit=crop&w=600&q=80',
                category: 'Home & Living' },
            { id: 7, title: 'Minimalist Wallet', price: 39, oldPrice: 54, rating: 4, reviews: 78, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1627123424574-724758594e93?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 8, title: 'Smart Fitness Tracker', price: 149, rating: 5, reviews: 203, badge: '',
                img: 'https://images.unsplash.com/photo-1576243345690-4e4b79b63288?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' }
        ];

        const TESTIMONIALS = [{
            name: 'Emma Roberts',
            role: 'Fashion Blogger',
            avatar: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&w=80&q=80',
            text: 'Absolutely love the quality and style. My new go‑to for modern essentials!',
            stars: 5
        }, {
            name: 'David Park',
            role: 'Frequent Shopper',
            avatar: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=80&q=80',
            text: 'Fast delivery and great customer service. The sneakers are incredibly comfortable.',
            stars: 5
        }, {
            name: 'Lena Chen',
            role: 'Product Designer',
            avatar: 'https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?auto=format&fit=crop&w=80&q=80',
            text: 'Beautiful curation and thoughtful packaging. Highly recommend VividMart.',
            stars: 4
        }, {
            name: 'Michael Torres',
            role: 'Tech Enthusiast',
            avatar: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?auto=format&fit=crop&w=80&q=80',
            text: 'The earbuds are top‑notch. Amazing sound quality and battery life.',
            stars: 5
        }];

        // ============================================================
        // STATE
        // ============================================================
        let cartCount = 0;

        // ============================================================
        // DOM REFS
        // ============================================================
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const searchBtn = document.getElementById('searchBtn');
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        const newsletterForm = document.getElementById('newsletterForm');
        const newsletterEmail = document.getElementById('newsletterEmail');
        const newsletterMsg = document.getElementById('newsletterMsg');
        const testimonialsList = document.getElementById('testimonialsList');

        // ============================================================
        // RENDER FUNCTIONS
        // ============================================================
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="count">${cat.count} items</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) {
                productsGrid.innerHTML =
                    `<p style="grid-column:1/-1;text-align:center;padding:44px;color:var(--muted);font-size:16px;">No products found — try a different search.</p>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                const badgeClass = p.badge === 'Sale' ? 'sale' : '';
                const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
                const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` :
                    '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
                el.innerHTML = `
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${badgeHtml}
                        <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row">
                            <span class="price">$${p.price.toLocaleString()}</span>
                            ${oldPriceHtml}
                        </div>
                        <div class="rating">
                            ${stars} <span>(${p.reviews})</span>
                        </div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    const id = Number(this.dataset.id);
                    addToCart(id, this);
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
                    <blockquote>“${escapeHtml(t.text)}”</blockquote>
                    <div class="author">
                        <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
                        <div>
                            <div class="name">${escapeHtml(t.name)}</div>
                            <div class="role">${escapeHtml(t.role)}</div>
                        </div>
                    </div>
                `;
                testimonialsList.appendChild(el);
            });
        }

        // ============================================================
        // UTILITY FUNCTIONS
        // ============================================================
        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;'
            } [s]));
        }

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
                setTimeout(() => {
                    btnEl.innerHTML = orig;
                    btnEl.classList.remove('added');
                }, 1500);
            }
            const cartBtn = document.getElementById('cartBtn');
            cartBtn.style.color = 'var(--accent)';
            setTimeout(() => cartBtn.style.color = '', 400);
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        // ============================================================
        // DEAL TIMER
        // ============================================================
        (function setupDealTimer() {
            const now = new Date();
            const target = new Date(now.getTime() + (18 * 60 + 45) * 60 * 1000);

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

        // ============================================================
        // EVENT BINDINGS
        // ============================================================

        // Search
        searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        // Mobile menu
        mobileToggle.addEventListener('click', () => {
            const isOpen = mobileMenu.style.display === 'block';
            mobileMenu.style.display = isOpen ? 'none' : 'block';
            mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
        });

        mobileMenu.querySelectorAll('a').forEach(link => {
            link.addEventListener('click', () => {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            });
        });

        // Hero buttons
        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        document.getElementById('exploreDeals').addEventListener('click', () => {
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });

        // Deal buy
        document.getElementById('buyDeal').addEventListener('click', function() {
            cartCount++;
            updateCartCount();
            const orig = this.innerHTML;
            this.innerHTML = '<i class="fas fa-check"></i> Added!';
            this.style.background = 'var(--success)';
            setTimeout(() => {
                this.innerHTML = orig;
                this.style.background = '';
            }, 1600);
        });

        // Newsletter
        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.textContent = 'Please enter a valid email.';
                newsletterMsg.style.color = '#ffb3b3';
                newsletterMsg.style.display = 'block';
                return;
            }
            newsletterMsg.textContent = '✨ Subscribed! Check your inbox.';
            newsletterMsg.style.color = '#a8e6cf';
            newsletterMsg.style.display = 'block';
            newsletterEmail.value = '';
            setTimeout(() => {
                newsletterMsg.style.display = 'none';
            }, 3500);
        });

        // Cart
        document.getElementById('cartBtn').addEventListener('click', () => {
            alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`);
        });

        document.getElementById('year').textContent = new Date().getFullYear();

        // ============================================================
        // INIT
        // ============================================================
        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        updateCartCount();

        window.addEventListener('resize', () => {
            if (window.innerWidth > 768) {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            }
        });

        console.log('🌿 VividMart — fresh e‑commerce experience loaded.');
    </script>

</body>
</html>
