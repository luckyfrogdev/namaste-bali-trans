<script>
	let destinations = [
		{
			"id": 1,
			"name": "Lempuyang Temple",
			"image": "assets/images/tour/tour-img-6.png"
		},
		{
			"id": 2,
			"name": "Tirta Gangga",
			"image": "assets/images/tour/tour-img-2.png"
		},
		{
			"id": 3,
			"name": "Ulun Danu Beratan Temple",
			"image": "assets/images/tour/tour-img-3.png"
		},
		{
			"id": 4,
			"name": "Tanah Lot Temple",
			"image": "assets/images/tour/tour-img-4.png"
		},
		{
			"id": 5,
			"name": "Kintamani",
			"image": "assets/images/tour/tour-img-5.png"
		},
		{
			"id": 6,
			"name": "Mount Batur",
			"image": "assets/images/tour/tour-img-1.png"
		},
		{
			"id": 7,
			"name": "Uluwatu Temple",
			"image": "assets/images/tour/tour-img-7.png"
		},
		{
			"id": 8,
			"name": "Ubud Monkey Forest",
			"image": "assets/images/tour/tour-img-8.png"
		}
	];

</script>


<svelte:head>
	<title>Namaste Bali Trans</title>
	<meta name="description" content="Namaste Bali Trans" />
</svelte:head>

<!-- Banner area start -->
<section class="bd-banner-area banner-style-two banner-slider-mask">
<!--	-->
	<div class="swiper banner-two-active p-relative">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<div class="banner-slider-wrapper">
					<div
						class="banner-two-image"
						data-background="assets/images/banner/tanah-lot.png"
					></div>
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-xxl-9 col-xl-9 col-lg-10">
								<div class="banner-two-content">
									<h1 class="banner-title medium fw-7 mb-20 white-text">
										Embrace the Elements: <span class="yellow-shape"
									>Tanah Lot's <img
										src="assets/images/shapes/yellow-shape.png"
										alt="yellow-shape"
									/></span
									> Voyage

									</h1>
									<p class="banner-description mb-20">
										Discover the allure of Tanah Lot, where nature and spirituality converge in a mesmerizing embrace. Embark on a picturesque journey for two, crafting timeless memories amidst Bali's coastal wonders.
									</p>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="banner-slider-wrapper">
					<div
						class="banner-two-image"
						data-background="assets/images/banner/kecak.png"
					></div>
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-xxl-9 col-xl-9 col-lg-10">
								<div class="banner-two-content">
									<h1 class="banner-title medium fw-7 mb-20 white-text">
										Kecak Dance: <span class="yellow-shape"
										>A Rhythmic <img
											src="assets/images/shapes/yellow-shape.png"
											alt="yellow-shape"
										/></span
										> Tapestry of Balinese Culture

									</h1>
									<p class="banner-description mb-20">
										Dive into the enchantment of the Kecak Dance, where ancient myths and rhythmic chants intertwine, offering a captivating glimpse into Balinese culture and tradition.
									</p>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="banner-slider-wrapper">
					<div
						class="banner-two-image"
						data-background="assets/images/banner/klingking-beach.png"
					></div>
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-xxl-9 col-xl-9 col-lg-10">
								<div class="banner-two-content">
									<h1 class="banner-title medium fw-7 mb-20 white-text">
										Kelingking Beach: <span class="yellow-shape"
									>Nature's <img
										src="assets/images/shapes/yellow-shape.png"
										alt="yellow-shape"
									/></span
									> Majestic Tapestry Unveiled
									</h1>
									<p class="banner-description mb-20">
										Explore the breathtaking beauty of Kelingking Beach, a hidden gem nestled along Bali's rugged coastline. With its iconic cliff formation and pristine sands kissed by azure waters, it's a haven for adventurers and nature enthusiasts seeking unparalleled beauty and serenity
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="banner-slider-wrapper">
					<div
						class="banner-two-image"
						data-background="assets/images/banner/monkey-forest.png"
					></div>
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-xxl-9 col-xl-9 col-lg-10">
								<div class="banner-two-content">
									<h1 class="banner-title medium fw-7 mb-20 white-text">
										Monkey Forest Ubud: A Lush Sanctuary Where Humans Meet Their
										<span class="yellow-shape"
									> Mischievous<img
										src="assets/images/shapes/yellow-shape.png"
										alt="yellow-shape"
									/></span
									> Cousins
									</h1>
									<p class="banner-description mb-20">
										Step into the enchanting realm of Monkey Forest Ubud, where ancient temples and lush greenery provide a haven for playful macaques. Lose yourself in this mystical sanctuary, where encounters with these spirited creatures offer glimpses into Bali's rich cultural tapestry.
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="banner-slider-wrapper">
					<div
						class="banner-two-image"
						data-background="assets/images/banner/tirta-empul.png"
					></div>
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-xxl-9 col-xl-9 col-lg-10">
								<div class="banner-two-content">
									<h1 class="banner-title medium fw-7 mb-20 white-text">
										Tirta Empul:
										<span class="yellow-shape"
									>Sacred Springs <img
										src="assets/images/shapes/yellow-shape.png"
										alt="yellow-shape"
									/></span
									>, Spiritual Renewal
									</h1>
									<p class="banner-description mb-20">
										Discover Tirta Empul, an ancient Hindu temple renowned for its sacred springs believed to possess purifying powers. Immerse yourself in the ritual baths where locals and pilgrims seek spiritual cleansing and renewal, amidst the tranquil beauty of Bali's countryside
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="banner-slider-wrapper">
					<div
						class="banner-two-image"
						data-background="assets/images/banner/ulun-danu-beratan.png"
					></div>
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-xxl-9 col-xl-9 col-lg-10">
								<div class="banner-two-content">
									<h1 class="banner-title medium fw-7 mb-20 white-text">
										Ulun Danu Bratan: Serenity Upon the Lake's <span class="yellow-shape"
									>Reflections<img
										src="assets/images/shapes/yellow-shape.png"
										alt="yellow-shape"
									/></span
									>
									</h1>
									<p class="banner-description mb-20">
										Ulun Danu Bratan is a serene sanctuary nestled beside Lake Bratan, where the iconic temple complex seems to float upon the water's surface. Delve into the spiritual ambiance as misty mountain vistas and tranquil waters create a picturesque backdrop for contemplation and reverence.
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- navigation button start -->
		<div class="banner-nav-btn d-none d-md-block">
			<div class="banner-navigation-btn-2">
				<button class="banner-navigation-prev"><i class="fa-regular fa-angle-left"></i></button>
				<button class="banner-navigation-next"><i class="fa-regular fa-angle-right"></i></button>
			</div>
		</div>
		<!-- navigation button end -->
	</div>
