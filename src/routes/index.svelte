<script>
	import Companies from '../components/Companies.svelte';
	import ContactForm from '../components/ContactForm.svelte';
	import Experience from '../components/Experience.svelte';
	import Landing from '../components/Landing.svelte';
	import Projects from '../components/Projects.svelte';
	import ProjectSummary from '../components/ProjectSummary.svelte';
	import Section from '../components/Section.svelte';
	import Skill from '../components/Skill.svelte';
	import Skills from '../components/Skills.svelte';

	let professionalStartDate = "08/01/2017"; // First time I got paid for development work
	let millisecondsInYear = 31536000000;
	let yearsExperience = Math.floor((new Date().getTime() - new Date(professionalStartDate).getTime()) / millisecondsInYear);
</script>

<svelte:head>
	<title>Dennis Krasnov - Experienced developer available for hire</title>
</svelte:head>

<Section id="landing" noPadding>
	<Landing
		title="Experienced Developer Available for Hire"
		summary="Full stack software engineer with {yearsExperience} years experience designing and developing structured software systems."
	/>
	<Companies/>
</Section>

<Section id="skills" watermark="skills" watermarkCreep=0.2 dark>
	<Skills>
		<Skill
			imageUrl="/skills/backend.svg"
			title="Backend Development"
			summary="<b>Spring</b>-based <b>Java/Kotlin</b> for <b>REST</b> and <b>gRPC</b> services. <b>Postgre</b>, <b>Redis</b>, <b>Firestore</b> DBs. Project configuration with <b>Gradle</b>."
		/>

		<Skill
			imageUrl="/skills/web.svg"
			title="Web Development"
			summary="Responsive websites in <b>HTML5</b>, <b>CSS/SCSS</b>. <b>Rx/Redux</b>-based <b>React</b> applications in <b>ES6 JavaScript</b> and <b>Typescript</b>."
		/>

		<Skill
			imageUrl="/skills/systems.svg"
			title="Systems Programming"
			summary="Large <b>C++</b> projects. Safe multithreaded code in <b>Rust</b>. Deep understanding of performant <b>data structures</b> and <b>algorithms</b>."
		/>

		<Skill
			imageUrl="/skills/mobile.svg"
			title="Mobile Development"
			summary="<b>Dart/Flutter</b> mobile apps for both <b>iOS</b> and <b>Android</b>. Stream-based <b>BLoC</b> state management. <b>Firebase</b>-powered backend."
		/>

		<Skill
			imageUrl="/skills/ux.svg"
			title="UX Design"
			summary="Interactive app prototyping in <b>Figma</b>. <b>Usability Testing</b> with real users. Frequent iterations based on feedback."
		/>

		<Skill
			imageUrl="/skills/business.svg"
			title="Full Business Cycle"
			summary="Acquiring customers, gathering <b>requirements</b>, managing <b>expectations</b>, timely execution, long-term <b>maintenance</b>."
		/>
	</Skills>
</Section>

<Section id="projects" watermark="projects" watermarkCreep=0.325>
	<Projects>
		<ProjectSummary
			name = "Nanobox Config Linter"
			summary = "VSCode Plugin"
			colourHex = "#e5e8ee"
			blackText
			projectId = "nanobox"
			imageUrl = "http://qaisar.design/assets/images/agncee-project.png"
		/>

		<ProjectSummary
			name = "Diet Driven"
			summary = "Calorie Counter Mobile App"
			colourHex = "#538BF3"
			projectId = "diet-driven"
			imageUrl = "http://qaisar.design/assets/images/squidex-project.png"
		/>

		<ProjectSummary
			name = "krasnov.dev"
			summary = "Portfolio Website"
			colourHex = "#A274EC"
			projectId = "portfolio"
			imageUrl = "http://qaisar.design/assets/images/agncee-project.png"
		/>

		<ProjectSummary
			name = "Chess"
			summary = "Game of<br/>Chess"
			colourHex = "#e5e8ee"
			blackText
			projectId = "chess"
			imageUrl = "http://qaisar.design/assets/images/sports-project.png"
		/>
	</Projects>
</Section>

<Section id="work" watermark="work" dark>
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

<Section id="contact" watermark="contact">
	<ContactForm/>
</Section>

<style lang="scss">
	
</style>