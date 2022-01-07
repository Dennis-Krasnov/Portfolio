<script lang="ts">
	import Button from "../../components/Button.svelte";
	import LandingCentered from "../../components/LandingCentered.svelte";
	import Section from "../../components/Section.svelte";
	import DemoIframe from "../../components/DemoIframe.svelte";
	import WatermarkHeader from "../../components/WatermarkHeader.svelte";
</script>

<svelte:head>
	<title>Dennis Krasnov - Portfolio Case Study</title>
</svelte:head>

<Section>
	<LandingCentered
		title="krasnov.dev"
		summary="Portfolio website written in Svelte showcasing my skills and experience."
	>
		<span slot="cta">
			<Button href="https://github.com/Dennis-Krasnov/Portfolio" targetBlank buttonRow primary>Github</Button><Button href="https://krasnov.dev" targetBlank buttonRow>View live</Button>
		</span>
	</LandingCentered>
</Section>

<Section watermarkPadding dark>
	<WatermarkHeader title="demo" />
	<DemoIframe src="https://krasnov.dev" title="Portfolio Demo (inception)" />
</Section>