<script>
	import ContactForm from '../components/ContactForm.svelte';
	import Experience from '../components/Experience.svelte';
	import Landing from '../components/Landing.svelte';
	import ProjectSummary from '../components/ProjectSummary.svelte';
	import Section from '../components/Section.svelte';
	import Skill from '../components/Skill.svelte';
	import Skills from '../components/Skills.svelte';

	// TODO: prefetch all data from strapi, all hosted on nanobox; instead of specifying image urls, upload images!
</script>

<svelte:head>
	<title>Dennis Krasnov - ...</title>
	<!-- TODO: good title for seo -->
</svelte:head>

<!-- TODO: I also need to link to appropriate experience!! -->
<!-- TODO: make <ExperienceLogo url="" id=""/> tags inside of Landing!!! -->
<Landing
	title="Software Developer"
	summary="lool"
	companyLogoUrls={[
		"successkid.jpg",
		"successkid.jpg",
		"successkid.jpg",
		"successkid.jpg",
		"successkid.jpg",
		"successkid.jpg",
		"successkid.jpg",
	]}
/>

<Section title="skills" subheading="We create back-end and front-end solutions using top-notch and up-to-date technologies, that are reliable, future-proof and scalable.">
	<Skills>
		<Skill
			imageUrl="kotlin/spring/python/java"
			title="Backend Development"
			summary="Python is the backbone of the future, enabling Machine Learning and super scalable code."
		/>

		<Skill
			imageUrl="html/css/js/react"
			title="Web Development"
			summary="Gatsby is a modern static site generator based on React. We use it to build extremely fast websites and apps."
		/>

		<Skill
			imageUrl="rust/c/c++/bash"
			title="Systems Programming"
			summary="We use React.js to build design system based, dynamic and modern front-end web apps."
		/>

		<Skill
			imageUrl="flutter+dart+android+ios"
			title="Mobile Development"
			summary="React Native allows us to build and deploy multiplatform, native apps for Android and iOS."
		/>

		<Skill
			imageUrl="???"
			title="UX Design"
			summary="Swift is the language of the iPhone, iPad and Mac. We build fully native apps for all these platforms."
		/>

		<Skill
			imageUrl="???"
			title="Full Business cycle"
			summary="We use HTML5, CSS3 and JS for pixel-perfect and search engine friendly projects."
		/>
	</Skills>
</Section>

<Section title="projects" subheading="night and day">
	<!-- TODO: extra 'flipped' attribute -->
	<ProjectSummary
		logoUrl = "successkid.jpg"
		summary = "We created an AI and machine learning based cryptocurrency analytics tool"
		liveUrl = "https://sgbiotec.com"
		projectId = "diet-driven"
		imageUrl = "successkid.jpg"
	/>

	<ProjectSummary
		logoUrl = "successkid.jpg"
		summary = "We designed and coded the most innovative Investment Fund buying platform"
		liveUrl = "https://sgbiotec.com"
		projectId = "diet-driven"
		imageUrl = "successkid.jpg"
	/>
</Section>

<Section title="experience" subheading="Here's companies">
	<Experience
		name = "Ultimate Software"
		title = "Software Engineering Intern"
		startDate = "September 2019"
		endDate= "December 2019"
		points = {[
			"Developed authorization microservices in identity platform team",
			"Added permissions claim to JWT for identity gateway to be used for all requests by 51M users; refactored to avoid authorization recursion",
			"Researched performance of event sourcing aggregate replay, discovered major architectural flaw, escalated to the tech lead",
			"Java, Axon Framework, EDA, CQRS, event sourcing, ForgeRock IG/AM",
		]}
		quote = "Amazing"
		quotee = "Someone"
	/>

	<Experience
		name = "Krasnov Tech"
		title = "Freelance Web Developer"
		startDate = "June 2018"
		endDate = "August 2019"
		points = {[
			"sgbiotec.com is an e-commerce store selling fluorescent proteins",
			"Pocket Trade Show is an online tradeshow platform for salesmen",
			"Founded business, acquired customers, built projects start to finish",
			"React, MobX, Firestore, Shopify API; PHP 7, jQuery, MySQL, AWS S3",
		]}
		quote = "Amazing"
		quotee = "Someone"
	/>
</Section>

<Section title="contact" subheading="gimme a call">
	<ContactForm/>
</Section>

<style>
	/* TODO: nest with scss */
	:global(html) {
		scroll-behavior: smooth;
	}

	@media screen and (prefers-reduced-motion: reduce) {
		:global(html) {
			scroll-behavior: auto;
		}
	}

	:global(body) {
		font-family: 'Source Sans Pro', sans-serif;
	}

	:global(h1, h2, h3, h4, h5, h6, p, ul) {
		margin: 0;
	}

</style>