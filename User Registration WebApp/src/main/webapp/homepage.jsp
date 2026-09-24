<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Security Check: Agar session mein user ka naam nahi hai, toh wapas login.jsp bhej do
    String currentUser = (String) session.getAttribute("currentUser");
    if(currentUser == null) {
        response.sendRedirect("login.jsp");
        return; // Page load rokne ke liye
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fode. - Delicious Food Delivery</title>
    <!-- Aapki banayi hui CSS link -->
    <link rel="stylesheet" href="homepage.css">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>

    <!-- Header / Navbar -->
    <header class="navbar">
        <div class="logo">Fode<span>.</span></div>
        <div class="nav-links">
            <a href="#"><i class="fas fa-search"></i></a>
            <a href="#">Why Fode?</a>
            <a href="#" class="active">About</a>
            <a href="#">Menu <i class="fas fa-chevron-down text-small"></i></a>
        </div>
        
        <!-- YAHAN CHANGE KIYA HAI: Dynamic User Profile & Logout -->
        <div class="nav-buttons" style="align-items: center;">
            <span style="font-weight: 600; font-size: 16px; display: flex; align-items: center; gap: 8px;">
                <i class="fas fa-user-circle" style="font-size: 22px; color: var(--primary-yellow);"></i> 
                Hi, <%= currentUser %>
            </span>
            <a href="logout.jsp" class="btn btn-outline" style="text-decoration: none;">Logout</a>
        </div>
        
        <div class="menu-toggle">
            <i class="fas fa-bars"></i>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero-section">
        <!-- Background Split Styling -->
        <div class="hero-bg-dark"></div>

        <div class="hero-content">
            <!-- Left Side (Light) -->
            <div class="hero-text-area">
                <div class="decoration-lines">
                    <span></span><span></span><span></span>
                </div>
                <h2>Italian Pasta</h2>
                <h1>With Special Sauce</h1>
                <p>Italian pasta with special sauce is a flavor you can find only in <strong>fode.</strong></p>
                
                <div class="price-action">
                    <div class="price">
                        <span class="old-price">$12.90</span>
                        <span class="new-price">$7.90</span>
                    </div>
                    <button class="btn btn-dark buy-btn">
                        <div class="icon-box"><i class="fas fa-shopping-bag"></i></div>
                        Buy Now
                    </button>
                </div>

                <div class="chef-recommendation">
                    <img src="https://i.pravatar.cc/100?img=11" alt="Chef">
                    <div class="chef-text">
                        <p>Chef's Recommendation</p>
                        <a href="#">See the menu types <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>

            <!-- Right Side (Dark) -->
            <div class="hero-image-area">
                <div class="floating-food">
                    <!-- Placeholder for the main food image -->
                    <img src="https://images.unsplash.com/photo-1563379926898-05f4575a45d8?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80" alt="Dumplings on Plate" class="main-plate">
                </div>
                
                <!-- Discount Coupon Card -->
                <div class="discount-coupon">
                    <div class="coupon-header">
                        <span>Discount coupon</span>
                        <div class="coupon-nav">
                            <span><i class="fas fa-chevron-left"></i> Prev</span>
                            <span>Next <i class="fas fa-chevron-right"></i></span>
                        </div>
                    </div>
                    <div class="coupon-body">
                        <img src="https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&auto=format&fit=crop&w=200&q=80" alt="Pizza">
                        <div class="coupon-info">
                            <h4>Mexicoo Pizza</h4>
                            <span class="calories"><i class="fas fa-fire"></i> 78 Calories</span>
                        </div>
                        <div class="coupon-price">
                            <span class="old-price">$10.90</span>
                            <span class="new-price">$7.90</span>
                        </div>
                        <div class="timer">
                            <i class="far fa-clock"></i> 30 dk.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Extra Section 1: Features -->
    <section class="features">
        <div class="feature-box">
            <i class="fas fa-shipping-fast"></i>
            <h3>Fast Delivery</h3>
            <p>Get your food delivered in less than 30 minutes.</p>
        </div>
        <div class="feature-box">
            <i class="fas fa-leaf"></i>
            <h3>Fresh Ingredients</h3>
            <p>We use only the freshest and organic ingredients.</p>
        </div>
        <div class="feature-box">
            <i class="fas fa-medal"></i>
            <h3>Best Quality</h3>
            <p>Prepared by top chefs with love and care.</p>
        </div>
    </section>

    <!-- Extra Section 2: Popular Menu -->
    <section class="popular-menu">
        <h2 class="section-title">Popular Dishes</h2>
        <div class="menu-grid">
            <div class="menu-card">
                <img src="https://images.unsplash.com/photo-1550547660-d9450f859349?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80" alt="Burger">
                <h3>Classic Burger</h3>
                <p class="menu-price">$5.90</p>
                <button class="btn btn-outline">Add to Cart</button>
            </div>
            <div class="menu-card">
                <img src="https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80" alt="Salad">
                <h3>Healthy Salad</h3>
                <p class="menu-price">$4.50</p>
                <button class="btn btn-outline">Add to Cart</button>
            </div>
            <div class="menu-card">
                <img src="https://images.unsplash.com/photo-1628840042765-356cda07504e?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&q=80" alt="Pizza">
                <h3>Pepperoni Pizza</h3>
                <p class="menu-price">$8.90</p>
                <button class="btn btn-outline">Add to Cart</button>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="footer-content">
            <div class="footer-logo">Fode<span>.</span></div>
            <p>Making your tummy happy everyday.</p>
            <div class="socials">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; <%= java.time.Year.now().getValue() %> Fode. All Rights Reserved.</p>
        </div>
    </footer>

</body>
</html>