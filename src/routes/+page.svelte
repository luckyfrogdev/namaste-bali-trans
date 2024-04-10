<script lang="ts">
	let adult_visitor = '';
	let children_visitor = '';
	let duration = '';
	let travel_month = '';
	let travel_type = '';
	let diet_preference = '';
	let travel_plan = '';
	let name = '';
	let email = '';
	let whatsapp = '';

	let destinations = [
		{
			id: 1,
			name: 'Lempuyang Temple',
			image: 'assets/images/tour/lempuyang.png',
			tagline: "Gateway to the Divine: Mount Lempuyang's Mystical Portal"
		},
		{
			id: 2,
			name: 'Tirta Gangga',
			image: 'assets/images/tour/tirta-gangga.png',
			tagline: 'Tranquil Waters, Serene Sanctuary'
		},
		{
			id: 3,
			name: 'Ulun Danu Beratan Temple',
			image: 'assets/images/tour/ulun-danu.png',
			tagline: "Serenity Upon the Lake's Reflections"
		},
		{
			id: 4,
			name: 'Tanah Lot Temple',
			image: 'assets/images/tour/tanah-lot.png',
			tagline: 'Where Land and Sea Converge in Harmony'
		},
		{
			id: 5,
			name: 'Kintamani',
			image: 'assets/images/tour/kintamani.png',
			tagline: 'Majestic Vistas, Volcanic Wonders'
		},
		{
			id: 6,
			name: 'Mount Batur',
			image: 'assets/images/tour/mount-batur.png',
			tagline: "Ascend to Bali's Sacred Summit"
		},
		{
			id: 7,
			name: 'Uluwatu Temple',
			image: 'assets/images/tour/uluwatu.png',
			tagline: 'Perched on Cliffs, Bathed in Sunsets'
		},
		{
			id: 8,
			name: 'Ubud Monkey Forest',
			image: 'assets/images/tour/monkey-forest.png',
			tagline: 'Where Humans Meet Their Mischievous Cousins'
		},
		{
			id: 9,
			name: 'Penglipuran Village',
			image: 'assets/images/tour/penglipuran.png',
			tagline: 'Timeless Charm, Traditional Elegance'
		},
		{
			id: 10,
			name: 'Tegalalang Rice Terrace',
			image: 'assets/images/tour/tegalalang.png',
			tagline: "Nature's Canvas, Bali's Tapestry"
		},
		{
			id: 11,
			name: 'Kelingking Beach',
			image: 'assets/images/tour/kelingking-beach.png',
			tagline: 'Spectacular Cliff Views, Pristine Sands'
		},
		{
			id: 12,
			name: "Angel's Billabong",
			image: 'assets/images/tour/angels-billabong.png',
			tagline: 'Coastal Wonder, Natural Rock Formation'
		},
		{
			id: 13,
			name: 'Broken Beach',
			image: 'assets/images/tour/broken-beach.png',
			tagline: "Nature's Amphitheater, Majestic Beauty"
		},
		{
			id: 14,
			name: 'Crystal Bay Beach',
			image: 'assets/images/tour/crystal-bay-beach.png',
			tagline: 'Turquoise Waters, Paradise Found'
		}
	];

	let popular_destinations = [
		{
			id: 1,
			name: 'Tanah Lot Temple',
			image: 'assets/images/tour/tanah-lot.png',
			tagline: 'Where Land and Sea Converge in Harmony'
		},
		{
			id: 2,
			name: 'Kintamani',
			image: 'assets/images/tour/kintamani.png',
			tagline: 'Majestic Vistas, Volcanic Wonders'
		},
		{
			id: 3,
			name: 'Ubud Monkey Forest',
			image: 'assets/images/tour/monkey-forest.png',
			tagline: 'Where Humans Meet Their Mischievous Cousins'
		},
		{
			id: 4,
			name: 'Penglipuran Village',
			image: 'assets/images/tour/penglipuran.png',
			tagline: 'Timeless Charm, Traditional Elegance'
		}
	];

	let teams = [
		{
			id: 1,
			name: 'Gung Dwi',
			role: 'Customer Service',
			image: 'assets/images/team/gung-dwi.jpeg',
			social_media: {
				facebook:
					'https://web.facebook.com/profile.php?id=100094701733547&mibextid=LQQJ4d&rdid=BsNriH0mGtCJOfmG',
				instagram: 'https://www.instagram.com/agungrai49?utm_source=qr'
			}
		},
		{
			id: 2,
			name: 'Gus Aji',
			role: 'Tour Guider / Driver',
			image: 'assets/images/team/gus-aji.jpeg',
			social_media: {
				facebook: 'https://web.facebook.com/goes.tillkiss'
			}
		}
	];

	let testimonials = [
		{
			id: 1,
			name: 'Aarav Patel',
			description:
				'My journey with Namaste Bali Trans was absolutely delightful. The drivers were not only skilled and efficient but also incredibly warm and friendly. They made me feel right at home in Bali, sharing fascinating insights about the local culture and attractions. Thanks to Namaste Bali Trans, my trip was truly unforgettable.',
			picture: 'https://ui-avatars.com/api/?name=AP&size=512&background=0D8ABC&color=fff'
		},
		{
			id: 2,
			name: 'Aisha Sharma',
			description:
				'Namaste Bali Trans provided impeccable service throughout my stay in Bali. The drivers were always punctual and went above and beyond to ensure my comfort and safety. Their local knowledge helped me discover hidden gems and experience Bali in a truly authentic way. I highly recommend Namaste Bali Trans to anyone visiting this beautiful island.',
			picture: 'https://ui-avatars.com/api/?name=AS&size=512&background=0D8ABC&color=fff'
		},
		{
			id: 3,
			name: 'Rohan Gupta',
			description:
				'I had an amazing experience with Namaste Bali Trans during my recent trip to Bali. The drivers were professional, courteous, and knowledgeable about the best routes and attractions on the island. They made me feel at ease and took care of all my transportation needs, allowing me to focus on enjoying my vacation. I highly recommend their services to anyone traveling to Bali.',
			picture: 'https://ui-avatars.com/api/?name=RG&size=512&background=0D8ABC&color=fff'
		},
		{
			id: 4,
			name: 'Priya Singh',
			description:
				"Namaste Bali Trans provided exceptional service from start to finish. The drivers were friendly, helpful, and always willing to go the extra mile to ensure my comfort. Whether it was arranging airport transfers or suggesting local eateries, they made my trip to Bali stress-free and enjoyable. I couldn't have asked for a better transportation service.",
			picture: 'https://ui-avatars.com/api/?name=PS&size=512&background=0D8ABC&color=fff'
		},
		{
			id: 5,
			name: 'Arjun Kapoor',
			description:
				"My experience with Namaste Bali Trans was outstanding. The drivers were not only professional but also incredibly knowledgeable about Bali's attractions and culture. They provided valuable insights and recommendations that made my trip truly memorable. I highly recommend Namaste Bali Trans to anyone seeking reliable transportation services in Bali.",
			picture: 'https://ui-avatars.com/api/?name=AK&size=512&background=0D8ABC&color=fff'
		}
	];

	function bookNow() {
		// Capitalize the first letter of travel_type
		let capitalizedTravelType = travel_type.charAt(0).toUpperCase() + travel_type.slice(1);
		let capitalizedTravelMonth = travel_month.charAt(0).toUpperCase() + travel_month.slice(1);

		// Map diet_preference values to their corresponding full text
		let dietPreferenceText = '';

		switch (diet_preference) {
			case 'pork':
				dietPreferenceText = 'I Love Pork';
				break;
			case 'halal_food':
				dietPreferenceText = 'Halal Food';
				break;
			case 'vegetarian':
				dietPreferenceText = 'Vegetarian';
				break;
			default:
				dietPreferenceText = 'No Preference';
		}

		let message =
			`Hello! I would like to book a trip with the following details:\n\n` +
			`Adult Visitors: ${adult_visitor}\n` +
			`Children Visitors: ${children_visitor}\n` +
			`Duration: ${duration} days\n` +
			`Travel Month: ${capitalizedTravelMonth}\n` +
			`Travel Type: ${capitalizedTravelType}\n` +
			`Diet Preference: ${dietPreferenceText}\n\n` +
			`Travel Plan: ${travel_plan}\n\n` +
			`Contact Information:\n` +
			`Name: ${name}\n` +
			`Email: ${email}\n` +
			`WhatsApp: ${whatsapp}`;

		// Here you can replace the console.log with the actual code to send WhatsApp message
		console.log('Sending WhatsApp message:', message);

		// Encode the message for URL
		let encodedMessage = encodeURIComponent(message);

		// Construct the WhatsApp link with the message
		let whatsappLink = `https://wa.me/6283892565216?text=${encodedMessage}`;

		// Open the WhatsApp chat link
		window.open(whatsappLink);
	}
