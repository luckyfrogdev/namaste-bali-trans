<script>
	import { onMount } from 'svelte';

	function loadScript(src) {
		return new Promise((resolve, reject) => {
			const script = document.createElement('script');
			script.src = src;
			script.onload = () => resolve(script);
			script.onerror = () => reject(new Error(`Script load error for ${src}`));
			document.body.appendChild(script);
		});
	}

	// Function to load your specific scripts
	async function loadMyScripts() {
		try {
			await loadScript(
				'https://html.bdevs.net/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js'
			);
			await loadScript('assets/js/vendor/jquery-3.7.1.min.js');
			await loadScript('assets/js/plugins/waypoints.min.js');
			await loadScript('assets/js/vendor/bootstrap.bundle.min.js');
			await loadScript('assets/js/plugins/meanmenu.min.js');
			await loadScript('assets/js/plugins/swiper.min.js');
			await loadScript('assets/js/plugins/wow.js');
			await loadScript('assets/js/plugins/aos.js');
			await loadScript('assets/js/vendor/magnific-popup.min.js');
			await loadScript('assets/js/vendor/isotope.pkgd.min.js');
			await loadScript('assets/js/vendor/imagesloaded.pkgd.min.js');
			await loadScript('assets/js/vendor/purecounter.js');
			await loadScript('assets/js/plugins/nouislider.min.js');
			await loadScript('assets/js/plugins/nice-select.min.js');
			await loadScript('assets/js/plugins/cleave.min.js');
			await loadScript('assets/js/plugins/ScrollTrigger.min.js');
			await loadScript('assets/js/plugins/SplitText.min.js');
			await loadScript('assets/js/plugins/gsap.min.js');
			await loadScript('assets/js/plugins/flatpickr.js');
			await loadScript('assets/js/vendor/ajax-form.js');
			await loadScript('assets/js/main.js');

			console.log('Scripts loaded successfully');
		} catch (error) {
			console.error('Error loading scripts:', error);
		}
	}
	onMount(() => {
		loadMyScripts();
	});
</script>