</section>
<!-- Banner area start -->

<!-- chose area start -->
<section class="bd-chose-area section-space" id="why-choose-us">
	<div class="container">
		<div class="row align-items-center justify-content-center section-title-space">
			<div class="col-xl-6">
				<div class="section-title-wrapper text-center anim-wrapper animation-style-3">
					<span class="section-subtitle mb-10">Why chose us</span>
					<h2 class="section-title title-animation">Our Unique Offerings</h2>
				</div>
			</div>
		</div>
		<div class="row gy-24">
			<div class="col-xxl-3 col-xl-3 col-lg-6 col-md-6" data-aos="fade-up" data-aos-delay="100">
				<div class="chose-wrapper">
					<div class="chose-item">
						<div class="chose-icon"><span><i class="fa-regular fa-user"></i></span></div>
						<h6 class="chose-title">Expert Guidance</h6>
						<p class="chose-desc">
							Access to knowledgeable travel agents we can provide personalized and insights based
							on your preferences and budget.
						</p>
					</div>
				</div>
			</div>
			<div class="col-xxl-3 col-xl-3 col-lg-6 col-md-6" data-aos="fade-up" data-aos-delay="150">
				<div class="chose-wrapper">
					<div class="chose-item">
						<div class="chose-icon"><i class="icon-hourglass"></i></div>
						<h6 class="chose-title">Time Efficiency</h6>
						<p class="chose-desc">
							Save time by letting professionals handle itinerary planning, booking accommodations,
							transportation, and activities.
						</p>
					</div>
				</div>
			</div>
			<div class="col-xxl-3 col-xl-3 col-lg-6 col-md-6" data-aos="fade-up" data-aos-delay="200">
				<div class="chose-wrapper">
					<div class="chose-item">
						<div class="chose-icon"><i class="fa-sharp fa-light fa-face-smile"></i></div>
						<h6 class="chose-title">Stress Reduction</h6>
						<p class="chose-desc">
							Minimize stress and hassle associated with trip planning, especially for complex
							itineraries or unfamiliar destinations.
						</p>
					</div>
				</div>
			</div>
			<div class="col-xxl-3 col-xl-3 col-lg-6 col-md-6" data-aos="fade-up" data-aos-delay="250">
				<div class="chose-wrapper">
					<div class="chose-item">
						<div class="chose-icon"><i class="fa-sharp fa-regular fa-lock"></i></div>
						<h6 class="chose-title">Safety and Security</h6>
						<p class="chose-desc">
							Benefit from enhanced safety measures, emergency support, and assistance in case of
							circumstances during your travels.
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- chose area end -->