</script>

<svelte:head>
	<title>Namaste Bali Trans - Your Trusted Partner for Transportation Services in Bali</title>
	<meta name="description" content="Namaste Bali Trans offers reliable transportation services in Bali, including airport transfers, tours, and more. Book your hassle-free travel experience with us today!" />
	<meta property="og:title" content="Namaste Bali Trans - Your Trusted Partner for Transportation Services in Bali" />
	<meta property="og:description" content="Namaste Bali Trans offers reliable transportation services in Bali, including airport transfers, tours, and more. Book your hassle-free travel experience with us today!" />
	<meta property="og:url" content="https://namastebalitrans.com" />
	<meta property="og:type" content="website" />
	<meta property="og:image" content="https://namastebalitrans.com/og-image.jpg" />
	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:title" content="Namaste Bali Trans - Your Trusted Partner for Transportation Services in Bali" />
	<meta name="twitter:description" content="Namaste Bali Trans offers reliable transportation services in Bali, including airport transfers, tours, and more. Book your hassle-free travel experience with us today!" />
	<meta name="twitter:image" content="https://namastebalitrans.com/twitter-image.jpg" />
</svelte:head>

<!-- Banner area start -->
<section class="bd-banner-area banner-style-two banner-slider-mask">
	<!--	-->
	<div class="swiper banner-two-active p-relative">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<div class="banner-slider-wrapper">
					<div class="banner-two-image" data-background="assets/images/banner/tanah-lot.png"></div>
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
										Discover the allure of Tanah Lot, where nature and spirituality converge in a
										mesmerizing embrace. Embark on a picturesque journey for two, crafting timeless
										memories amidst Bali's coastal wonders.
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="banner-slider-wrapper">
					<div class="banner-two-image" data-background="assets/images/banner/kecak.png"></div>
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
										Dive into the enchantment of the Kecak Dance, where ancient myths and rhythmic
										chants intertwine, offering a captivating glimpse into Balinese culture and
										tradition.
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
										Explore the breathtaking beauty of Kelingking Beach, a hidden gem nestled along
										Bali's rugged coastline. With its iconic cliff formation and pristine sands
										kissed by azure waters, it's a haven for adventurers and nature enthusiasts
										seeking unparalleled beauty and serenity
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
										<span class="yellow-shape">
											Mischievous<img
												src="assets/images/shapes/yellow-shape.png"
												alt="yellow-shape"
											/></span
										> Cousins
									</h1>
									<p class="banner-description mb-20">
										Step into the enchanting realm of Monkey Forest Ubud, where ancient temples and
										lush greenery provide a haven for playful macaques. Lose yourself in this
										mystical sanctuary, where encounters with these spirited creatures offer
										glimpses into Bali's rich cultural tapestry.
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
										Discover Tirta Empul, an ancient Hindu temple renowned for its sacred springs
										believed to possess purifying powers. Immerse yourself in the ritual baths where
										locals and pilgrims seek spiritual cleansing and renewal, amidst the tranquil
										beauty of Bali's countryside
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
										Ulun Danu Bratan is a serene sanctuary nestled beside Lake Bratan, where the
										iconic temple complex seems to float upon the water's surface. Delve into the
										spiritual ambiance as misty mountain vistas and tranquil waters create a
										picturesque backdrop for contemplation and reverence.
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
								<a href={'javascript:void(0)'}><img src={item.image} alt={item.name} /></a>
							</div>
							<div class="tour-meta d-flex align-items-center justify-content-between">
								<div class="tour-location">
									<span
										><a href={'javascript:void(0)'}
											><i class="fa-regular fa-location-dot"></i> {item.name}</a
										></span
									>
								</div>
							</div>
						</div>
						<div class="tour-content">
							<h5 class="tour-title fw-5 underline mb-5">
								{item.tagline}
							</h5>

							<div class="tour-divider"></div>

							<div class="tour-meta d-flex align-items-center justify-content-between">
								<div class="time d-flex align-items-center gap--5">
									<span>1 day</span>
								</div>
								<div class="tour-btn">
									<a class="bd-text-btn style-two" href={'#your-plan'}
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
		</div>
		<div class="row gy-24">
			<div class="col-xxl-3 col-xl-3 col-lg-4 order-lg-0 order-1">
				<div class="cta-wrapper cta-style-four">
					<div class="cta-thumb-four">
						<img src="assets/images/activity/atv.png" alt="ATV in Bali" />
					</div>
					<div class="cta-content">
						<span class="cta-subtitle">Let's Travel With Us</span>
						<h3 class="cta-title white-text mb-25">Hire Us Now!</h3>
						<div class="cta-button">
							<a
								href={'#your-plan'}
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
					<div
						class="swiper tour__active_two swiper-initialized swiper-horizontal swiper-pointer-events swiper-backface-hidden"
					>
						<div
							class="swiper-wrapper"
							id="swiper-wrapper-53917d7eb7ffe877"
							aria-live="polite"
							style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;"
						>
							{#each popular_destinations as item}
								<div
									class="swiper-slide swiper-slide-active"
									role="group"
									aria-label="1 / 4"
									style="width: 306px; margin-right: 24px;"
								>
									<div class="tour-wrapper style-one">
										<div class="p-relative">
											<div class="tour-thumb image-overly">
												<a href={'javascript:void(0)'}><img src={item.image} alt={item.name} /></a>
											</div>
											<div class="tour-meta d-flex align-items-center justify-content-between">
												<div class="tour-location">
													<span
														><a href={'javascript:void(0)'}
															><i class="fa-regular fa-location-dot"></i> {item.name}</a
														></span
													>
												</div>
											</div>
										</div>
										<div class="tour-content">
											<h5 class="tour-title fw-5 underline mb-5">
												<a href={'javascript:void(0)'}>{item.tagline}</a>
											</h5>
											<div class="tour-divider"></div>

											<div class="tour-meta d-flex align-items-center justify-content-between">
												<div class="time d-flex align-items-center gap--5">
													<span>1 day</span>
												</div>
												<div class="tour-btn">
													<a class="bd-text-btn style-two" href={'#your-plan'}
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
						<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
					</div>
				</div>
			</div>
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
						<a href={'javascript:void(0)'}
							><img src="assets/images/activity/swing.png" alt="Swing in Bali" /></a
						>
					</div>
					<div class="activity-content">
						<div class="activity-title-wrap">
							<h5 class="activity-title underline-two"><a href={'javascript:void(0)'}>Swing</a></h5>
						</div>
					</div>
				</div>
				<div class="activity-wrapper activity-style-two">
					<div class="activity-thumb image-overly">
						<a href={'javascript:void(0)'}
							><img src="assets/images/activity/snorkeling.png" alt="Snorkeling in Bali" /></a
						>
					</div>
					<div class="activity-content">
						<div class="activity-title-wrap">
							<h5 class="activity-title underline-two">
								<a href={'javascript:void(0)'}>Snorkeling</a>
							</h5>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-6 col-lg-8 col-md-8">
				<div class="activity-wrapper activity-style-two">
					<div class="activity-thumb image-overly">
						<a href={'javascript:void(0)'}
							><img src="assets/images/activity/rafting-bali.png" alt="Rafting in Bali" /></a
						>
					</div>
					<div class="activity-content">
						<div class="activity-title-wrap">
							<h5 class="activity-title underline-two">
								<a href={'javascript:void(0)'}>Rafting</a>
							</h5>
						</div>
					</div>
				</div>
				<div class="row gy-24">
					<div class="col-xl-6 col-lg-6 col-md-6">
						<div class="activity-wrapper activity-style-two">
							<div class="activity-thumb image-overly">
								<a href={'javascript:void(0)'}
									><img src="assets/images/activity/watersport.png" alt="Watersport in Bali" /></a
								>
							</div>
							<div class="activity-content">
								<div class="activity-title-wrap">
									<h5 class="activity-title underline-two">
										<a href={'javascript:void(0)'}>Watersport</a>
									</h5>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6">
						<div class="activity-wrapper activity-style-two">
							<div class="activity-thumb image-overly">
								<a href={'javascript:void(0)'}
									><img src="assets/images/activity/kecak.png" alt="Kecak Dance in Bali" /></a
								>
							</div>
							<div class="activity-content">
								<div class="activity-title-wrap">
									<h5 class="activity-title underline-two">
										<a href={'javascript:void(0)'}>Kecak Dance</a>
									</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-lg-6 col-md-12">
				<div class="activity-wrapper activity-style-two">
					<div class="activity-thumb image-overly">
						<a href={'javascript:void(0)'}
							><img src="assets/images/activity/atv.png" alt="ATV Ride in Bali" /></a
						>
					</div>
					<div class="activity-content">
						<div class="activity-title-wrap">
							<h5 class="activity-title underline-two">
								<a href={'javascript:void(0)'}>ATV Ride</a>
							</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- activities area start -->

<!-- cta area start -->
<section class="bd-cta-section theme-bg fix p-relative" id="your-plan">
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

		<div class="col-lg-12" style="margin-bottom: 100px; margin-top: 30px">
			<header class="container d-flex flex-column align-items-center py-3">
				<h1 class="text-center text-white">Plan your next holiday with Namaste Bali Trans</h1>
				<br />
				<p class="text-center text-white">
					Arrange your dream vacation with Namaste Bali Trans and receive a free itinerary tailored
					only for you.
				</p>
			</header>

			<main class="container mt-5">
				<form class="form-control" style="padding: 20px" on:submit|preventDefault={bookNow}>
					<div class="row">
						<div class="col-md-6">
							<div class="form-input-title">
								<label for="plan"
									>Visitor(s)
									<span>*</span></label
								>
							</div>
							<div class="input-group mb-3">
								<span class="input-group-text" id="basic-addon1">Adults</span>
								<input
									type="number"
									class="form-control"
									placeholder="Number of Adults"
									aria-label="Number of Adults"
									aria-describedby="basic-addon1"
									bind:value={adult_visitor}
									required
								/>
							</div>
							<div class="input-group mb-3">
								<span class="input-group-text" id="basic-addon1">Children</span>
								<input
									type="number"
									class="form-control"
									placeholder="Number of Children"
									aria-label="Number of Children"
									aria-describedby="basic-addon1"
									bind:value={children_visitor}
								/>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-input-title">
								<label for="plan"
									>Day(s)
									<span>*</span></label
								>
							</div>
							<div class="input-group mb-3">
								<span class="input-group-text" id="basic-addon1">Duration</span>
								<input
									type="number"
									class="form-control"
									placeholder="Number of Days"
									aria-label="Number of Days"
									aria-describedby="basic-addon1"
									required
									bind:value={duration}
								/>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-4">
							<div class="form-input-title">
								<label for="plan"
									>When
									<span>*</span></label
								>
							</div>
							<div class="input-box-select">
								<select
									class="nice-select input-box-select"
									name="travel_month"
									bind:value={travel_month}
									id="service"
									required
								>
									<option value="">Select Travel Month</option>
									<option value="january">January</option>
									<option value="february">February</option>
									<option value="march">March</option>
									<option value="april">April</option>
									<option value="may">May</option>
									<option value="june">June</option>
									<option value="july">July</option>
									<option value="august">August</option>
									<option value="september">September</option>
									<option value="october">October</option>
									<option value="november">November</option>
									<option value="december">December</option>
								</select>
							</div>
						</div>
						<div class="col-md-4">
							<div class="col-md-4">
								<div class="form-input-title">
									<label for="plan"
										>Travel Type
										<span>*</span></label
									>
								</div>
								<div class="input-box-select">
									<select
										class="nice-select input-box-select"
										name="travel_type"
										bind:value={travel_type}
										id="service"
										required
									>
										<option value="">Select Travel Type</option>
										<option value="adventure">Adventure</option>
										<option value="destination">Destination</option>
										<option value="explore">Explore</option>
										<option value="holidays">Holidays</option>
										<option value="on budget">On Budget</option>
										<option value="popular">Popular</option>
										<option value="romantic">Romantic</option>
										<option value="vacation">Vacation</option>
										<option value="other">Other</option>
									</select>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="col-md-4">
								<div class="form-input-title">
									<label for="plan"
										>Your Diet
										<span>*</span></label
									>
								</div>
								<div class="input-box-select">
									<select
										class="nice-select input-box-select"
										name="diet_preference"
										id="service"
										bind:value={diet_preference}
										required
									>
										<option value="">Select Your Diet Preference</option>
										<option value="halal">Halal Food</option>
										<option value="pork">I Love Pork</option>
										<option value="vegetarian">Vegetarian</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<br />
					<div class="col-lg-12 text-center">
						<div class="form-input-box">
							<div class="form-input-title">
								<label for="plan">Holiday's Plan<span>*</span></label>
							</div>
							<div class="form-input">
								<textarea
									id="plan"
									name="travel_plan"
									placeholder="Tell us about your holidays plan..."
									bind:value={travel_plan}
									required
								></textarea>
							</div>
						</div>
					</div>
					<div class="row mt-4">
						<div class="col-lg-4">
							<div class="form-input-box">
								<div class="form-input-title">
									<label for="fullName">Full Name<span>*</span></label>
								</div>
								<div class="form-input">
									<input
										name="name"
										id="fullName"
										type="text"
										placeholder="Type your name"
										required
										bind:value={name}
									/>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="form-input-box">
								<div class="form-input-title">
									<label for="email">Email<span>*</span></label>
								</div>
								<div class="form-input">
									<input
										name="email"
										id="email"
										type="email"
										placeholder="Type your email"
										required
										bind:value={email}
									/>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="form-input-box">
								<div class="form-input-title">
									<label for="whatsapp">Whatsapp Number<span>*</span></label>
								</div>
								<div class="form-input">
									<input
										name="whatsapp"
										id="whatsapp"
										type="text"
										placeholder="Your whatsapp with country code"
										required
										bind:value={whatsapp}
									/>
								</div>
							</div>
						</div>
					</div>
					<div class="row mt-4">
						<div class="col-md-12 d-flex justify-content-center">
							<div class="col-lg-2">
								<button type="submit" class="bd-primary-btn btn-style has-arrow is-bg radius-60">
									<span class="bd-primary-btn-arrow arrow-right"
										><i class="fa-regular fa-arrow-right"></i></span
									>
									<span class="bd-primary-btn-text">Book Now</span>
									<span class="bd-primary-btn-circle"></span>
									<span class="bd-primary-btn-arrow arrow-left"
										><i class="fa-regular fa-arrow-right"></i></span
									>
								</button>
							</div>
						</div>
					</div>
				</form>
			</main>
		</div>
	</div>
</section>
<!-- cta area end -->

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
				{#each testimonials as testimonial}
					<div class="swiper-slide">
						<div class="testimonial-wrapper testimonial-style-two">
							<div class="testimonial-content p-relative">
								<div class="testimonial-avatar flex-wrap">
									<div class="testimonial-avatar-wrap">
										<div class="avatar-thumb">
											<img src={testimonial.picture} alt="" />
										</div>
										<div class="avatar-meta">
											<h6 class="avatar-meta-title">{testimonial.name}</h6>
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
									{testimonial.description}
								</p>
							</div>
						</div>
					</div>
				{/each}
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
					<h2 class="section-title title-animation">Tour Guider And Customer Service</h2>
				</div>
			</div>
		</div>
		<div class="row gy-24">
			{#each teams as team}
				<div
					class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6"
					data-aos="fade-up"
					data-aos-delay="200"
				>
					<div class="team-wrapper team-style">
						<div class="team-content-wrap position-relative">
							<div class="team-thumb">
								<a href={'javascript:void(0)'}><img src={team.image} alt="Image {team.name}" /></a>
							</div>
							<div class="team-content">
								<h6 class="team-member-name b3 underline">
									<a href={'javascript:void(0)'}>{team.name}</a>
								</h6>
								<span>{team.role}</span>
							</div>
						</div>
						<div class="team-social">
							{#if team.social_media.facebook}
								<a class="icon-01" target="_blank" href={team.social_media.facebook}
									><i class="icon-facebook"></i></a
								>
							{/if}
							{#if team.social_media.instagram}
								<a class="icon-02" target="_blank" href={team.social_media.instagram}
									><i class="icon-instagram"></i></a
								>
							{/if}
						</div>
					</div>
				</div>
			{/each}
		</div>
	</div>
</section>
<!-- team area end -->
