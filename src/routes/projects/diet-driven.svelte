<script lang="ts">
	import Landing from "../../components/Landing.svelte";
	import Section from "../../components/Section.svelte";
	import Button from "../../components/Button.svelte";
	import Skill from "../../components/Skill.svelte";
	import Skills from "../../components/Skills.svelte";
	import WatermarkHeader from "../../components/WatermarkHeader.svelte";
</script>

<svelte:head>
	<title>Dennis Krasnov - Diet Driven Case Study</title>
</svelte:head>

<Section>
	<Landing
		title="Calorie Counter Mobile App"
		summary="Diet Driven is a calorie counter mobile app for iOS, Android."
	>
		<span slot="cta">
			<!-- <Button href="https://example.com" buttonRow primary>Webapp</Button><Button href="https://example.com" buttonRow>Play Store</Button><Button href="https://example.com" buttonRow>App Store</Button> -->
		</span>
	</Landing>
</Section>


<Section id="highlights" watermarkPadding dark>
	<WatermarkHeader title="highlights" fontSizeViewWidth={15} />
	<Skills>
		<Skill
			imageUrl="/skills/backend.svg"
			title="Multiplatform"
			summary="Single codebase <b>Spring</b>-based <b>Java/Kotlin</b> for <b>REST</b> and <b>gRPC</b> services. <b>Postgre</b>, <b>Redis</b>, <b>Firestore</b> DBs. Project configuration with <b>Gradle</b>."
		/>

		<Skill
			imageUrl="/skills/systems.svg"
			title="Navigation"
			summary="Large <b>C++</b> projects. Safe multithreaded code in <b>Rust</b>. Deep understanding of performant <b>data structures</b> and <b>algorithms</b>."
		/>

		<Skill
			imageUrl="/skills/mobile.svg"
			title="Event Sourcing"
			summary="<b>Dart/Flutter</b> mobile apps for both <b>iOS</b> and <b>Android</b>. Stream-based <b>BLoC</b> state management. <b>Firebase</b>-powered backend."
		/>

		<Skill
			imageUrl="/skills/ux.svg"
			title="Live Data"
			summary="Interactive app prototyping in <b>Figma</b>. <b>Usability Testing</b> with real users. Frequent iterations based on feedback."
		/>

		<Skill
			imageUrl="/skills/business.svg"
			title="Food Database"
			summary="Acquiring customers, gathering <b>requirements</b>, managing <b>expectations</b>, timely execution, long-term <b>maintenance</b>."
		/>

		<Skill
			imageUrl="/skills/web.svg"
			title="Devops"
			summary="Responsive websites in <b>HTML5</b>, <b>CSS/SCSS</b>. <b>Rx/Redux</b>-based <b>React</b> applications in <b>ES6 JavaScript</b> and <b>Typescript</b>."
		/>
	</Skills>
</Section>

<Section id="demo" watermarkPadding>
	<WatermarkHeader title="demo" />
</Section>