<script lang="ts">
	import Landing from "../components/Landing.svelte";
	import Project from "../components/Project.svelte";
	import Projects from "../components/Projects.svelte";
	import Section from "../components/Section.svelte";
	import Skill from "../components/Skill.svelte";
	import Skills from "../components/Skills.svelte";
	import WatermarkHeader from "../components/WatermarkHeader.svelte";

	// The first time I got paid for development work, Pocket Trade Show
	let professionalStartDate: string = "08/01/2017";
	let millisecondsInYear: number = 31536000000;
	let yearsExperience: number = Math.floor((new Date().getTime() - new Date(professionalStartDate).getTime()) / millisecondsInYear);
</script>

<svelte:head>
	<title>Dennis Krasnov - Experienced developer available for hire</title>
</svelte:head>

<Section>
	<Landing
		title="Experienced Developer Available for Hire"
		summary="Full stack software engineer with {yearsExperience} years experience designing and developing structured software systems."
	/>
	<!-- TODO: <Companies/> -->
</Section>

<Section id="skills" watermarkPadding dark>
	<WatermarkHeader title="skills" negativeMargin=50 />
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

<Section id="projects" watermarkPadding>
	<WatermarkHeader title="projects" negativeMargin=74 />
	<Projects>
		<!-- TODO: Nanobox Config Linter -->
		<Project
			name = "Nanobox Integration"
			summary = "IntelliJ Plugin"
			colourHex = "#e5e8ee"
			blackText
			projectId = "nanobox"
			imageUrl = "http://qaisar.design/assets/images/agncee-project.png"
		/>

		<Project
			name = "Diet Driven"
			summary = "Calorie Counter Mobile App"
			colourHex = "#538BF3"
			projectId = "diet-driven"
			imageUrl = "http://qaisar.design/assets/images/squidex-project.png"
		/>

		<Project
			name = "krasnov.dev"
			summary = "Portfolio Website"
			colourHex = "#A274EC"
			projectId = "portfolio"
			imageUrl = "http://qaisar.design/assets/images/agncee-project.png"
		/>

		<Project
			name = "Chess"
			summary = "Game of<br/>Chess"
			colourHex = "#e5e8ee"
			blackText
			projectId = "chess"
			imageUrl = "http://qaisar.design/assets/images/sports-project.png"
		/>
	</Projects>
</Section>

<Section id="work" watermarkPadding dark>
	<WatermarkHeader title="work" />
	el work
</Section>

<Section id="contact" watermarkPadding>
	<WatermarkHeader title="contact" />
	el contact
</Section>

<style lang="scss"></style>