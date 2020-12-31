<script lang="ts">
	import Button from "../../components/Button.svelte";
	import LandingCentered from "../../components/LandingCentered.svelte";
	import Section from "../../components/Section.svelte";
	import DemoPicture from "../../components/DemoPicture.svelte";
	import WatermarkHeader from "../../components/WatermarkHeader.svelte";
</script>

<svelte:head>
	<title>Dennis Krasnov - Creative FOSS Case Study</title>
</svelte:head>

<Section>
	<LandingCentered
		title="Creative FOSS"
		summary="I won $1000 in the Gnome Community Engagement Challenge, and currently working on the proof of concept :)"
	>
		<span slot="cta">
			<Button href="https://github.com/Dennis-Krasnov/???" targetBlank buttonRow primary>Github</Button>
		</span>
	</LandingCentered>
</Section>

<Section watermarkPadding dark>
	<!--	<WatermarkHeader title="demo" />-->
	<WatermarkHeader title="Work in progress" fontSizeViewWidth={9} />
	<DemoPicture imageUrl="/case-study/cat.gif" altText="Diet Driven Demo" />
</Section>

<!--<script lang="ts">-->
<!--    import Section from "../../components/Section.svelte";-->
<!--</script>-->

<!--<Section watermarkPadding>-->
<!--	-->
<!--</Section>-->