<body>
	<!-- preloader start -->
	<div class="loader" id="preloader">
		<div class="preloader-wrap">
			<div class="plane">
				<img class="plane-img" src="assets/images/loader/loader-plane.png" alt="" />
			</div>
			<div class="earth-wrapper">
				<div class="earth" data-background="assets/images/loader/earth.gif"></div>
			</div>
		</div>
	</div>
	<!-- preloader end -->

	<!-- Offcanvas area start -->
	<div class="fix">
		<div class="offcanvas-area">
			<div class="offcanvas-wrapper">
				<div class="offcanvas-content">
					<div class="offcanvas-top d-flex justify-content-between align-items-center mb-25">
						<div class="offcanvas-logo">
							<a href="index-2.html">
								<img src="assets/images/logo/logo-black.svg" alt="logo not found" />
							</a>
						</div>
						<div class="offcanvas-close">
							<button class="offcanvas-close-icon animation--flip">
								<span class="offcanvas-m-lines">
									<span class="offcanvas-m-line line--1"></span><span
										class="offcanvas-m-line line--2"
									></span><span class="offcanvas-m-line line--3"></span>
								</span>
							</button>
						</div>
					</div>
					<div class="offcanvas-search mb-0">
						<form action={'#'}>
							<input type="text" name="offcanvasSearch" placeholder="Search here" />
							<button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
						</form>
					</div>
					<div class="mobile-menu fix mb-25"></div>
					<div class="offcanvas-about d-none d-lg-block mb-25">
						<h4 class="offcanvas-title-meta">About Tourigo</h4>
						<p>
							Explore stunning destinations and create immersive travel experiences that inspire
							wanderlust and captivate your audience from the start.
						</p>
					</div>
					<div class="offcanvas-contact mb-25">
						<h4 class="offcanvas-title-meta">Contact Info</h4>
						<ul>
							<li class="d-flex align-items-center gap-10">
								<div class="offcanvas-contact-icon">
									<a target="_blank" href={'#'}> <i class="fal fa-map-marker-alt"></i></a>
								</div>
								<div class="offcanvas-contact-text">
									<a target="_blank" href={'#'}>1426 Center StreetBend, 97702, California, USA</a>
								</div>
							</li>
							<li class="d-flex align-items-center gap-10">
								<div class="offcanvas-contact-icon">
									<a href="tel:+415864872899"><i class="far fa-phone"></i></a>
								</div>
								<div class="offcanvas-contact-text">
									<a href="tel:+415864872899">+415-864-8728-99</a>
								</div>
							</li>
							<li class="d-flex align-items-center gap-10">
								<div class="offcanvas-contact-icon">
									<a
										href="https://html.bdevs.net/cdn-cgi/l/email-protection{'#'}61121411110e131521150e141308060e4f020e0c"
										><i class="fal fa-envelope"></i></a
									>
								</div>
								<div class="offcanvas-contact-text">
									<a
										href="https://html.bdevs.net/cdn-cgi/l/email-protection{'#'}e5969095958a9791a5918a90978c828acb868a88"
										><span
											class="__cf_email__"
											data-cfemail="9deee8ededf2efe9dde9f2e8eff4faf2b3fef2f0"
											>[email&{'#'}160;protected]</span
										></a
									>
								</div>
							</li>
						</ul>
					</div>
					<div class="offcanvas-btn mb-25">
						<h4 class="offcanvas-title-meta">Account</h4>
						<div class="header-btn-wrap gap-10">
							<a class="bd-btn btn-style text-btn" href="login.html">Log In</a>
							<a class="bd-btn btn-style text-btn" href="contact.html">Get Started</a>
						</div>
					</div>
					<div class="offcanvas-social">
						<h4 class="offcanvas-title-meta">Subscribe & Follow</h4>
						<ul>
							<li><a href={'#'}><i class="fab fa-facebook-f"></i></a></li>
							<li><a href={'#'}><i class="fab fa-twitter"></i></a></li>
							<li><a href={'#'}><i class="fab fa-youtube"></i></a></li>
							<li><a href={'#'}><i class="fab fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="offcanvas-overlay"></div>
	<div class="offcanvas-overlay-white"></div>
	<!-- Offcanvas area start -->

	<!-- Header area start -->
	<header>
		<div class="header-area header-style-four" id="header-sticky">
			<div class="container">
				<div class="mega-menu-wrapper p-relative">
					<div class="header-main">
						<div class="header-left">
							<div class="header-logo">
								<a href="index-2.html"
									><img src="assets/images/logo/logo-black.svg" alt="logo not found" /></a
								>
							</div>
							<div class="header-search mb-0">
								<form action={'#'}>
									<input type="text" placeholder="Search Destinations" />
									<button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
								</form>
							</div>
						</div>
						<div class="header-right">
							<div class="header-action d-flex align-items-center">
								<div class="mean-menu-wrapper d-none d-xl-block">
									<div class="main-menu">
										<nav class="main-menu main-menu-three" id="mobile-menu">
											<ul>
												<li class="has-mega-menu">
													<a href="index-2.html">Home</a>
													<ul class="mega-menu home-menu-grid">
														<li>
															<div class="home-menu-item">
																<div class="home-menu-thumb">
																	<img
																		src="assets/images/menu/menu-home-1.jpg"
																		alt="thumb not found"
																	/>
																	<div class="home-menu-buttons">
																		<a href="home.html" class="bd-primary-btn btn-style">
																			<span class="bd-primary-btn-text">Home One</span>
																			<span class="bd-primary-btn-circle"></span>
																		</a>
																	</div>
																</div>
															</div>
														</li>
														<li>
															<div class="home-menu-item">
																<div class="home-menu-thumb">
																	<img
																		src="assets/images/menu/menu-home-2.jpg"
																		alt="thumb not found"
																	/>
																	<div class="home-menu-buttons">
																		<a href="home-two.html" class="bd-primary-btn btn-style">
																			<span class="bd-primary-btn-text">Home Two</span>
																			<span class="bd-primary-btn-circle"></span>
																		</a>
																	</div>
																</div>
															</div>
														</li>
														<li>
															<div class="home-menu-item">
																<div class="home-menu-thumb">
																	<img
																		src="assets/images/menu/menu-home-3.jpg"
																		alt="thumb not found"
																	/>
																	<div class="home-menu-buttons">
																		<a href="home-three.html" class="bd-primary-btn btn-style">
																			<span class="bd-primary-btn-text">Home Three</span>
																			<span class="bd-primary-btn-circle"></span>
																		</a>
																	</div>
																</div>
															</div>
														</li>
														<li>
															<div class="home-menu-item">
																<div class="home-menu-thumb">
																	<img
																		src="assets/images/menu/menu-home-4.jpg"
																		alt="thumb not found"
																	/>
																	<div class="home-menu-buttons">
																		<a href="home-four.html" class="bd-primary-btn btn-style">
																			<span class="bd-primary-btn-text">Home Four</span>
																			<span class="bd-primary-btn-circle"></span>
																		</a>
																	</div>
																</div>
															</div>
														</li>
														<li>
															<div class="home-menu-item">
																<div class="home-menu-thumb">
																	<img
																		src="assets/images/menu/menu-home-5.jpg"
																		alt="thumb not found"
																	/>
																	<div class="home-menu-buttons">
																		<a href="home-five.html" class="bd-primary-btn btn-style">
																			<span class="bd-primary-btn-text">Home Five</span>
																			<span class="bd-primary-btn-circle"></span>
																		</a>
																	</div>
																</div>
															</div>
														</li>
													</ul>
												</li>
												<li class="menu-item-has-children">
													<a href={'#'}>Tour</a>
													<ul class="submenu">
														<li class="menu-item-has-children has-arrow">
															<a href={'#'}>Tour Listing</a>
															<ul class="submenu">
																<li><a href="tour-listing.html">Tour Listing Search</a></li>
																<li><a href="tour-listing-two.html">Tour Listing Search 2</a></li>
																<li><a href="tour-listing-three.html">Tour Listing Sidebar</a></li>
																<li>
																	<a href="tour-listing-four.html">Tour Listing Full width</a>
																</li>
																<li><a href="tour-listing-five.html">Tour Listing Video</a></li>
																<li><a href="tour-listing-six.html">Tour Listing Banner</a></li>
															</ul>
														</li>
														<li class="menu-item-has-children has-arrow">
															<a href={'#'}>Tour Grid</a>
															<ul class="submenu">
																<li><a href="tour-grid.html">No Sidebar</a></li>
																<li><a href="tour-grid-right.html">Right Sidebar</a></li>
																<li><a href="tour-grid-left.html">Left Sidebar</a></li>
															</ul>
														</li>
														<li class="menu-item-has-children has-arrow">
															<a href="tour.html">Tour Details</a>
															<ul class="submenu">
																<li><a href="tour-details.html">No Sidebar</a></li>
																<li><a href="tour-details-right.html">Right Sidebar</a></li>
																<li><a href="tour-details-left.html">Left Sidebar</a></li>
															</ul>
														</li>
													</ul>
												</li>
												<li class="menu-item-has-children">
													<a href={'#'}>Destination</a>
													<ul class="submenu">
														<li class="menu-item-has-children has-arrow">
															<a href={'#'}>Destination Grid</a>
															<ul class="submenu">
																<li><a href="destinations-grid.html">No Sidebar</a></li>
																<li><a href="destinations-grid-right.html">Right Sidebar</a></li>
																<li><a href="destinations-grid-left.html">Left Sidebar</a></li>
															</ul>
														</li>
														<li class="menu-item-has-children has-arrow">
															<a href={'#'}>Destination Details</a>
															<ul class="submenu">
																<li><a href="destinations-details.html">No Sidebar</a></li>
																<li><a href="destinations-details-right.html">Right Sidebar</a></li>
																<li><a href="destinations-details-left.html">Left Sidebar</a></li>
															</ul>
														</li>
													</ul>
												</li>
												<!-- page menu -->
												<li class="has-mega-menu">
													<a href={'#'}>Pages</a>
													<ul class="mega-menu mega-grid-4">
														<li>
															<a href="javasript:void(0);" class="title">Page Layout 1</a>
															<ul>
																<li><a href="about.html">About Us</a></li>
																<li><a href="booking.html">Booking Form</a></li>
																<li><a href="pricing.html">Pricing</a></li>
																<li><a href="faq.html">Faq</a></li>
																<li><a href="contact.html">Contact</a></li>
															</ul>
														</li>
														<li>
															<a href="javasript:void(0);" class="title">Page Layout 2</a>
															<ul>
																<li><a href="team.html">Team</a></li>
																<li><a href="team-details.html">Team Details</a></li>
																<li><a href="error-page.html">Error Page</a></li>
																<li><a href="privacy-policy.html">Privacy & Policy</a></li>
																<li><a href="terms-conditions.html">Terms and Conditions</a></li>
															</ul>
														</li>
														<li>
															<a href="javasript:void(0);" class="title">Page Layout 3</a>
															<ul>
																<li><a href="sign-in.html">Login</a></li>
																<li><a href="sign-up.html">Register</a></li>
																<li><a href="forgot.html">Forgot Password</a></li>
																<li><a href="otp.html">OTP</a></li>
															</ul>
														</li>
														<li>
															<a href="javasript:void(0);" class="title">Page Layout 4</a>
															<ul>
																<li><a href="shop.html">Shop</a></li>
																<li><a href="shop-v2.html">Shop V2</a></li>
																<li><a href="shop-details.html">Shop Details</a></li>
																<li><a href="checkout.html">Checkout</a></li>
																<li><a href="cart.html">Cart</a></li>
																<li><a href="wishlist.html">Wishlist</a></li>
																<li><a href="order.html">Order Confirm</a></li>
															</ul>
														</li>
													</ul>
												</li>
												<!-- elements menu -->
												<li class="has-mega-menu">
													<a href={'#'}>Elements</a>
													<ul class="mega-menu mega-grid-4">
														<li>
															<a href="javasript:void(0);" class="title">elements Layout 1</a>
															<ul>
																<li><a href="style-guide.html">Style Guide</a></li>
																<li><a href="elements-accordion.html">Accordion</a></li>
																<li><a href="elements-about.html">About Us</a></li>
																<li><a href="elements-advancetab.html">Advance Tab</a></li>
																<li><a href="elements-blog.html">Blog</a></li>
																<li><a href="elements-brand.html">Brand</a></li>
															</ul>
														</li>
														<li>
															<a href="javasript:void(0);" class="title">elements Layout 2</a>
															<ul>
																<li><a href="elements-breadcrumb.html">Breadcrumb</a></li>
																<li><a href="elements-button.html">Button</a></li>
																<li><a href="elements-cta.html">Call To Action</a></li>
																<li><a href="elements-counter.html">Counter</a></li>
																<li><a href="elements-destinations.html">Destinations</a></li>
																<li><a href="elements-form.html">Form</a></li>
															</ul>
														</li>
														<li>
															<a href="javasript:void(0);" class="title">elements Layout 3</a>
															<ul>
																<li><a href="elements-footer.html">Footer Style</a></li>
																<li><a href="elements-card.html">Image Card</a></li>
																<li><a href="elements-icomoon.html">Icomoon Fonts Icon</a></li>
																<li><a href="elements-our-offers.html">Offers</a></li>
																<li><a href="elements-pricing.html">Pricing</a></li>
																<li><a href="elements-social.html">Social Share</a></li>
															</ul>
														</li>
														<li>
															<a href="javasript:void(0);" class="title">elements Layout 4</a>
															<ul>
																<li><a href="elements-team.html">Team</a></li>
																<li><a href="elements-testimonial.html">Testimonial</a></li>
																<li><a href="elements-tour.html">Tour</a></li>
																<li><a href="elements-why-chose.html">Why Chose Us</a></li>
																<li><a href={'#'}>More Coming</a></li>
															</ul>
														</li>
													</ul>
												</li>
												<li class="menu-item-has-children">
													<a href={'#'}>Blog</a>
													<ul class="submenu last-children">
														<li class="menu-item-has-children has-arrow">
															<a href={'#'}>Blog List</a>
															<ul class="submenu">
																<li><a href="blog-list.html">No Sidebar</a></li>
																<li><a href="blog-list-right.html">Right Sidebar</a></li>
																<li><a href="blog-list-left.html">Left Sidebar</a></li>
															</ul>
														</li>
														<li class="menu-item-has-children has-arrow">
															<a href={'#'}>Blog Grid</a>
															<ul class="submenu">
																<li><a href="blog-grid.html">Blog Grid</a></li>
																<li><a href="blog-grid-right.html">Blog Grid Right</a></li>
																<li><a href="blog-grid-left.html">Blog Grid Left</a></li>
															</ul>
														</li>
														<li class="menu-item-has-children has-arrow">
															<a href={'#'}>Blog Details</a>
															<ul class="submenu">
																<li><a href="blog-details.html">No Sidebar</a></li>
																<li><a href="blog-details-right.html">Right sidebar</a></li>
																<li><a href="blog-details-left.html">Left sidebar</a></li>
															</ul>
														</li>
													</ul>
												</li>
												<li><a href="contact.html">Contact</a></li>
											</ul>
										</nav>
									</div>
								</div>
								<div class="header-hamburger ml-20">
									<div class="sidebar-toggle">
										<a class="bar-icon style-two" href={'#'}>
											<span></span>
											<span></span>
											<span></span>
										</a>
									</div>
								</div>
								<!-- for wp -->
								<div class="header-hamburger ml-20 d-none">
									<button type="button" class="hamburger-btn offcanvas-open-btn">
										<span>01</span>
										<span>01</span>
										<span>01</span>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Header area end -->

	<!-- Body main wrapper start -->
	<main class="main-area fix">
		<slot />
	</main>
	<!-- Body main wrapper end -->

	<!-- Footer area start -->
	<footer class="bd-footer-area footer-bg-two fix">
		<div class="footer-shape">
			<div class="footer-shape-three">
				<img src="assets/images/shapes/palm-tree-group.png" alt="" />
			</div>
			<div class="footer-shape-four">
				<img src="assets/images/shapes/palm-tree-group-2.png" alt="" />
			</div>
		</div>
		<div class="section-space">
			<div class="container">
				<div class="row gy-24">
					<div class="col-xl-3 col-lg-3 col-sm-6">
						<div class="footer-widget footer-2-col-1">
							<div class="footer-widget-logo mb-40">
								<a href="index-2.html">
									<img src="assets/images/logo/logo-black.svg" alt="logo not found" />
								</a>
							</div>
							<div class="footer-widget-content">
								<p>
									Welcome to Tourigo, your gateway to unforgettable adventures and immersive travel
									experiences. Explore with us and let your journey begin!
								</p>
								<div class="d-flex flex-wrap align-items-center gap--5">
									<span class="b6">Follow Us:</span>
									<div class="theme-social">
										<a href={'#'}><i class="icon-facebook"></i></a>
										<a href={'#'}><i class="icon-twitter-x"></i></a>
										<a href={'#'}><i class="icon-linkedin"></i></a>
										<a href={'#'}><i class="icon-youtube"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-sm-6">
						<div class="footer-widget footer-2-col-2">
							<h5 class="footer-widget-title">Company</h5>
							<div class="footer-widget-links">
								<ul>
									<li class="underline"><a href="about.html">About Us</a></li>
									<li class="underline"><a href="careers.html">Careers</a></li>
									<li class="underline"><a href="team.html">Travel Guides</a></li>
									<li class="underline">
										<a href="tour-details.html">Traveler Review</a><span class="bd-badge warning"
											>New</span
										>
									</li>
									<li class="underline"><a href="contact.html">Contact Now</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-2 col-sm-6">
						<div class="footer-widget footer-2-col-3">
							<h5 class="footer-widget-title">Service</h5>
							<div class="footer-widget-links">
								<ul>
									<li class="underline"><a href="destinations.html">Destinations</a></li>
									<li class="underline"><a href="tour.html">Tour Listing</a></li>
									<li class="underline"><a href="javascript.void(0)">Tour Booking </a></li>
									<li class="underline"><a href={'#'}>Travel Agents</a></li>
									<li class="underline"><a href={'#'}>Help</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-4 col-sm-6">
						<div class="footer-widget footer-2-col-4">
							<h5 class="footer-widget-title mb-15">Mobile Apps</h5>
							<div class="footer-btn mb-35 pt-5">
								<div class="googple-play-btn mb-15">
									<a
										href="https://codecanyon.net/item/eduman-react-native-android-ios-education-template/48934019?s_rank=3"
										target="_blank"
										class="app-btn"
									>
										<div class="app-thumb">
											<img src="assets/images/app/google-store-icon.png" alt="app" />
										</div>
										<div class="content">
											<span>get it on</span>
											<h6>Google Play</h6>
										</div>
									</a>
								</div>
								<div class="apple-app-btn mb-15">
									<a
										href="https://codecanyon.net/item/eduman-react-native-android-ios-education-template/48934019?s_rank=3"
										target="_blank"
										class="app-btn"
									>
										<div class="app-thumb">
											<img src="assets/images/app/app-store-icon.png" alt="app" />
										</div>
										<div class="content">
											<span>Download on the</span>
											<h6>App Store</h6>
										</div>
									</a>
								</div>
							</div>
							<div class="footer-call-wrap d-flex align-items-center gap-15">
								<div class="footer-call-icon">
									<i class="icon-support"></i>
								</div>
								<div class="footer-call-content position-relative z-index-5">
									<h6 class="footer-call-title">Speak our expert at:</h6>
									<a class="footer-call-number b3" href="tel:+18004536744">1-800-453-6744</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-copyright-area">
			<div class="container">
				<div class="row gy-24 align-items-center justify-content-between align-content-end">
					<div class="col-xl-4 col-lg-6 col-md-6 col-12">
						<div class="footer-copyright underline">
							<p>
								Copyright @ 2024 <a href="https://themeforest.net/user/bdevs" target="_blank"
									>Tourigo</a
								> . All Right Reserved
							</p>
						</div>
					</div>
					<div class="col-xl-3 col-lg-5 col-md-6 col-12">
						<div class="footer-card">
							<ul>
								<li><img src="assets/images/icons/visa.png" alt="card" /></li>
								<li><img src="assets/images/icons/master.png" alt="card" /></li>
								<li><img src="assets/images/icons/apple-pay.png" alt="card" /></li>
								<li><img src="assets/images/icons/paypal.png" alt="card" /></li>
								<li><img src="assets/images/icons/amex.png" alt="card" /></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer area end -->

	<!-- back to top -->
	<!-- Backtotop start -->
	<div class="backtotop-wrap cursor-pointer">
		<svg class="backtotop-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
			<path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
		</svg>
	</div>
	<!-- Backtotop end -->

</body>
