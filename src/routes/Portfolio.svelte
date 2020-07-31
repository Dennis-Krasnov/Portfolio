<script lang="ts">
	import Section from "../components/Section.svelte";
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
	summary="Full stack software engineer with {yearsExperience} years experience designing and developing structured software systems."
</Section>

<Section id="skills" dark>
	<WatermarkHeader title="skills" />
	Backend Development <b>lol</b>
</Section>

<Section id="projects">
	<WatermarkHeader title="projects" />
	el projects
</Section>

<Section id="work" dark>
	<WatermarkHeader title="work" />
	el work
</Section>

<Section id="contact">
	<WatermarkHeader title="contact" />
	el contact
</Section>