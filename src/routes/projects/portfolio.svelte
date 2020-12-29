<script lang="ts">
	import Landing from "../../components/Landing.svelte";
	import Section from "../../components/Section.svelte";
	import Button from "../../components/Button.svelte";
	import Skill from "../../components/Skill.svelte";
	import Skills from "../../components/Skills.svelte";
	import WatermarkHeader from "../../components/WatermarkHeader.svelte";
</script>

<svelte:head>
	<title>Dennis Krasnov - Portfolio Case Study</title>
</svelte:head>

<Section>
	<Landing
		title="Portfolio Website"
		summary="Diet Driven is a calorie counter mobile app for iOS, Android."
	>
		<span slot="cta">
			<Button href="https://krasnov.dev" buttonRow primary>visit website</Button><Button href="https://github.com/Dennis-Krasnov/Portfolio" buttonRow>View github</Button>
		</span>
	</Landing>
</Section>


<Section id="features" watermarkPadding dark>
	<WatermarkHeader title="features" />
	<Skills>
		<Skill
			imageUrl="/skills/backend.svg"
			title="?????????"
			summary="Single codebase <b>Spring</b>-based <b>Java/Kotlin</b> for <b>REST</b> and <b>gRPC</b> services. <b>Postgre</b>, <b>Redis</b>, <b>Firestore</b> DBs. Project configuration with <b>Gradle</b>."
		/>

		<Skill
			imageUrl="/skills/systems.svg"
			title="?????????"
			summary="Large <b>C++</b> projects. Safe multithreaded code in <b>Rust</b>. Deep understanding of performant <b>data structures</b> and <b>algorithms</b>."
		/>

		<Skill
			imageUrl="/skills/mobile.svg"
			title="?????????"
			summary="<b>Dart/Flutter</b> mobile apps for both <b>iOS</b> and <b>Android</b>. Stream-based <b>BLoC</b> state management. <b>Firebase</b>-powered backend."
		/>
	</Skills>
</Section>

<Section id="demo" watermarkPadding>
	<WatermarkHeader title="demo" />
</Section>