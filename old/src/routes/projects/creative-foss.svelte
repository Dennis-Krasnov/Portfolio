<script lang="ts">
	import LandingCentered from "../../components/LandingCentered.svelte";
	import Section from "../../components/Section.svelte";
	import DemoVideo from "../../components/DemoVideo.svelte";
	import WatermarkHeader from "../../components/WatermarkHeader.svelte";
</script>

<svelte:head>
	<title>Dennis Krasnov - Creative FOSS Case Study</title>
</svelte:head>

<Section>
	<LandingCentered
		title="Creative FOSS"
		summary="Webapp that provides streamlined way for creative people to contribute their work to GitHub (no spooky CLI git commands). Won $1000 in the <a href='https://www.gnome.org/challenge/' target=_blank>Gnome Community Engagement Challenge</a>."
	/>
</Section>

<Section watermarkPadding dark>
	<WatermarkHeader title="demo" />
	<DemoVideo videoUrl="/case-study/creative-foss.webm" />
</Section>