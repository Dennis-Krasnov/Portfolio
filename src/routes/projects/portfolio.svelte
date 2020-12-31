<script lang="ts">
	import Button from "../../components/Button.svelte";
	import LandingCentered from "../../components/LandingCentered.svelte";
	import Section from "../../components/Section.svelte";
	import DemoPicture from "../../components/DemoPicture.svelte";
	import WatermarkHeader from "../../components/WatermarkHeader.svelte";
</script>

<svelte:head>
	<title>Dennis Krasnov - Portfolio Case Study</title>
</svelte:head>

<Section>
	<LandingCentered
		title="Portfolio Website"
		summary="something something something"
	>
		<span slot="cta">
			<Button href="https://github.com/Dennis-Krasnov/Chess" targetBlank buttonRow primary>Github Repository</Button>
			<Button href="https://krasnov.dev" targetBlank buttonRow>View live</Button>
		</span>
	</LandingCentered>
</Section>

<Section watermarkPadding dark>
	<!--	<WatermarkHeader title="demo" />-->
	<WatermarkHeader title="Work in progress" fontSizeViewWidth={9} />
	<DemoPicture imageUrl="/case-study/cat.gif" altText="Diet Driven Demo" />
</Section>