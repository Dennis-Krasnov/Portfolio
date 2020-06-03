<script>
	import ContactForm from '../components/ContactForm.svelte';
	import Experience from '../components/Experience.svelte';
	import Landing from '../components/Landing.svelte';
	import Projects from '../components/Projects.svelte';
	import ProjectSummary from '../components/ProjectSummary.svelte';
	import Section from '../components/Section.svelte';
	import Skill from '../components/Skill.svelte';
	import Skills from '../components/Skills.svelte';

	let professionalStartDate = "08/01/2017"; // Finishing pocket trade show (first time I got paid)
	let millisecondsInYear = 31536000000;
	let yearsExperience = Math.floor((new Date().getTime() - new Date(professionalStartDate).getTime()) / millisecondsInYear);

	// TODO: prefetch all data from strapi, all hosted on nanobox; instead of specifying image urls, upload images!
</script>

<svelte:head>
	<title>Dennis Krasnov - Experienced developer available for hire</title>
</svelte:head>

<!-- TODO: I also need to link to appropriate experience!! -->
<!-- TODO: make <ExperienceLogo url="" id=""/> tags inside of Landing!!! -->
<!-- summary="I have <a href='#experience'>3 years</a> experience designing and developing structured software systems. I'm a computer science student at a top Canadian University, currently looking for an internship." -->
<!-- summary="I have <a href='#experience'>3 years</a> experience designing and developing structured software systems. I'm a CS student at a top Canadian University, currently looking for an internship." -->
<!-- summary="Hi, I'm Dennis. I have <a href='#experience'>3 years</a> experience designing and developing structured software systems. I'm a computer science student at uWaterloo, currently looking for an internship." -->

<!-- title="Full-Stack Software Developer" -->
<!-- Currently studying CS at uWaterloo and looking for a summer 2020 internship. -->

<Section>
	<Landing
		title="Experienced Developer Available for Hire"
		summary="Full stack software engineer with {yearsExperience} years experience designing and developing structured software systems."
	/>
	<div id="customer-logos">
		<a href="#experience">
			<span class="button">View my work experience</span>
			<ul>
				<li><img class="kickstarter" alt="kickstarter" src="https://stripe.com//img/v3/home/customer-logos/kickstarter.svg"></li>
				<li><img class="instacart" alt="instacart" src="https://stripe.com//img/v3/home/customer-logos/instacart.svg"></li>
				<li><img class="bookingcom" alt="bookingcom" src="https://stripe.com//img/v3/home/customer-logos/bookingcom.svg"></li>
				<li><img class="lyft" alt="lyft" src="https://stripe.com//img/v3/home/customer-logos/lyft.svg"></li>
				<li><img class="shopify" alt="shopify" src="https://stripe.com//img/v3/home/customer-logos/shopify.svg"></li>
				<li><img class="opentable" alt="opentable" src="https://stripe.com//img/v3/home/customer-logos/opentable.svg"></li>
				<li><img class="slack" alt="slack" src="https://stripe.com//img/v3/home/customer-logos/slack.svg"></li>
			</ul>
		</a>
	</div>
</Section>

<!-- <Section title="skills" subheading="Here's what I'm good at"> -->
<Section title="skills" subheading="Here's where I invested my skill points">
	<Skills>
		<Skill
			imageUrl="/pythonDjango.png"
			title="Backend Development"
			summary="<b>Spring</b>-based <b>Java/Kotlin</b> for <b>REST</b> and <b>gRPC</b> services. <b>Postgre</b>, <b>Redis</b>, <b>Firestore</b> DBs. Project configuration with <b>Gradle</b>."
		/>
		<!-- summary="<b>Spring</b>-based <b>Java/Kotlin</b> for <b>REST</b> and <b>gRPC</b> services. Large project configuration with <b>Gradle</b>. <b>Postgre</b>, <b>Redis</b>, <b>Firestore</b> DBs." -->
		<!-- summary="<b>Spring</b>-based <b>Java/Kotlin</b> services for <b>REST</b> and <b>gRPC</b>. Complex project configuration with <b>Gradle</b>. <b>Postgre</b>, <b>Redis</b>, <b>Firestore</b> DBs." -->
		<!-- summary="<b>Spring</b>-based <b>Java/Kotlin</b> services for <b>REST</b>, <b>gRPC</b>. <b>Postgre</b>, <b>Redis</b>, <b>Firestore</b> DBs. Complex project configuration with <b>Gradle</b>." -->
		<!-- summary="<b>REST</b>, <b>gRPC</b> client/server applications. <b>Spring</b>-based <b>Java/Kotlin</b> services. <b>Postgre</b>, <b>Redis</b>, <b>Firestore</b> DBs. Complex project configuration with <b>Gradle</b>." -->
		<!-- summary="<b>REST</b>, <b>gRPC</b> client/server applications. <b>Spring</b>-based <b>Java/Kotlin</b> services. Complex project configuration with <b>Gradle</b>." -->

		<Skill
			imageUrl="/react.png"
			title="Web Development"
			summary="Responsive websites in <b>HTML5</b>, <b>CSS/SCSS</b>. <b>Rx/Redux</b>-based <b>React</b> applications in <b>ES6 JavaScript</b> and <b>Typescript</b>."
		/>

		<Skill
			imageUrl="/node.png"
			title="Systems Programming"
			summary="Large <b>C++</b> projects. Safe multithreaded code in <b>Rust</b>. Deep understanding of performant <b>data structures</b> and <b>algorithms</b>."
		/>
		<!-- summary="Large <b>C++</b> projects independently and in team. Safe multithreaded code in <b>Rust</b>. Deep understanding of performant <b>data structures</b> and <b>algorithms</b>." -->

		<Skill
			imageUrl="/react.png"
			title="Mobile Development"
			summary="<b>Dart/Flutter</b> mobile apps for both <b>iOS</b> and <b>Android</b>. Stream-based <b>BLoC</b> state management. <b>Firebase</b>-powered backend."
		/>

		<Skill
			imageUrl="/pythonDjango.png"
			title="UX Design"
			summary="Interactive app prototyping in <b>Figma</b>. <b>Usability Testing</b> with real users. Frequent iterations based on feedback."
		/>

		<Skill
			imageUrl="/react.png"
			title="Full Business Cycle"
			summary="Acquiring customers, gathering <b>requirements</b>, managing <b>expectations</b>, timely execution, long-term <b>maintenance</b>."
		/>
		<!-- and support -->
	</Skills>
