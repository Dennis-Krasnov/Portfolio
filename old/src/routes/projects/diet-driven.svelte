<script lang="ts">
	import Button from "../../components/Button.svelte";
	import LandingCentered from "../../components/LandingCentered.svelte";
	import Section from "../../components/Section.svelte";
	import DemoPicture from "../../components/DemoPicture.svelte";
	import WatermarkHeader from "../../components/WatermarkHeader.svelte";
</script>

<svelte:head>
	<title>Dennis Krasnov - Diet Driven Case Study</title>
</svelte:head>

<Section>
	<LandingCentered
		title="Diet Driven"
		summary="Diet Driven is a calorie counter mobile app for iOS and Android. Created in frustration of the lack of features of current solutions."
	>
		<span slot="cta">
			<Button href="https://github.com/Dennis-Krasnov/Diet-Driven" targetBlank buttonRow primary>Github</Button>
			<!-- TODO: Buttons for Webapp, App Store, and Play Store -->
		</span>
	</LandingCentered>
</Section>

<Section watermarkPadding dark>
<!--	<WatermarkHeader title="demo" />-->
	<WatermarkHeader title="Work in progress" fontSizeViewWidth={9} />
	<DemoPicture imageUrl="/case-study/cat.gif" altText="Diet Driven Demo" />
</Section>

<!--<Section id="highlights" watermarkPadding dark>-->
<!--	<WatermarkHeader title="highlights" fontSizeViewWidth={15} />-->
<!--	<img src="/Screenshot from 2020-12-29 18-45-08.png" width="1000px" alt="temp">-->
<!--	<Highlights>-->
<!--		<Highlight-->
<!--			imageUrl="..."-->
<!--			title="Multiplatform"-->
<!--			summary=""-->
<!--		/>-->

<!--		<Highlight-->
<!--			imageUrl="..."-->
<!--			title="Navigation"-->
<!--			summary=""-->
<!--		/>-->

<!--		<Highlight-->
<!--			imageUrl="..."-->
<!--			title="Event Sourcing"-->
<!--			summary="..."-->
<!--		/>-->

<!--		<Highlight-->
<!--			imageUrl="..."-->
<!--			title="Live Data"-->
<!--			summary="..."-->
<!--		/>-->

<!--		<Highlight-->
<!--			imageUrl="..."-->
<!--			title="Food Database"-->
<!--			summary="..."-->
<!--		/>-->

<!--		<Highlight-->
<!--			imageUrl="..."-->
<!--			title="Devops"-->
<!--			summary="..."-->
<!--		/>-->
<!--	</Highlights>-->
<!--</Section>-->