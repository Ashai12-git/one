```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="NexusShop modern e-commerce website">
<title>NexusShop | Modern Store</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root {
    --primary: #6c5ce7;
    --primary-dark: #5849d6;
    --accent: #00b894;
    --danger: #e74c3c;
    --warning: #f39c12;

    --bg: #f7f8fc;
    --card: #ffffff;
    --text: #1f2937;
    --muted: #6b7280;
    --border: #e5e7eb;

    --shadow: 0 10px 30px rgba(0,0,0,.08);
    --radius: 18px;
}

body.dark {
    --bg: #111827;
    --card: #1f2937;
    --text: #f9fafb;
    --muted: #9ca3af;
    --border: #374151;
    --shadow: 0 10px 30px rgba(0,0,0,.3);
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: "Inter", sans-serif;
    background: var(--bg);
    color: var(--text);
    line-height: 1.6;
    transition: .3s;
}

button,
input,
select {
    font: inherit;
}

button {
    cursor: pointer;
}

a {
    text-decoration: none;
    color: inherit;
}

.container {
    width: min(1180px, 92%);
    margin: auto;
}

/* ================= HEADER ================= */

header {
    position: sticky;
    top: 0;
    z-index: 1000;
    background: var(--card);
    border-bottom: 1px solid var(--border);
    backdrop-filter: blur(12px);
}

.header-inner {
    min-height: 72px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 20px;
}

.logo {
    font-size: 23px;
    font-weight: 800;
    display: flex;
    align-items: center;
    gap: 8px;
    white-space: nowrap;
}

.logo i {
    color: var(--primary);
}

.logo span {
    color: var(--primary);
}

nav ul {
    display: flex;
    gap: 25px;
    list-style: none;
}

nav a {
    color: var(--muted);
    font-weight: 600;
    transition: .2s;
}

nav a:hover,
nav a.active {
    color: var(--primary);
}

.header-actions {
    display: flex;
    align-items: center;
    gap: 8px;
}

.icon-btn {
    width: 42px;
    height: 42px;
    border: 0;
    border-radius: 50%;
    background: transparent;
    color: var(--text);
    position: relative;
}

.icon-btn:hover {
    background: var(--bg);
    color: var(--primary);
}

.counter {
    position: absolute;
    top: -2px;
    right: -2px;
    width: 19px;
    height: 19px;
    border-radius: 50%;
    background: var(--danger);
    color: white;
    font-size: 10px;
    display: grid;
    place-items: center;
}

.search-box {
    width: 260px;
    height: 42px;
    background: var(--bg);
    border: 1px solid var(--border);
    border-radius: 12px;
    display: flex;
    align-items: center;
    padding: 0 12px;
}

.search-box input {
    width: 100%;
    border: 0;
    outline: 0;
    background: transparent;
    color: var(--text);
}

.search-box button {
    border: 0;
    background: transparent;
    color: var(--muted);
}

.mobile-menu-btn {
    display: none;
}

/* ================= HERO ================= */

.hero {
    margin: 25px auto;
    width: min(1180px, 92%);
    min-height: 470px;
    border-radius: 28px;
    display: flex;
    align-items: center;
    padding: 60px;
    background:
        linear-gradient(90deg, rgba(17,24,39,.92), rgba(17,24,39,.35)),
        url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1600&q=85")
        center/cover;
    color: white;
}

.hero-content {
    max-width: 600px;
}

.badge {
    display: inline-flex;
    background: rgba(255,255,255,.14);
    border: 1px solid rgba(255,255,255,.25);
    padding: 7px 14px;
    border-radius: 30px;
    font-size: 13px;
    margin-bottom: 18px;
}

.hero h1 {
    font-size: clamp(38px, 6vw, 64px);
    line-height: 1.05;
    margin-bottom: 18px;
}

.hero p {
    color: #e5e7eb;
    max-width: 520px;
    margin-bottom: 25px;
}

.btn {
    border: 0;
    border-radius: 11px;
    padding: 12px 20px;
    font-weight: 700;
    transition: .2s;
}

.btn-primary {
    background: var(--primary);
    color: white;
}

.btn-primary:hover {
    background: var(--primary-dark);
    transform: translateY(-2px);
}

.btn-outline {
    background: transparent;
    border: 1px solid var(--border);
    color: var(--text);
}

.hero .btn-outline {
    color: white;
    border-color: rgba(255,255,255,.4);
}

.hero-actions {
    display: flex;
    gap: 12px;
}

/* ================= SECTION ================= */

.section {
    padding: 55px 0;
}

.section-header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 25px;
}

.section-header h2 {
    font-size: 28px;
}

.section-header p {
    color: var(--muted);
    font-size: 14px;
}

.view-all {
    color: var(--primary);
    font-weight: 700;
}

/* ================= CATEGORIES ================= */

.categories {
    display: grid;
    grid-template-columns: repeat(6, 1fr);
    gap: 15px;
}

.category-card {
    background: var(--card);
    border: 1px solid var(--border);
    padding: 22px 12px;
    border-radius: var(--radius);
    text-align: center;
    cursor: pointer;
    transition: .25s;
}

.category-card:hover,
.category-card.active {
    transform: translateY(-5px);
    border-color: var(--primary);
    box-shadow: var(--shadow);
}

.category-icon {
    width: 52px;
    height: 52px;
    margin: auto auto 12px;
    border-radius: 15px;
    background: rgba(108,92,231,.1);
    color: var(--primary);
    display: grid;
    place-items: center;
    font-size: 22px;
}

.category-card h4 {
    font-size: 14px;
}

.category-card small {
    color: var(--muted);
}

/* ================= PRODUCTS ================= */

.product-controls {
    display: flex;
    gap: 10px;
}

select {
    background: var(--card);
    border: 1px solid var(--border);
    color: var(--text);
    padding: 10px 13px;
    border-radius: 10px;
    outline: none;
}

.products {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 20px;
}

.product {
    background: var(--card);
    border: 1px solid var(--border);
    border-radius: var(--radius);
    overflow: hidden;
    transition: .25s;
    position: relative;
}

.product:hover {
    transform: translateY(-5px);
    box-shadow: var(--shadow);
}

.product-image {
    height: 230px;
    position: relative;
    background: #f1f2f6;
}

.product-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.product-badge {
    position: absolute;
    top: 12px;
    left: 12px;
    padding: 5px 10px;
    border-radius: 20px;
    background: var(--primary);
    color: white;
    font-size: 11px;
    font-weight: 700;
}

.product-badge.sale {
    background: var(--danger);
}

.wishlist {
    position: absolute;
    right: 12px;
    top: 12px;
    width: 36px;
    height: 36px;
    border: 0;
    border-radius: 50%;
    background: white;
    color: #555;
}

.wishlist.active {
    color: var(--danger);
}

.product-body {
    padding: 17px;
}

.product-category {
    color: var(--muted);
    font-size: 11px;
    text-transform: uppercase;
    font-weight: 700;
}

.product-title {
    margin: 6px 0;
    font-size: 16px;
}

.rating {
    color: #f1b90b;
    font-size: 13px;
}

.rating span {
    color: var(--muted);
}

.price-row {
    display: flex;
    align-items: center;
    gap: 8px;
    margin: 9px 0 14px;
}

.price {
    font-size: 19px;
    font-weight: 800;
}

.old-price {
    color: var(--muted);
    text-decoration: line-through;
    font-size: 13px;
}

.add-cart {
    width: 100%;
    background: var(--primary);
    color: white;
}

.add-cart:hover {
    background: var(--primary-dark);
}

/* ================= DEAL ================= */

.deal {
    background: linear-gradient(135deg,#171c2c,#252d48);
    color: white;
    border-radius: 25px;
    overflow: hidden;
    display: grid;
    grid-template-columns: 1fr 1fr;
}

.deal img {
    width: 100%;
    height: 100%;
    min-height: 340px;
    object-fit: cover;
}

.deal-content {
    padding: 45px;
    display: flex;
    justify-content: center;
    flex-direction: column;
}

.deal-content h2 {
    font-size: 36px;
    margin: 12px 0;
}

.deal-price {
    font-size: 30px;
    font-weight: 800;
}

.timer {
    display: flex;
    gap: 10px;
    margin: 25px 0;
}

.timer-box {
    min-width: 65px;
    padding: 10px;
    border-radius: 10px;
    background: rgba(255,255,255,.1);
    text-align: center;
}

.timer-box strong {
    display: block;
    font-size: 20px;
}

.timer-box small {
    color: #cbd5e1;
}

/* ================= TESTIMONIALS ================= */

.testimonials {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
}

.testimonial {
    background: var(--card);
    border: 1px solid var(--border);
    border-radius: var(--radius);
    padding: 25px;
}

.testimonial .stars {
    color: #f1b90b;
}

.testimonial p {
    margin: 15px 0;
    color: var(--muted);
}

.user {
    display: flex;
    align-items: center;
    gap: 10px;
}

.user img {
    width: 42px;
    height: 42px;
    border-radius: 50%;
    object-fit: cover;
}

/* ================= NEWSLETTER ================= */

.newsletter {
    background: linear-gradient(135deg,var(--primary),#8e7df3);
    color: white;
    padding: 45px;
    border-radius: 25px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 25px;
}

.newsletter h2 {
    margin-bottom: 5px;
}

.newsletter-form {
    display: flex;
    gap: 8px;
}

.newsletter-form input {
    padding: 13px;
    border: 0;
    border-radius: 10px;
    outline: 0;
    min-width: 260px;
}

.newsletter-form button {
    border: 0;
    background: white;
    color: var(--primary);
    padding: 0 20px;
    border-radius: 10px;
    font-weight: 700;
}

/* ================= FOOTER ================= */

footer {
    background: #111827;
    color: white;
    padding: 55px 0 20px;
    margin-top: 50px;
}

.footer-grid {
    display: grid;
    grid-template-columns: 2fr repeat(3,1fr);
    gap: 40px;
}

.footer-grid h4 {
    margin-bottom: 15px;
}

.footer-grid ul {
    list-style: none;
}

.footer-grid li {
    margin: 9px 0;
    color: #9ca3af;
}

.socials {
    display: flex;
    gap: 10px;
    margin-top: 20px;
}

.socials a {
    width: 38px;
    height: 38px;
    border-radius: 50%;
    background: #1f2937;
    display: grid;
    place-items: center;
}

.footer-bottom {
    border-top: 1px solid #374151;
    margin-top: 35px;
    padding-top: 20px;
    color: #9ca3af;
    text-align: center;
    font-size: 13px;
}

/* ================= DRAWER ================= */

.overlay {
    position: fixed;
    inset: 0;
    background: rgba(0,0,0,.5);
    z-index: 1999;
    display: none;
}

.overlay.show {
    display: block;
}

.drawer {
    position: fixed;
    right: -430px;
    top: 0;
    height: 100vh;
    width: min(430px,100%);
    background: var(--card);
    z-index: 2000;
    transition: .3s;
    display: flex;
    flex-direction: column;
}

.drawer.open {
    right: 0;
}

.drawer-header {
    padding: 20px;
    border-bottom: 1px solid var(--border);
    display: flex;
    justify-content: space-between;
}

.drawer-body {
    flex: 1;
    overflow-y: auto;
    padding: 20px;
}

.drawer-footer {
    border-top: 1px solid var(--border);
    padding: 20px;
}

.cart-item {
    display: flex;
    gap: 12px;
    padding: 12px 0;
    border-bottom: 1px solid var(--border);
}

.cart-item img {
    width: 75px;
    height: 75px;
    object-fit: cover;
    border-radius: 10px;
}

.cart-info {
    flex: 1;
}

.cart-info h4 {
    font-size: 14px;
}

.qty {
    display: flex;
    align-items: center;
    gap: 7px;
    margin-top: 8px;
}

.qty button {
    width: 25px;
    height: 25px;
    border: 1px solid var(--border);
    background: var(--bg);
    color: var(--text);
    border-radius: 5px;
}

.remove {
    border: 0;
    background: transparent;
    color: var(--danger);
}

.total-row {
    display: flex;
    justify-content: space-between;
    margin-bottom: 12px;
}

.coupon {
    display: flex;
    margin: 15px 0;
}

.coupon input {
    flex: 1;
    border: 1px solid var(--border);
    background: var(--bg);
    color: var(--text);
    padding: 10px;
    border-radius: 8px 0 0 8px;
}

.coupon button {
    border: 0;
    background: var(--primary);
    color: white;
    padding: 0 14px;
    border-radius: 0 8px 8px 0;
}

/* ================= MODAL ================= */

.modal {
    position: fixed;
    inset: 0;
    z-index: 3000;
    background: rgba(0,0,0,.6);
    display: none;
    place-items: center;
    padding: 20px;
}

.modal.show {
    display: grid;
}

.modal-content {
    background: var(--card);
    width: min(700px,100%);
    max-height: 90vh;
    overflow-y: auto;
    border-radius: 20px;
    padding: 25px;
    position: relative;
}

.modal-close {
    position: absolute;
    top: 15px;
    right: 15px;
    border: 0;
    background: var(--bg);
    color: var(--text);
    width: 35px;
    height: 35px;
    border-radius: 50%;
}

.quick-view {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 25px;
}

.quick-view img {
    width: 100%;
    border-radius: 15px;
}

.quick-view h2 {
    margin: 15px 0 8px;
}

.quick-price {
    font-size: 28px;
    font-weight: 800;
    margin: 15px 0;
}

/* ================= TOAST ================= */

.toast-container {
    position: fixed;
    right: 20px;
    bottom: 20px;
    z-index: 5000;
    display: flex;
    flex-direction: column;
    gap: 10px;
}

.toast {
    background: #111827;
    color: white;
    padding: 13px 18px;
    border-radius: 10px;
    box-shadow: var(--shadow);
    animation: toastIn .3s ease;
}

@keyframes toastIn {
    from {
        transform: translateX(100px);
        opacity: 0;
    }
    to {
        transform: translateX(0);
        opacity: 1;
    }
}

/* ================= BACK TO TOP ================= */

#topBtn {
    position: fixed;
    bottom: 25px;
    left: 25px;
    width: 42px;
    height: 42px;
    border: 0;
    border-radius: 50%;
    background: var(--primary);
    color: white;
    display: none;
    z-index: 1000;
}

/* ================= RESPONSIVE ================= */

@media(max-width:1000px) {
    .categories {
        grid-template-columns: repeat(3,1fr);
    }

    .products {
        grid-template-columns: repeat(3,1fr);
    }
}

@media(max-width:800px) {
    nav,
    .search-box {
        display: none;
    }

    .mobile-menu-btn {
        display: block;
    }

    .mobile-nav {
        display: none;
        border-top: 1px solid var(--border);
        padding: 15px 0;
    }

    .mobile-nav.show {
        display: block;
    }

    .mobile-nav a {
        display: block;
        padding: 10px 0;
    }

    .hero {
        padding: 35px;
        min-height: 420px;
    }

    .deal {
        grid-template-columns: 1fr;
    }

    .deal img {
        max-height: 280px;
    }

    .testimonials {
        grid-template-columns: 1fr;
    }

    .newsletter {
        flex-direction: column;
        align-items: flex-start;
    }

    .footer-grid {
        grid-template-columns: 1fr 1fr;
    }
}

@media(max-width:600px) {
    .header-inner {
        min-height: 62px;
    }

    .categories,
    .products {
        grid-template-columns: repeat(2,1fr);
        gap: 12px;
    }

    .hero {
        width: 94%;
        padding: 25px;
        border-radius: 20px;
    }

    .hero h1 {
        font-size: 36px;
    }

    .section {
        padding: 35px 0;
    }

    .section-header {
        align-items: flex-start;
        gap: 10px;
        flex-direction: column;
    }

    .product-controls {
        width: 100%;
    }

    .product-controls select {
        flex: 1;
    }

    .newsletter {
        padding: 30px 20px;
    }

    .newsletter-form {
        width: 100%;
        flex-direction: column;
    }

    .newsletter-form input {
        min-width: 0;
        width: 100%;
    }

    .newsletter-form button {
        padding: 12px;
    }

    .quick-view {
        grid-template-columns: 1fr;
    }

    .footer-grid {
        grid-template-columns: 1fr;
    }
}
</style>
</head>

<body>

<!-- ================= HEADER ================= -->

<header>
    <div class="container header-inner">

        <button class="icon-btn mobile-menu-btn" id="mobileMenuBtn">
            <i class="fa-solid fa-bars"></i>
        </button>

        <a href="#" class="logo">
            <i class="fa-solid fa-store"></i>
            Nexus<span>Shop</span>
        </a>

        <nav>
            <ul>
                <li><a href="#home" class="active">Home</a></li>
                <li><a href="#categories">Categories</a></li>
                <li><a href="#products">Products</a></li>
                <li><a href="#deals">Deals</a></li>
                <li><a href="#reviews">Reviews</a></li>
            </ul>
        </nav>

        <div class="search-box">
            <input id="searchInput" type="search" placeholder="Search products...">
            <button id="searchBtn">
                <i class="fa-solid fa-search"></i>
            </button>
        </div>

        <div class="header-actions">

            <button class="icon-btn" id="themeBtn" title="Dark mode">
                <i class="fa-solid fa-moon"></i>
            </button>

            <button class="icon-btn" id="wishlistBtn" title="Wishlist">
                <i class="fa-regular fa-heart"></i>
                <span class="counter" id="wishlistCount">0</span>
            </button>

            <button class="icon-btn" id="cartBtn" title="Cart">
                <i class="fa-solid fa-bag-shopping"></i>
                <span class="counter" id="cartCount">0</span>
            </button>

        </div>
    </div>

    <div class="container mobile-nav" id="mobileNav">
        <a href="#home">Home</a>
        <a href="#categories">Categories</a>
        <a href="#products">Products</a>
        <a href="#deals">Deals</a>
        <a href="#reviews">Reviews</a>
    </div>
</header>

<!-- ================= HERO ================= -->

<section class="hero" id="home">
    <div class="hero-content">

        <div class="badge">
            <i class="fa-solid fa-sparkles"></i>
            New Collection 2026
        </div>

        <h1>Everything You Love. In One Place.</h1>

        <p>
            Discover premium electronics, fashion, accessories and
            everyday essentials at amazing prices.
        </p>

        <div class="hero-actions">
            <button class="btn btn-primary" id="shopBtn">
                Shop Now
                <i class="fa-solid fa-arrow-right"></i>
            </button>

            <button class="btn btn-outline" id="dealBtn">
                View Deals
            </button>
        </div>

    </div>
</section>

<!-- ================= CATEGORIES ================= -->

<section class="section" id="categories">
    <div class="container">

        <div class="section-header">
            <div>
                <h2>Browse Categories</h2>
                <p>Find products by category</p>
            </div>
            <button class="view-all" id="allCategoriesBtn">
                View All
            </button>
        </div>

        <div class="categories" id="categoriesGrid"></div>

    </div>
</section>

<!-- ================= PRODUCTS ================= -->

<section class="section" id="products">

    <div class="container">

        <div class="section-header">

            <div>
                <h2>Trending Products</h2>
                <p id="resultText">Popular products from our store</p>
            </div>

            <div class="product-controls">

                <select id="categoryFilter">
                    <option value="all">All Categories</option>
                </select>

                <select id="sortSelect">
                    <option value="default">Sort By</option>
                    <option value="price-low">Price: Low → High</option>
                    <option value="price-high">Price: High → Low</option>
                    <option value="rating">Highest Rated</option>
                    <option value="name">Name A → Z</option>
                </select>

            </div>

        </div>

        <div class="products" id="productsGrid"></div>

    </div>

</section>

<!-- ================= FLASH DEAL ================= -->

<section class="section" id="deals">

    <div class="container">

        <div class="deal">

            <img
                src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=85"
                alt="MacBook">

            <div class="deal-content">

                <span class="badge">
                    <i class="fa-solid fa-bolt"></i>
                    Limited Time Offer
                </span>

                <h2>MacBook Air M2</h2>

                <p>
                    Thin, powerful and built for everyday productivity.
                    Get this special price while stock lasts.
                </p>

                <div class="deal-price">
                    $999
                    <del>$1,199</del>
                </div>

                <div class="timer">

                    <div class="timer-box">
                        <strong id="days">00</strong>
                        <small>Days</small>
                    </div>

                    <div class="timer-box">
                        <strong id="hours">00</strong>
                        <small>Hours</small>
                    </div>

                    <div class="timer-box">
                        <strong id="minutes">00</strong>
                        <small>Mins</small>
                    </div>

                    <div class="timer-box">
                        <strong id="seconds">00</strong>
                        <small>Secs</small>
                    </div>

                </div>

                <button class="btn btn-primary" id="dealCartBtn">
                    <i class="fa-solid fa-cart-plus"></i>
                    Add Deal To Cart
                </button>

            </div>

        </div>

    </div>

</section>

<!-- ================= REVIEWS ================= -->

<section class="section" id="reviews">

    <div class="container">

        <div class="section-header">
            <div>
                <h2>What Customers Say</h2>
                <p>Real experiences from our shoppers</p>
            </div>
        </div>

        <div class="testimonials">

            <div class="testimonial">

                <div class="stars">★★★★★</div>

                <p>
                    "Fast delivery and excellent product quality.
                    The checkout process was extremely smooth."
                </p>

                <div class="user">
                    <img src="https://i.pravatar.cc/100?img=47">
                    <div>
                        <strong>Ava Martin</strong>
                        <small>Verified Buyer</small>
                    </div>
                </div>

            </div>

            <div class="testimonial">

                <div class="stars">★★★★☆</div>

                <p>
                    "Great selection of products and very easy to
                    find exactly what I was looking for."
                </p>

                <div class="user">
                    <img src="https://i.pravatar.cc/100?img=12">
                    <div>
                        <strong>Michael Lee</strong>
                        <small>Frequent Shopper</small>
                    </div>
                </div>

            </div>

            <div class="testimonial">

                <div class="stars">★★★★★</div>

                <p>
                    "The packaging was excellent and everything arrived
                    exactly as expected."
                </p>

                <div class="user">
                    <img src="https://i.pravatar.cc/100?img=32">
                    <div>
                        <strong>Sophia Chen</strong>
                        <small>Verified Buyer</small>
                    </div>
                </div>

            </div>

        </div>

    </div>

</section>

<!-- ================= NEWSLETTER ================= -->

<section class="section">

    <div class="container">

        <div class="newsletter">

            <div>
                <h2>Stay In The Loop</h2>
                <p>
                    Get exclusive offers, discounts and new arrivals.
                </p>
            </div>

            <form class="newsletter-form" id="newsletterForm">

                <input
                    type="email"
                    id="newsletterEmail"
                    placeholder="Enter your email"
                    required>

                <button type="submit">
                    Subscribe
                </button>

            </form>

        </div>

    </div>

</section>

<!-- ================= FOOTER ================= -->

<footer>

    <div class="container">

        <div class="footer-grid">

            <div>
                <div class="logo">
                    <i class="fa-solid fa-store"></i>
                    Nexus<span>Shop</span>
                </div>

                <p style="color:#9ca3af;margin-top:12px;">
                    A modern e-commerce experience built for everyone.
                </p>

                <div class="socials">
                    <a href="#"><i class="fa-brands fa-facebook"></i></a>
                    <a href="#"><i class="fa-brands fa-instagram"></i></a>
                    <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
                    <a href="#"><i class="fa-brands fa-youtube"></i></a>
                </div>
            </div>

            <div>
                <h4>Shop</h4>
                <ul>
                    <li><a href="#products">All Products</a></li>
                    <li><a href="#categories">Categories</a></li>
                    <li><a href="#deals">Deals</a></li>
                </ul>
            </div>

            <div>
                <h4>Support</h4>
                <ul>
                    <li><a href="#">Help Center</a></li>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">Returns</a></li>
                </ul>
            </div>

            <div>
                <h4>Company</h4>
                <ul>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>

        </div>

        <div class="footer-bottom">
            © <span id="year"></span> NexusShop. All rights reserved.
        </div>

    </div>

</footer>

<!-- ================= CART DRAWER ================= -->

<div class="overlay" id="overlay"></div>

<aside class="drawer" id="cartDrawer">

    <div class="drawer-header">
        <h3>
            <i class="fa-solid fa-cart-shopping"></i>
            Your Cart
        </h3>

        <button class="icon-btn" id="closeCart">
            <i class="fa-solid fa-xmark"></i>
        </button>
    </div>

    <div class="drawer-body" id="cartItems"></div>

    <div class="drawer-footer">

        <div class="coupon">
            <input id="couponInput" placeholder="Coupon code">
            <button id="couponBtn">Apply</button>
        </div>

        <div class="total-row">
            <span>Subtotal</span>
            <strong id="subtotal">$0.00</strong>
        </div>

        <div class="total-row">
            <span>Discount</span>
            <strong id="discount">$0.00</strong>
        </div>

        <div class="total-row">
            <span>Shipping</span>
            <strong id="shipping">$0.00</strong>
        </div>

        <div class="total-row" style="font-size:20px;">
            <strong>Total</strong>
            <strong id="total">$0.00</strong>
        </div>

        <button class="btn btn-primary" style="width:100%;" id="checkoutBtn">
            Proceed To Checkout
        </button>

    </div>

</aside>

<!-- ================= QUICK VIEW MODAL ================= -->

<div class="modal" id="productModal">

    <div class="modal-content">

        <button class="modal-close" id="closeProductModal">
            <i class="fa-solid fa-xmark"></i>
        </button>

        <div id="quickView"></div>

    </div>

</div>

<!-- ================= CHECKOUT MODAL ================= -->

<div class="modal" id="checkoutModal">

    <div class="modal-content">

        <button class="modal-close" id="closeCheckout">
            <i class="fa-solid fa-xmark"></i>
        </button>

        <h2>Checkout</h2>

        <p style="color:var(--muted);margin-bottom:20px;">
            Enter your details to complete the order.
        </p>

        <form id="checkoutForm">

            <label>Full Name</label>
            <input required
                   style="width:100%;padding:12px;margin:7px 0 15px;border:1px solid var(--border);background:var(--bg);color:var(--text);border-radius:8px;"
                   placeholder="Your name">

            <label>Email</label>
            <input type="email"
                   required
                   style="width:100%;padding:12px;margin:7px 0 15px;border:1px solid var(--border);background:var(--bg);color:var(--text);border-radius:8px;"
                   placeholder="you@example.com">

            <label>Delivery Address</label>
            <textarea required
                      style="width:100%;height:90px;padding:12px;margin:7px 0 15px;border:1px solid var(--border);background:var(--bg);color:var(--text);border-radius:8px;"
                      placeholder="Enter delivery address"></textarea>

            <button class="btn btn-primary" style="width:100%;">
                Place Order
            </button>

        </form>

    </div>

</div>

<!-- ================= TOAST ================= -->

<div class="toast-container" id="toastContainer"></div>

<button id="topBtn">
    <i class="fa-solid fa-arrow-up"></i>
</button>

<script>

/* ============================================================
   PRODUCT DATA
============================================================ */

const PRODUCTS = [

    {
        id: 1,
        name: "iPhone 14 Pro Max",
        category: "Smartphones",
        price: 1099,
        oldPrice: 1199,
        rating: 5,
        reviews: 128,
        badge: "New",
        image: "https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 2,
        name: "MacBook Pro 14",
        category: "Laptops",
        price: 1999,
        rating: 5,
        reviews: 86,
        badge: "",
        image: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 3,
        name: "Apple Watch Series 8",
        category: "Accessories",
        price: 349,
        oldPrice: 399,
        rating: 5,
        reviews: 214,
        badge: "Sale",
        image: "https://images.unsplash.com/photo-1546868871-7041f2a55e8f?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 4,
        name: "Nike Air Max",
        category: "Footwear",
        price: 150,
        rating: 4,
        reviews: 53,
        badge: "",
        image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 5,
        name: "Sony A7 IV Camera",
        category: "Gadgets",
        price: 2499,
        rating: 5,
        reviews: 42,
        badge: "New",
        image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 6,
        name: "Sony WH-1000XM5",
        category: "Gadgets",
        price: 399,
        rating: 5,
        reviews: 156,
        badge: "",
        image: "https://images.unsplash.com/photo-1546435770-a3e426bf472b?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 7,
        name: "Travel Backpack",
        category: "Accessories",
        price: 79,
        oldPrice: 99,
        rating: 4,
        reviews: 67,
        badge: "Sale",
        image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 8,
        name: "Premium Hoodie",
        category: "Clothing",
        price: 69,
        rating: 4,
        reviews: 92,
        badge: "",
        image: "https://images.unsplash.com/photo-1556821840-3a63f95609a7?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 9,
        name: "Samsung Galaxy S24",
        category: "Smartphones",
        price: 899,
        rating: 5,
        reviews: 145,
        badge: "New",
        image: "https://images.unsplash.com/photo-1610945265064-0e34e5519bbf?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 10,
        name: "Mechanical Keyboard",
        category: "Gadgets",
        price: 119,
        rating: 4,
        reviews: 77,
        badge: "",
        image: "https://images.unsplash.com/photo-1587829741301-dc798b83add3?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 11,
        name: "Running Shoes",
        category: "Footwear",
        price: 110,
        oldPrice: 140,
        rating: 5,
        reviews: 118,
        badge: "Sale",
        image: "https://images.unsplash.com/photo-1551107696-a4b0c5a0d9a2?auto=format&fit=crop&w=700&q=80"
    },

    {
        id: 12,
        name: "Classic Sunglasses",
        category: "Accessories",
        price: 59,
        rating: 4,
        reviews: 45,
        badge: "",
        image: "https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=700&q=80"
    }

];


/* ============================================================
   CATEGORIES
============================================================ */

const CATEGORY_ICONS = {
    Smartphones: "fa-mobile-screen-button",
    Laptops: "fa-laptop",
    Clothing: "fa-shirt",
    Gadgets: "fa-headphones",
    Footwear: "fa-shoe-prints",
    Accessories: "fa-watch"
};


/* ============================================================
   STATE
============================================================ */

let cart = JSON.parse(localStorage.getItem("nexusCart")) || [];

let wishlist =
    JSON.parse(localStorage.getItem("nexusWishlist")) || [];

let discountAmount = 0;


/* ============================================================
   DOM
============================================================ */

const productsGrid =
    document.getElementById("productsGrid");

const categoriesGrid =
    document.getElementById("categoriesGrid");

const categoryFilter =
    document.getElementById("categoryFilter");

const sortSelect =
    document.getElementById("sortSelect");

const searchInput =
    document.getElementById("searchInput");

const cartDrawer =
    document.getElementById("cartDrawer");

const overlay =
    document.getElementById("overlay");

const cartItems =
    document.getElementById("cartItems");

const cartCount =
    document.getElementById("cartCount");

const wishlistCount =
    document.getElementById("wishlistCount");

const subtotalEl =
    document.getElementById("subtotal");

const discountEl =
    document.getElementById("discount");

const shippingEl =
    document.getElementById("shipping");

const totalEl =
    document.getElementById("total");


/* ============================================================
   SAVE STATE
============================================================ */

function saveState() {

    localStorage.setItem(
        "nexusCart",
        JSON.stringify(cart)
    );

    localStorage.setItem(
        "nexusWishlist",
        JSON.stringify(wishlist)
    );
}


/* ============================================================
   TOAST
============================================================ */

function toast(message) {

    const container =
        document.getElementById("toastContainer");

    const item =
        document.createElement("div");

    item.className = "toast";

    item.innerHTML = message;

    container.appendChild(item);

    setTimeout(() => {
        item.remove();
    }, 2500);
}


/* ============================================================
   CATEGORIES
============================================================ */

function renderCategories() {

    const categories =
        [...new Set(PRODUCTS.map(p => p.category))];

    categoriesGrid.innerHTML = "";

    categoryFilter.innerHTML =
        `<option value="all">All Categories</option>`;

    categories.forEach(category => {

        const count =
            PRODUCTS.filter(
                p => p.category === category
            ).length;

        const card =
            document.createElement("div");

        card.className = "category-card";

        card.innerHTML = `
            <div class="category-icon">
                <i class="fa-solid ${CATEGORY_ICONS[category] || "fa-box"}"></i>
            </div>

            <h4>${category}</h4>

            <small>${count} products</small>
        `;

        card.addEventListener("click", () => {

            categoryFilter.value = category;

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

            renderProducts();
        });

        categoriesGrid.appendChild(card);

        const option =
            document.createElement("option");

        option.value = category;
        option.textContent = category;

        categoryFilter.appendChild(option);

    });
}


/* ============================================================
   PRODUCTS
============================================================ */

function renderProducts() {

    let products = [...PRODUCTS];

    const search =
        searchInput.value
            .trim()
            .toLowerCase();

    const category =
        categoryFilter.value;

    const sort =
        sortSelect.value;


    if (search) {

        products =
            products.filter(product =>
                product.name
                    .toLowerCase()
                    .includes(search) ||

                product.category
                    .toLowerCase()
                    .includes(search)
            );
    }


    if (category !== "all") {

        products =
            products.filter(
                p => p.category === category
            );
    }


    if (sort === "price-low") {

        products.sort(
            (a,b) => a.price - b.price
        );

    } else if (sort === "price-high") {

        products.sort(
            (a,b) => b.price - a.price
        );

    } else if (sort === "rating") {

        products.sort(
            (a,b) => b.rating - a.rating
        );

    } else if (sort === "name") {

        products.sort(
            (a,b) => a.name.localeCompare(b.name)
        );
    }


    document.getElementById("resultText").textContent =
        `${products.length} product${products.length !== 1 ? "s" : ""} found`;

    productsGrid.innerHTML = "";


    if (!products.length) {

        productsGrid.innerHTML = `
            <div style="
                grid-column:1/-1;
                text-align:center;
                padding:60px;
            ">
                <i class="fa-solid fa-box-open"
                   style="font-size:45px;color:var(--muted);">
                </i>

                <h3 style="margin-top:15px;">
                    No products found
                </h3>

                <p style="color:var(--muted);">
                    Try another search or category.
                </p>
            </div>
        `;

        return;
    }


    products.forEach(product => {

        const card =
            document.createElement("article");

        card.className = "product";


        const wished =
            wishlist.includes(product.id);


        const stars =
            "★".repeat(product.rating) +
            "☆".repeat(5-product.rating);


        card.innerHTML = `

            <div class="product-image">

                <img
                    src="${product.image}"
                    alt="${product.name}"
                    loading="lazy">

                ${
                    product.badge
                    ?
                    `<span class="product-badge ${
                        product.badge === "Sale"
                        ? "sale"
                        : ""
                    }">
                        ${product.badge}
                    </span>`
                    : ""
                }

                <button
                    class="wishlist ${wished ? "active" : ""}"
                    data-wishlist="${product.id}">
                    <i class="${
                        wished
                        ? "fa-solid"
                        : "fa-regular"
                    } fa-heart"></i>
                </button>

            </div>


            <div class="product-body">

                <div class="product-category">
                    ${product.category}
                </div>

                <h3 class="product-title">
                    ${product.name}
                </h3>

                <div class="rating">
                    ${stars}
                    <span>(${product.reviews})</span>
                </div>

                <div class="price-row">

                    <span class="price">
                        $${product.price.toLocaleString()}
                    </span>

                    ${
                        product.oldPrice
                        ?
                        `<span class="old-price">
                            $${product.oldPrice.toLocaleString()}
                        </span>`
                        : ""
                    }

                </div>

                <button
                    class="btn add-cart"
                    data-cart="${product.id}">
                    <i class="fa-solid fa-cart-plus"></i>
                    Add To Cart
                </button>

                <button
                    class="btn btn-outline"
                    style="width:100%;margin-top:7px;"
                    data-view="${product.id}">
                    Quick View
                </button>

            </div>
        `;


        productsGrid.appendChild(card);

    });


    document
        .querySelectorAll("[data-cart]")
        .forEach(button => {

            button.addEventListener("click", () => {

                addToCart(
                    Number(button.dataset.cart)
                );

            });

        });


    document
        .querySelectorAll("[data-wishlist]")
        .forEach(button => {

            button.addEventListener("click", () => {

                toggleWishlist(
                    Number(button.dataset.wishlist)
                );

            });

        });


    document
        .querySelectorAll("[data-view]")
        .forEach(button => {

            button.addEventListener("click", () => {

                openQuickView(
                    Number(button.dataset.view)
                );

            });

        });

}


/* ============================================================
   CART
============================================================ */

function addToCart(productId) {

    const existing =
        cart.find(item =>
            item.id === productId
        );

    if (existing) {

        existing.quantity++;

    } else {

        cart.push({
            id: productId,
            quantity: 1
        });
    }

    saveState();

    updateCart();

    toast(
        '<i class="fa-solid fa-check"></i> Product added to cart'
    );
}


function removeFromCart(productId) {

    cart =
        cart.filter(
            item => item.id !== productId
        );

    saveState();

    updateCart();
}


function changeQuantity(productId, change) {

    const item =
        cart.find(
            item => item.id === productId
        );

    if (!item) return;

    item.quantity += change;

    if (item.quantity <= 0) {

        removeFromCart(productId);

        return;
    }

    saveState();

    updateCart();
}


function updateCart() {

    cartItems.innerHTML = "";

    let subtotal = 0;

    let totalItems = 0;


    if (!cart.length) {

        cartItems.innerHTML = `
            <div style="
                text-align:center;
                padding:70px 10px;
                color:var(--muted);
            ">

                <i class="fa-solid fa-cart-shopping"
                   style="font-size:50px;margin-bottom:15px;">
                </i>

                <h3>Your cart is empty</h3>

                <p>Add some products to get started.</p>

            </div>
        `;

    }


    cart.forEach(item => {

        const product =
            PRODUCTS.find(
                p => p.id === item.id
            );

        if (!product) return;


        subtotal +=
            product.price * item.quantity;

        totalItems += item.quantity;


        const div =
            document.createElement("div");

        div.className = "cart-item";

        div.innerHTML = `

            <img src="${product.image}"
                 alt="${product.name}">

            <div class="cart-info">

                <h4>${product.name}</h4>

                <strong>
                    $${product.price.toLocaleString()}
                </strong>

                <div class="qty">

                    <button
                        data-minus="${product.id}">
                        −
                    </button>

                    <span>
                        ${item.quantity}
                    </span>

                    <button
                        data-plus="${product.id}">
                        +
                    </button>

                    <button
                        class="remove"
                        data-remove="${product.id}">
                        <i class="fa-solid fa-trash"></i>
                    </button>

                </div>

            </div>
        `;

        cartItems.appendChild(div);

    });


    const shipping =
        subtotal > 100 || subtotal === 0
        ? 0
        : 10;

    const total =
        Math.max(
            0,
            subtotal - discountAmount + shipping
        );


    cartCount.textContent = totalItems;

    subtotalEl.textContent =
        `$${subtotal.toFixed(2)}`;

    discountEl.textContent =
        `-$${discountAmount.toFixed(2)}`;

    shippingEl.textContent =
        shipping === 0
        ? "FREE"
        : `$${shipping.toFixed(2)}`;

    totalEl.textContent =
        `$${total.toFixed(2)}`;


    document
        .querySelectorAll("[data-minus]")
        .forEach(button => {

            button.onclick = () => {

                changeQuantity(
                    Number(button.dataset.minus),
                    -1
                );

            };

        });


    document
        .querySelectorAll("[data-plus]")
        .forEach(button => {

            button.onclick = () => {

                changeQuantity(
                    Number(button.dataset.plus),
                    1
                );

            };

        });


    document
        .querySelectorAll("[data-remove]")
        .forEach(button => {

            button.onclick = () => {

                removeFromCart(
                    Number(button.dataset.remove)
                );

            };

        });
}


/* ============================================================
   WISHLIST
============================================================ */

function toggleWishlist(productId) {

    if (wishlist.includes(productId)) {

        wishlist =
            wishlist.filter(
                id => id !== productId
            );

        toast("Removed from wishlist");

    } else {

        wishlist.push(productId);

        toast(
            '<i class="fa-solid fa-heart"></i> Added to wishlist'
        );
    }

    saveState();

    updateWishlist();

    renderProducts();
}


function updateWishlist() {

    wishlistCount.textContent =
        wishlist.length;
}


/* ============================================================
   CART DRAWER
============================================================ */

function openCart() {

    cartDrawer.classList.add("open");

    overlay.classList.add("show");

}


function closeCart() {

    cartDrawer.classList.remove("open");

    overlay.classList.remove("show");

}


document
    .getElementById("cartBtn")
    .addEventListener("click", openCart);


document
    .getElementById("closeCart")
    .addEventListener("click", closeCart);


overlay.addEventListener(
    "click",
    closeCart
);


/* ============================================================
   QUICK VIEW
============================================================ */

function openQuickView(productId) {

    const product =
        PRODUCTS.find(
            p => p.id === productId
        );

    if (!product) return;


    const stars =
        "★".repeat(product.rating) +
        "☆".repeat(5-product.rating);


    document.getElementById("quickView").innerHTML = `

        <div class="quick-view">

            <img
                src="${product.image}"
                alt="${product.name}">

            <div>

                <div class="product-category">
                    ${product.category}
                </div>

                <h2>${product.name}</h2>

                <div class="rating">
                    ${stars}
                    (${product.reviews} reviews)
                </div>

                <div class="quick-price">
                    $${product.price.toLocaleString()}
                </div>

                <p style="color:var(--muted);">
                    Premium quality product with excellent
                    customer ratings and reliable delivery.
                </p>

                <br>

                <button
                    class="btn btn-primary"
                    id="modalAddCart">
                    <i class="fa-solid fa-cart-plus"></i>
                    Add To Cart
                </button>

            </div>

        </div>
    `;


    document
        .getElementById("modalAddCart")
        .onclick = () => {

            addToCart(product.id);

            closeProductModal();

        };


    document
        .getElementById("productModal")
        .classList.add("show");
}


function closeProductModal() {

    document
        .getElementById("productModal")
        .classList.remove("show");

}


document
    .getElementById("closeProductModal")
    .onclick = closeProductModal;


/* ============================================================
   CHECKOUT
============================================================ */

document
    .getElementById("checkoutBtn")
    .addEventListener("click", () => {

        if (!cart.length) {

            toast("Your cart is empty");

            return;
        }

        closeCart();

        document
            .getElementById("checkoutModal")
            .classList.add("show");

    });


document
    .getElementById("closeCheckout")
    .onclick = () => {

        document
            .getElementById("checkoutModal")
            .classList.remove("show");

    };


document
    .getElementById("checkoutForm")
    .addEventListener("submit", e => {

        e.preventDefault();

        cart = [];

        discountAmount = 0;

        saveState();

        updateCart();

        document
            .getElementById("checkoutModal")
            .classList.remove("show");

        toast(
            "🎉 Order placed successfully!"
        );

        e.target.reset();

    });


/* ============================================================
   COUPON
============================================================ */

document
    .getElementById("couponBtn")
    .addEventListener("click", () => {

        const code =
            document
                .getElementById("couponInput")
                .value
                .trim()
                .toUpperCase();


        if (code === "SAVE10") {

            let subtotal = 0;

            cart.forEach(item => {

                const product =
                    PRODUCTS.find(
                        p => p.id === item.id
                    );

                if (product) {

                    subtotal +=
                        product.price *
                        item.quantity;
                }

            });

            discountAmount =
                subtotal * .10;

            toast(
                "🎉 10% discount applied!"
            );

            updateCart();

        } else {

            toast(
                "Invalid coupon. Try SAVE10"
            );
        }

    });


/* ============================================================
   SEARCH
============================================================ */

searchInput.addEventListener(
    "input",
    renderProducts
);


document
    .getElementById("searchBtn")
    .addEventListener(
        "click",
        renderProducts
    );


categoryFilter.addEventListener(
    "change",
    renderProducts
);


sortSelect.addEventListener(
    "change",
    renderProducts
);


/* ============================================================
   DARK MODE
============================================================ */

const savedTheme =
    localStorage.getItem("nexusTheme");


if (savedTheme === "dark") {

    document.body.classList.add("dark");

    document
        .getElementById("themeBtn")
        .innerHTML =
        '<i class="fa-solid fa-sun"></i>';
}


document
    .getElementById("themeBtn")
    .addEventListener("click", () => {

        document.body.classList.toggle("dark");

        const dark =
            document.body.classList.contains("dark");


        localStorage.setItem(
            "nexusTheme",
            dark ? "dark" : "light"
        );


        document
            .getElementById("themeBtn")
            .innerHTML =
            dark
            ? '<i class="fa-solid fa-sun"></i>'
            : '<i class="fa-solid fa-moon"></i>';

    });


/* ============================================================
   MOBILE MENU
============================================================ */

document
    .getElementById("mobileMenuBtn")
    .addEventListener("click", () => {

        document
            .getElementById("mobileNav")
            .classList.toggle("show");

    });


/* ============================================================
   HERO BUTTONS
============================================================ */

document
    .getElementById("shopBtn")
    .onclick = () => {

        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });

    };


document
    .getElementById("dealBtn")
    .onclick = () => {

        document
            .getElementById("deals")
            .scrollIntoView({
                behavior: "smooth"
            });

    };


/* ============================================================
   FLASH DEAL
============================================================ */

const dealEnd =
    Date.now() +
    24 * 60 * 60 * 1000;


function updateTimer() {

    const difference =
        dealEnd - Date.now();


    if (difference <= 0) return;


    const days =
        Math.floor(
            difference /
            (1000 * 60 * 60 * 24)
        );


    const hours =
        Math.floor(
            (difference /
            (1000 * 60 * 60)) % 24
        );


    const minutes =
        Math.floor(
            (difference /
            (1000 * 60)) % 60
        );


    const seconds =
        Math.floor(
            (difference / 1000) % 60
        );


    document.getElementById("days")
        .textContent =
        String(days).padStart(2,"0");


    document.getElementById("hours")
        .textContent =
        String(hours).padStart(2,"0");


    document.getElementById("minutes")
        .textContent =
        String(minutes).padStart(2,"0");


    document.getElementById("seconds")
        .textContent =
        String(seconds).padStart(2,"0");

}


setInterval(updateTimer,1000);

updateTimer();


/* ============================================================
   DEAL PRODUCT
============================================================ */

document
    .getElementById("dealCartBtn")
    .onclick = () => {

        addToCart(2);

    };


/* ============================================================
   NEWSLETTER
============================================================ */

document
    .getElementById("newsletterForm")
    .addEventListener("submit", e => {

        e.preventDefault();

        const email =
            document
                .getElementById("newsletterEmail")
                .value
                .trim();


        if (!email.includes("@")) {

            toast(
                "Please enter a valid email"
            );

            return;
        }


        toast(
            "🎉 Thanks for subscribing!"
        );


        e.target.reset();

    });


/* ============================================================
   BACK TO TOP
============================================================ */

const topBtn =
    document.getElementById("topBtn");


window.addEventListener(
    "scroll",
    () => {

        topBtn.style.display =
            window.scrollY > 500
            ? "grid"
            : "none";

    }
);


topBtn.onclick = () => {

    window.scrollTo({
        top: 0,
        behavior: "smooth"
    });

};


/* ============================================================
   YEAR
============================================================ */

document
    .getElementById("year")
    .textContent =
    new Date().getFullYear();


/* ============================================================
   INITIALIZE
============================================================ */

renderCategories();

renderProducts();

updateCart();

updateWishlist();

</script>

</body>
</html>
```