</Section>

<!-- <Section title="projects" subheading="I'm a programmer by day and by night, sometimes I even go outside"></Section> -->
<Section title="projects" subheading="I'm a programmer by day and by night, sometimes I even go outside">
	<Projects>
		<ProjectSummary
			name = "Nanobox Config Linter"
			summary = "VSCode and Intellij Plugins"
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

		<!-- TODO: let summary have <br> (take html) -->
		<ProjectSummary
			name = "Chess"
			summary = "Full Game<br/>of Chess"
			colourHex = "#e5e8ee"
			blackText
			projectId = "chess"
			imageUrl = "http://qaisar.design/assets/images/sports-project.png"
		/>
	</Projects>
	<!--  -->
</Section>

<Section title="experience" subheading="I'm grateful to have worked at some amazing companies">
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

<!-- <Section title="contact" subheading="Got any questions? I would love to get in touch (especially if you know someone who makes hiring decisions 😉)"> -->
<Section title="contact" subheading="Got any questions? Feel free to get in touch.">
	<ContactForm/>
</Section>

<style lang="scss">

	// Inspired by https://stripe.com/en-ca/
	// TODO: size individual companies logos like stripe does

	$two-by-three-breakpoint: 880px;

	#customer-logos {
		// -webkit-box-pack:justify;
		//   -ms-flex-pack:justify;
		//   justify-content:space-between;
		//   -webkit-transition:1s cubic-bezier(.19,1,.22,1);
		//   transition:1s cubic-bezier(.19,1,.22,1);
		//   will-change:transform;
		//   -webkit-filter:blur(0);
		//   filter:blur(0)

		border-top: 2px solid #f6f9fc;
		a {
			display: block;
			padding-top: 20px;
			padding-bottom: 10px;

			.button {
				position: absolute;
				z-index:1;
				left:50%;
				-webkit-transform:translate(-50%,5px) scale(.95);
				transform:translate(-50%,5px) scale(.95);
				opacity:0;
				-webkit-transition:.7s cubic-bezier(.19,1,.22,1);
				transition:.7s cubic-bezier(.19,1,.22,1);
			}

			ul {
				display: flex;
				flex-flow: row wrap;
				justify-content: center;
				align-items: center;

				-webkit-transition:1s cubic-bezier(.19,1,.22,1);
				transition:1s cubic-bezier(.19,1,.22,1);
				will-change:transform;
				-webkit-filter:blur(0);
				filter:blur(0);

				li {
					margin: 10px;
				}

				img {
					height: 16px;
				}
			}

			@media (min-width: $two-by-three-breakpoint) {
				& {
					padding-top: 70px;
					padding-bottom: 65px;
				}	

				&:focus .button, &:hover .button {
					opacity:1;
					-webkit-transform:translate(-50%,-7px);
					transform:translate(-50%,-7px);
				}

				&:focus ul, &:hover ul {
					opacity:.7;
					-webkit-transform:scale(.95);
					transform:scale(.95);
					-webkit-filter:blur(10px);
					filter:blur(10px);
				}

				// TODO: seperate breakpoint?
				ul {
					justify-content: space-between;
				}
			}
		}
	}
</style>