<!-- section divider start -->
<div class="section-divider"></div>
<!-- section divider start -->

<!-- tour area start -->
<section class="bd-service-area section-space" id="destinations">
	<div class="container">
		<div class="row gy-24 align-items-center justify-content-center section-title-space">
			<div class="col-lg-6 col-md-8">
				<div class="section-title-wrapper text-center anim-wrapper animation-style-3">
					<span class="section-subtitle mb-10">Our Trips</span>
					<h2 class="section-title title-animation">Featured Destination</h2>
				</div>
			</div>
		</div>
		<div class="row gy-24">

			{#each destinations as item}
			<div class="col-xxl-3 col-xl-4 col-lg-6 col-md-6">
				<div class="tour-wrapper style-one">
					<div class="p-relative">
						<div class="tour-thumb image-overly">
							<a href="tour-details.html"
								><img src="{item.image}" alt="{item.name}" /></a
							>
						</div>
						<div class="tour-meta d-flex align-items-center justify-content-between">
							<button class="tour-favorite tour-like">
								<i class="icon-heart"></i>
							</button>
							<div class="tour-location">
								<span
									><a href="{'#'}"
										><i class="fa-regular fa-location-dot"></i> {item.name}</a
									></span
								>
							</div>
						</div>
					</div>
					<div class="tour-content">
						<div class="tour-rating d-flex flex-wrap align-items-center gap-10 mb-10">
							<div class="tour-rating-icon fs-14 d-flex rating-color">
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
							</div>
							<div class="tour-rating-text">
								<span>5 (313 Ratings)</span>
							</div>
						</div>
						<h5 class="tour-title fw-5 underline mb-5">
							<a href="tour-details.html">Tropical Paradise Retreat: Sun, Sand, Serenity</a>
						</h5>
						<span class="tour-price b3">$1925.00</span>
						<div class="tour-divider"></div>

						<div class="tour-meta d-flex align-items-center justify-content-between">
							<div class="time d-flex align-items-center gap--5">
								<i class="icon-heart"></i>
								<span>10 days</span>
							</div>
							<div class="tour-btn">
								<a class="bd-text-btn style-two" href="booking.html"
									>Book Now
									<span class="icon__box">
										<i class="fa-regular fa-arrow-right-long icon__first"></i>
										<i class="fa-regular fa-arrow-right-long icon__second"></i>
									</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
				{/each}

		</div>
	</div>
</section>
<!-- tour area end -->

<!-- activities area start -->
<section class="bd-activities-area section-space flash-white p-relative" id="things-to-do">
	<div class="container">
		<div class="row gy-24 align-items-center justify-content-between section-title-space">
			<div class="col-xl-6 col-md-8">
				<div class="section-title-wrapper anim-wrapper animation-style-3">
					<span class="section-subtitle mb-10">Activities</span>
					<h2 class="section-title title-animation">Popular Things To Do</h2>
				</div>
			</div>
		</div>
		<div class="row gy-24">
			<div class="col-xl-3 col-lg-4 col-md-4">
				<div class="activity-wrapper activity-style-two">
					<div class="activity-thumb image-overly">
						<a href={'#'}><img src="assets/images/activity/activity-img-5.png" alt="image" /></a>
					</div>
					<div class="activity-content">
						<div class="activity-title-wrap">
							<h5 class="activity-title underline-two"><a href={'#'}>City Tours</a></h5>
							<p>100+ Tours</p>
						</div>
					</div>
				</div>
				<div class="activity-wrapper activity-style-two">
					<div class="activity-thumb image-overly">
						<a href={'#'}><img src="assets/images/activity/activity-img-6.png" alt="image" /></a>
					</div>
					<div class="activity-content">
						<div class="activity-title-wrap">
							<h5 class="activity-title underline-two"><a href={'#'}>Mountain Tours</a></h5>
							<p>100+ Tours</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-6 col-lg-8 col-md-8">
				<div class="activity-wrapper activity-style-two">
					<div class="activity-thumb image-overly">
						<a href={'#'}><img src="assets/images/activity/activity-img-7.png" alt="image" /></a>
					</div>
					<div class="activity-content">
						<div class="activity-title-wrap">
							<h5 class="activity-title underline-two"><a href={'#'}>Mountain Everest Tours</a></h5>
							<p>100+ Tours</p>
						</div>
					</div>
				</div>
				<div class="row gy-24">
					<div class="col-xl-6 col-lg-6 col-md-6">
						<div class="activity-wrapper activity-style-two">
							<div class="activity-thumb image-overly">
								<a href={'#'}><img src="assets/images/activity/activity-img-8.png" alt="image" /></a
								>
							</div>
							<div class="activity-content">
								<div class="activity-title-wrap">
									<h5 class="activity-title underline-two"><a href={'#'}>See Tours</a></h5>
									<p>100+ Tours</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6">
						<div class="activity-wrapper activity-style-two">
							<div class="activity-thumb image-overly">
								<a href={'#'}><img src="assets/images/activity/activity-img-9.png" alt="image" /></a
								>
							</div>
							<div class="activity-content">
								<div class="activity-title-wrap">
									<h5 class="activity-title underline-two"><a href={'#'}>Beach Tours</a></h5>
									<p>100+ Tours</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-lg-6 col-md-12">
				<div class="activity-wrapper activity-style-two">
					<div class="activity-thumb image-overly">
						<a href={'#'}><img src="assets/images/activity/activity-img-10.png" alt="image" /></a
						>
					</div>
					<div class="activity-content">
						<div class="activity-title-wrap">
							<h5 class="activity-title underline-two"><a href={'#'}>Beach Tours</a></h5>
							<p>100+ Tours</p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</section>
<!-- activities area start -->

<!-- tour area start -->
<section class="bd-tour-area section-space">
	<div class="container">
		<div class="row gy-24 align-items-center justify-content-between section-title-space">
			<div class="col-lg-6 col-md-8">
				<div class="section-title-wrapper anim-wrapper animation-style-3">
					<span class="section-subtitle mb-10">Most Trending</span>
					<h2 class="section-title title-animation">Top Trending Place</h2>
				</div>
			</div>
			<div class="col-xl-3 col-md-3 col-sm-3">
				<div
					class="tour-navigation btn-navigation p-relative style-three d-flex justify-content-md-end"
				>
					<button class="tourigo-navigation-prev"><i class="fa-regular fa-angle-left"></i></button>
					<button class="tourigo-navigation-next"><i class="fa-regular fa-angle-right"></i></button>
				</div>
			</div>
		</div>
		<div class="row gy-24">
			<div class="col-xxl-3 col-xl-3 col-lg-4 order-lg-0 order-1">
				<div class="cta-wrapper cta-style-four">
					<div class="cta-thumb-four">
						<img src="assets/images/cta/cta-img-4.jpg" alt="image" />
					</div>
					<div class="cta-content">
						<span class="cta-subtitle">Get Dubai Desert Deal</span>
						<h3 class="cta-title white-text mb-25">Book Your Tickets Now</h3>
						<div class="cta-button">
							<a
								href="booking.html"
								class="bd-primary-btn btn-style has-arrow is-bg btn-tertiary is-white radius-60"
							>
								<span class="bd-primary-btn-arrow arrow-right"
									><i class="fa-regular fa-arrow-right"></i></span
								>
								<span class="bd-primary-btn-text">Book Now</span>
								<span class="bd-primary-btn-circle"></span>
								<span class="bd-primary-btn-arrow arrow-left"
									><i class="fa-regular fa-arrow-right"></i></span
								>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xxl-9 col-xl-9 col-lg-8 order-lg-1 order-0">
				<div class="tour-slide-wrapper p-relative">
					<div class="swiper tour__active_two">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="tour-wrapper style-one">
									<div class="p-relative">
										<div class="tour-thumb image-overly">
											<a href="tour-details.html"
												><img src="assets/images/tour/tour-img-12.png" alt="image" /></a
											>
										</div>
										<div class="tour-meta d-flex align-items-center justify-content-between">
											<button class="tour-favorite tour-like">
												<i class="icon-heart"></i>
											</button>
											<div class="tour-location">
												<span
													><a href="tour-details.html"
														><i class="fa-regular fa-location-dot"></i> Rome, Italy</a
													></span
												>
											</div>
										</div>
									</div>
									<div class="tour-content">
										<div class="tour-rating d-flex flex-wrap align-items-center gap-10 mb-10">
											<div class="tour-rating-icon fs-14 d-flex rating-color">
												<i class="fa-solid fa-star"></i>
												<i class="fa-solid fa-star"></i>
												<i class="fa-solid fa-star"></i>
												<i class="fa-solid fa-star"></i>
												<i class="fa-solid fa-star"></i>
											</div>
											<div class="tour-rating-text">
												<span>5 (313 Ratings)</span>
											</div>
										</div>
										<h5 class="tour-title fw-5 underline mb-5">
											<a href="tour-details.html">Island Hopping in the Caribbean: Sun & Sea</a>
										</h5>
										<span class="tour-price b3">$1234.00</span>
										<div class="tour-divider"></div>

										<div class="tour-meta d-flex align-items-center justify-content-between">
											<div class="time d-flex align-items-center gap--5">
												<i class="icon-heart"></i>
												<span>8 days</span>
											</div>
											<div class="tour-btn">
												<a class="bd-text-btn style-two" href="booking.html"
													>Book Now
													<span class="icon__box">
														<i class="fa-regular fa-arrow-right-long icon__first"></i>
														<i class="fa-regular fa-arrow-right-long icon__second"></i>
													</span>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="tour-wrapper style-one">
									<div class="p-relative">
										<div class="tour-thumb image-overly">
											<a href="tour-details.html"
												><img src="assets/images/tour/tour-img-2.png" alt="image" /></a
											>
										</div>
										<div class="tour-meta d-flex align-items-center justify-content-between">
											<button class="tour-favorite tour-like">
												<i class="icon-heart"></i>
											</button>
											<div class="tour-location">
												<span
													><a href="tour-details.html"
														><i class="fa-regular fa-location-dot"></i> Paris, France</a
													></span
												>
											</div>
										</div>
									</div>
									<div class="tour-content">
										<div class="tour-rating d-flex flex-wrap align-items-center gap-10 mb-10">
											<div class="tour-rating-icon fs-14 d-flex rating-color">
												<i class="fa-solid fa-star"></i>
												<i class="fa-solid fa-star"></i>
												<i class="fa-solid fa-star"></i>
												<i class="fa-solid fa-star"></i>
												<i class="fa-solid fa-star"></i>
											</div>
											<div class="tour-rating-text">
												<span>4.8 (313 Ratings)</span>
											</div>
										</div>
										<h5 class="tour-title fw-5 underline mb-5">
											<a href="tour-details.html">Tropical Paradise Retreat: Sun, Sand, Serenity</a>
										</h5>
										<span class="tour-price b3">$1895.00</span>
										<div class="tour-divider"></div>

										<div class="tour-meta d-flex align-items-center justify-content-between">
											<div class="time d-flex align-items-center gap--5">
												<i class="icon-heart"></i>
												<span>7 days</span>
											</div>
											<div class="tour-btn">
												<a class="bd-text-btn style-two" href="booking.html"
													>Book Now
													<span class="icon__box">
														<i class="fa-regular fa-arrow-right-long icon__first"></i>
														<i class="fa-regular fa-arrow-right-long icon__second"></i>
													</span>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="tour-wrapper style-one">
									<div class="p-relative">
										<div class="tour-thumb image-overly">
											<a href="tour-details.html"
												><img src="assets/images/tour/tour-img-13.png" alt="image" /></a
											>
										</div>
										<div class="tour-meta d-flex align-items-center justify-content-between">
											<button class="tour-favorite tour-like">
												<i class="icon-heart"></i>
											</button>
											<div class="tour-location">
												<span
													><a href="tour-details.html"
														><i class="fa-regular fa-location-dot"></i> London, United Kingdom</a
													></span
												>
											</div>
										</div>
									</div>
									<div class="tour-content">
										<div class="tour-rating d-flex flex-wrap align-items-center gap-10 mb-10">
											<div class="tour-rating-icon fs-14 d-flex rating-color">
												<i class="fa-solid fa-star"></i>
												<i class="fa-solid fa-star"></i>
												<i class="fa-solid fa-star"></i>
												<i class="fa-solid fa-star"></i>
												<i class="fa-solid fa-star"></i>
											</div>
											<div class="tour-rating-text">
												<span>4.8 (125 Ratings)</span>
											</div>
										</div>
										<h5 class="tour-title fw-5 underline mb-5">
											<a href="tour-details.html"
												>Safari Expedition: Wildlife Encounters in Africa</a
											>
										</h5>
										<span class="tour-price b3">$9876.00</span>
										<div class="tour-divider"></div>

										<div class="tour-meta d-flex align-items-center justify-content-between">
											<div class="time d-flex align-items-center gap--5">
												<i class="icon-heart"></i>
												<span>6 days</span>
											</div>
											<div class="tour-btn">
												<a class="bd-text-btn style-two" href="booking.html"
													>Book Now
													<span class="icon__box">
														<i class="fa-regular fa-arrow-right-long icon__first"></i>
														<i class="fa-regular fa-arrow-right-long icon__second"></i>
													</span>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="tour-wrapper style-one">
									<div class="p-relative">
										<div class="tour-thumb image-overly">
											<a href="tour-details.html"
												><img src="assets/images/tour/tour-img-14.png" alt="image" /></a
											>
										</div>
										<div class="tour-meta d-flex align-items-center justify-content-between">
											<button class="tour-favorite tour-like">
												<i class="icon-heart"></i>
											</button>
											<div class="tour-location">
												<span
													><a href="tour-details.html"
														><i class="fa-regular fa-location-dot"></i> Maldives</a
													></span
												>
											</div>
										</div>
									</div>
									<div class="tour-content">
										<div class="tour-rating d-flex flex-wrap align-items-center gap-10 mb-10">
											<div class="tour-rating-icon fs-14 d-flex rating-color">
												<i class="fa-solid fa-star"></i>
												<i class="fa-solid fa-star"></i>
												<i class="fa-solid fa-star"></i>
												<i class="fa-solid fa-star"></i>
												<i class="fa-solid fa-star"></i>
											</div>
											<div class="tour-rating-text">
												<span>4.8 (320 Ratings)</span>
											</div>
										</div>
										<h5 class="tour-title fw-5 underline mb-5">
											<a href="tour-details.html">Asian Discovery: Temples, Traditions, Tastings</a>
										</h5>
										<span class="tour-price b3">$5432.00</span>
										<div class="tour-divider"></div>

										<div class="tour-meta d-flex align-items-center justify-content-between">
											<div class="time d-flex align-items-center gap--5">
												<i class="icon-heart"></i>
												<span>5 days</span>
											</div>
											<div class="tour-btn">
												<a class="bd-text-btn style-two" href="booking.html"
													>Book Now
													<span class="icon__box">
														<i class="fa-regular fa-arrow-right-long icon__first"></i>
														<i class="fa-regular fa-arrow-right-long icon__second"></i>
													</span>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- tour area end -->

<!-- testimonial area start -->
<section class="bd-testimonial-area testimonial-space section-space-top flash-white p-relative">
	<div class="container">
		<div
			class="row gy-24 align-items-center text-center justify-content-center section-title-space"
		>
			<div class="col-xl-6">
				<div class="section-title-wrapper anim-wrapper animation-style-3">
					<span class="section-subtitle mb-10">Testimonials</span>
					<h2 class="section-title title-animation">Customers Feedback</h2>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="swiper testimonial-active-two">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="testimonial-wrapper testimonial-style-two">
						<div class="testimonial-content p-relative">
							<div class="testimonial-avatar flex-wrap">
								<div class="testimonial-avatar-wrap">
									<div class="avatar-thumb">
										<img src="assets/images/client/01.png" alt="" />
									</div>
									<div class="avatar-meta">
										<h6 class="avatar-meta-title">Ethan Mitchell</h6>
										<p>Data Scientist</p>
									</div>
								</div>
								<div class="avatar-rating p-relative">
									<div class="fs-14 d-flex rating-color">
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
									</div>
									<div class="testimonial-quot">
										<img src="assets/images/testimonial/quot-shape-2.png" alt="shape" />
									</div>
								</div>
							</div>
							<p class="testimonial-desc">
								Lorem ipsum dolor amet is sit Lorem amet ametcon in sectetur suspe is ndisse. Lorem
								ipsum dolor sit amet in ipsum consectetur suspend isseLorem ipsum dolor sit amet
								consectetur into
							</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="testimonial-wrapper testimonial-style-two">
						<div class="testimonial-content p-relative">
							<div class="testimonial-avatar flex-wrap">
								<div class="testimonial-avatar-wrap">
									<div class="avatar-thumb">
										<img src="assets/images/client/02.png" alt="" />
									</div>
									<div class="avatar-meta">
										<h6 class="avatar-meta-title">Madison Turner</h6>
										<p>Surgeon</p>
									</div>
								</div>
								<div class="avatar-rating p-relative">
									<div class="fs-14 d-flex rating-color">
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
									</div>
									<div class="testimonial-quot">
										<img src="assets/images/testimonial/quot-shape-2.png" alt="shape" />
									</div>
								</div>
							</div>
							<p class="testimonial-desc">
								Lorem ipsum dolor amet is sit Lorem amet ametcon in sectetur suspe is ndisse. Lorem
								ipsum dolor sit amet in ipsum consectetur suspend isseLorem ipsum dolor sit amet
								consectetur into
							</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="testimonial-wrapper testimonial-style-two">
						<div class="testimonial-content p-relative">
							<div class="testimonial-avatar flex-wrap">
								<div class="testimonial-avatar-wrap">
									<div class="avatar-thumb">
										<img src="assets/images/client/03.png" alt="" />
									</div>
									<div class="avatar-meta">
										<h6 class="avatar-meta-title">Mason Rodriguez</h6>
										<p>Programmer</p>
									</div>
								</div>
								<div class="avatar-rating p-relative">
									<div class="fs-14 d-flex rating-color">
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
									</div>
									<div class="testimonial-quot">
										<img src="assets/images/testimonial/quot-shape-2.png" alt="shape" />
									</div>
								</div>
							</div>
							<p class="testimonial-desc">
								Lorem ipsum dolor amet is sit Lorem amet ametcon in sectetur suspe is ndisse. Lorem
								ipsum dolor sit amet in ipsum consectetur suspend isseLorem ipsum dolor sit amet
								consectetur into
							</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="testimonial-wrapper testimonial-style-two">
						<div class="testimonial-content p-relative">
							<div class="testimonial-avatar flex-wrap">
								<div class="testimonial-avatar-wrap">
									<div class="avatar-thumb">
										<img src="assets/images/client/04.png" alt="" />
									</div>
									<div class="avatar-meta">
										<h6 class="avatar-meta-title">Lily Campbell</h6>
										<p>Lawyer</p>
									</div>
								</div>
								<div class="avatar-rating p-relative">
									<div class="fs-14 d-flex rating-color">
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
									</div>
									<div class="testimonial-quot">
										<img src="assets/images/testimonial/quot-shape-2.png" alt="shape" />
									</div>
								</div>
							</div>
							<p class="testimonial-desc">
								Lorem ipsum dolor amet is sit Lorem amet ametcon in sectetur suspe is ndisse. Lorem
								ipsum dolor sit amet in ipsum consectetur suspend isseLorem ipsum dolor sit amet
								consectetur into
							</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="testimonial-wrapper testimonial-style-two">
						<div class="testimonial-content p-relative">
							<div class="testimonial-avatar flex-wrap">
								<div class="testimonial-avatar-wrap">
									<div class="avatar-thumb">
										<img src="assets/images/client/06.png" alt="" />
									</div>
									<div class="avatar-meta">
										<h6 class="avatar-meta-title">Carter White</h6>
										<p>Engineering Manager</p>
									</div>
								</div>
								<div class="avatar-rating p-relative">
									<div class="fs-14 d-flex rating-color">
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
										<i class="fa-solid fa-star"></i>
									</div>
									<div class="testimonial-quot">
										<img src="assets/images/testimonial/quot-shape-2.png" alt="shape" />
									</div>
								</div>
							</div>
							<p class="testimonial-desc">
								Lorem ipsum dolor amet is sit Lorem amet ametcon in sectetur suspe is ndisse. Lorem
								ipsum dolor sit amet in ipsum consectetur suspend isseLorem ipsum dolor sit amet
								consectetur into
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="slider-pagination-wrapper">
				<div class="slider-pagination bd-pagination mt-50 justify-content-center"></div>
			</div>
		</div>
	</div>
</section>
<!-- testimonial area start -->

<!-- team area start -->
<section class="bd-team-area section-space flash-white">
	<div class="container">
		<div
			class="row gy-24 align-items-center text-center justify-content-center section-title-space"
		>
			<div class="col-xl-6">
				<div class="section-title-wrapper anim-wrapper animation-style-3">
					<span class="section-subtitle mb-10">Our Team</span>
					<h2 class="section-title title-animation">Tour Guider</h2>
				</div>
			</div>
		</div>
		<div class="row gy-24">
			<div
				class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6"
				data-aos="fade-up"
				data-aos-delay="200"
			>
				<div class="team-wrapper team-style">
					<div class="team-content-wrap position-relative">
						<div class="team-thumb">
							<a href="team-details.html"
								><img src="assets/images/team/team-img-1.png" alt="image" /></a
							>
						</div>
						<div class="team-content">
							<h6 class="team-member-name b3 underline">
								<a href="team-details.html">Brendan Fraser</a>
							</h6>
							<span>Tour Guide</span>
						</div>
					</div>
					<div class="team-social">
						<a class="icon-01" target="_blank" href="https://www.facebook.com/"
							><i class="icon-facebook"></i></a
						>
						<a class="icon-02" target="_blank" href="https://www.instagram.com/"
							><i class="icon-instagram"></i></a
						>
						<a class="icon-03" target="_blank" href="https://twitter.com/"
							><i class="icon-twitter-x"></i></a
						>
						<a class="icon-04" target="_blank" href="https://www.linkedin.com/"
							><i class="icon-linkedin"></i></a
						>
					</div>
				</div>
			</div>
			<div
				class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6"
				data-aos="fade-up"
				data-aos-delay="400"
			>
				<div class="team-wrapper team-style">
					<div class="team-content-wrap position-relative">
						<div class="team-thumb">
							<a href="team-details.html"
								><img src="assets/images/team/team-img-3.png" alt="image" /></a
							>
						</div>
						<div class="team-content">
							<h6 class="team-member-name b3 underline">
								<a href="team-details.html">Sophia Miller</a>
							</h6>
							<span>Manager</span>
						</div>
					</div>
					<div class="team-social">
						<a class="icon-01" target="_blank" href="https://www.facebook.com/"
							><i class="icon-facebook"></i></a
						>
						<a class="icon-02" target="_blank" href="https://www.instagram.com/"
							><i class="icon-instagram"></i></a
						>
						<a class="icon-03" target="_blank" href="https://twitter.com/"
							><i class="icon-twitter-x"></i></a
						>
						<a class="icon-04" target="_blank" href="https://www.linkedin.com/"
							><i class="icon-linkedin"></i></a
						>
					</div>
				</div>
			</div>
			<div
				class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6"
				data-aos="fade-up"
				data-aos-delay="600"
			>
				<div class="team-wrapper team-style">
					<div class="team-content-wrap position-relative">
						<div class="team-thumb">
							<a href="team-details.html"
								><img src="assets/images/team/team-img-2.png" alt="image" /></a
							>
						</div>
						<div class="team-content">
							<h6 class="team-member-name b3 underline">
								<a href="team-details.html">Ethan Mitchell</a>
							</h6>
							<span>Tour Guide</span>
						</div>
					</div>
					<div class="team-social">
						<a class="icon-01" target="_blank" href="https://www.facebook.com/"
							><i class="icon-facebook"></i></a
						>
						<a class="icon-02" target="_blank" href="https://www.instagram.com/"
							><i class="icon-instagram"></i></a
						>
						<a class="icon-03" target="_blank" href="https://twitter.com/"
							><i class="icon-twitter-x"></i></a
						>
						<a class="icon-04" target="_blank" href="https://www.linkedin.com/"
							><i class="icon-linkedin"></i></a
						>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- team area end -->

<!-- cta area start -->
<section class="bd-cta-section theme-bg fix p-relative">
	<div class="cta-shape-bg" data-background="assets/images/cta/cta-img-2-bg.png"></div>
	<div class="container">
		<div class="cta-three-shape">
			<div class="cta-three-shape-one p-absolute">
				<img src="assets/images/shapes/cta-star.png" alt="shape" />
			</div>
			<div class="cta-three-shape-two p-absolute">
				<img src="assets/images/shapes/cta-eye.png" alt="shape" />
			</div>
			<div class="cta-three-shape-three p-absolute">
				<img src="assets/images/shapes/cta-x.png" alt="shape" />
			</div>
			<div class="cta-three-shape-four p-absolute">
				<img src="assets/images/shapes/cta-star.png" alt="shape" />
			</div>
			<div class="cta-three-shape-six p-absolute">
				<img src="assets/images/shapes/cta-x.png" alt="shape" />
			</div>
		</div>
		<div class="row align-items-center">
			<div class="col-xl-6 col-lg-4 order-lg-0 order-1" data-aos="fade-right">
				<div class="cta-thumb-wrap cta-style-two p-relative">
					<div class="cta-thumb-two">
						<img src="assets/images/cta/cta-img-2.png" alt="image" />
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- cta area end -->
