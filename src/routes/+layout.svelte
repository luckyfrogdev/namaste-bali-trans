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

	function scrollIntoView({ target }) {
		const el = document.querySelector(target.getAttribute('href'));
		if (!el) return;
		el.scrollIntoView({
			behavior: 'smooth'
		});
	}

	onMount(() => {
		loadMyScripts();
	});
</script>

<body>
	<!--	 preloader start -->
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
	<!--	 preloader end -->

	<!-- Offcanvas area start -->
	<div class="fix">
		<div class="offcanvas-area">
			<div class="offcanvas-wrapper">
				<div class="offcanvas-content">
					<div class="offcanvas-top d-flex justify-content-between align-items-center mb-25">
						<div class="offcanvas-logo">
							<a href={'javascript:void(0)'}>
								<img src="assets/images/logo/logo-black.png" alt="logo not found" />
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

					<div class="mobile-menu fix mb-25"></div>
					<div class="offcanvas-about d-none d-lg-block mb-25">
						<h4 class="offcanvas-title-meta">About Namaste Bali Trans</h4>
						<p>
							Namaste Bali Trans offers more than just transportation; we provide immersive journeys
							into the heart of Bali's culture and beauty. With our team of knowledgeable guides and
							comfortable vehicles, we ensure that every excursion is not just a trip, but an
							unforgettable experience. From exploring ancient temples to indulging in authentic
							Balinese cuisine, let us be your trusted companion in discovering the wonders of Bali.
						</p>
					</div>
					<div class="offcanvas-contact mb-25">
						<h4 class="offcanvas-title-meta">Contact Info</h4>
						<ul>
							<li class="d-flex align-items-center gap-10">
								<div class="offcanvas-contact-icon">
									<a target="_blank" href={'javascript:void(0)'}>
										<i class="fal fa-map-marker-alt"></i></a
									>
								</div>
								<div class="offcanvas-contact-text">
									<a target="_blank" href={'javascript:void(0)'}
										>Jalan Patih Jelantik Dusun Palungan Batu, Desa Batuagung, Jembrana 82218</a
									>
								</div>
							</li>
							<li class="d-flex align-items-center gap-10">
								<div class="offcanvas-contact-icon">
									<a
										href="https://wa.me/6283892565216?text=Hello, i want to know the price of your travel"
										><i class="far fa-phone"></i></a
									>
								</div>
								<div class="offcanvas-contact-text">
									<a
										href="https://wa.me/6283892565216?text=Hello, i want to know the price of your travel"
										>+62-838-9256-5216 (Gung Dwi)</a
									>
								</div>
							</li>
							<li class="d-flex align-items-center gap-10">
								<div class="offcanvas-contact-icon">
									<a
										href="https://wa.me/6283114998908?text=Hello, i want to know the price of your travel"
										><i class="far fa-phone"></i></a
									>
								</div>
								<div class="offcanvas-contact-text">
									<a
										href="https://wa.me/6283114998908?text=Hello, i want to know the price of your travel"
										>+62-831-1499-8908 (Gus Aji)</a
									>
								</div>

							</li><li class="d-flex align-items-center gap-10">
								<div class="offcanvas-contact-icon">
									<a
										href="https://wa.me/6285737159915?text=Hello, i want to know the price of your travel"
										><i class="far fa-phone"></i></a
									>
								</div>
								<div class="offcanvas-contact-text">
									<a
										href="https://wa.me/6285737159915?text=Hello, i want to know the price of your travel"
										>+62-857-3715-9915 (Admin)</a
									>
								</div>

							</li>
							<li class="d-flex align-items-center gap-10">
								<div class="offcanvas-contact-icon">
									<a href="mailto:namastebalitrans99@gmail.com"><i class="fal fa-envelope"></i></a>
								</div>
								<div class="offcanvas-contact-text">
									<a href="mailto:namastebalitrans99@gmail.com">namastebalitrans99@gmail.com (Email)</a>
								</div>
							</li>
						</ul>
					</div>

					<div class="offcanvas-social">
						<h4 class="offcanvas-title-meta">Let's Connected With Us</h4>
						<ul>
							<li>
								<a href="https://web.facebook.com/goes.tillkiss"
									><i class="fab fa-facebook-f"></i></a
								>
							</li>
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
								<a href="/"><img src="assets/images/logo/logo-black.png" alt="logo not found" /></a>
							</div>
						</div>
						<div class="header-right">
							<div class="header-action d-flex align-items-center">
								<div class="mean-menu-wrapper d-none d-xl-block">
									<div class="main-menu">
										<nav class="main-menu main-menu-three" id="mobile-menu">
											<ul>
												<li><a href={'javascript:void(0)'}>Home</a></li>
												<li>
													<a href={'#why-choose-us'} on:click|preventDefault={scrollIntoView}
														>Why Choose Us</a
													>
												</li>
												<li><a href={'#destinations'}>Destinations</a></li>
												<li><a href={'#things-to-do'}>Things To Do</a></li>
												<li><a href={'#your-plan'}>Your Plan</a></li>
											</ul>
										</nav>
									</div>
								</div>
								<div class="header-hamburger ml-20">
									<div class="sidebar-toggle">
										<a class="bar-icon style-two" href={'javascript:void(0)'}>
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
					<div class="col-xl-12 col-lg-12 col-sm-12">
						<div class="footer-widget footer-2-col-1">
							<div class="footer-widget-logo mb-40">
								<a href={'javascript:void(0)'}>
									<img src="assets/images/logo/logo-black.png" alt="logo not found" />
								</a>
							</div>
							<div class="footer-widget-content">
								<p>
									Step into a world of unforgettable adventures with Namaste Bali Trans! Get ready
									to immerse yourself in the vibrant culture, breathtaking landscapes, and hidden
									gems of Bali. Whether you're seeking ancient temples, pristine beaches, or
									mouthwatering cuisine, our expert guides and comfortable transportation are here
									to make your Bali experience truly extraordinary. Let's embark on an adventure
									you'll never forget!
								</p>
								<div class="d-flex flex-wrap align-items-center gap--5">
									<span class="b6">Follow Us:</span>
									<div class="theme-social">
										<a href="https://web.facebook.com/goes.tillkiss"
											><i class="icon-facebook"></i></a
										>
									</div>
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
					<div class="col-xl-8 col-lg-8 col-md-8 col-12">
						<div class="footer-copyright underline">
							<p>
								Copyright @ {new Date().getFullYear()}
								<a href={'javascript:void(0)'} target="_blank">Namaste Bali Trans</a> . All Right Reserved
							</p>
						</div>
					</div>
					<div class="col-xl-3 col-lg-5 col-md-6 col-12">
						<div class="footer-card">
							<img src="assets/images/icons/payment-option-black-new.png" alt="">
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
