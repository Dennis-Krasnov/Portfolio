<script lang="ts">
    import Button from "../../components/Button.svelte";
    import LandingCentered from "../../components/LandingCentered.svelte";
    import Section from "../../components/Section.svelte";
    import DemoPicture from "../../components/DemoPicture.svelte";
    import WatermarkHeader from "../../components/WatermarkHeader.svelte";
</script>

<svelte:head>
    <title>Dennis Krasnov - Chess Case Study</title>
</svelte:head>

<Section>
    <LandingCentered
        title="Swing Game"
        summary="Created complete game of chess with clean object-oriented architecture..."
    >
		<span slot="cta">
			<Button href="https://github.com/Dennis-Krasnov/Chess" targetBlank buttonRow primary>Github</Button>
            <!-- TODO: Buttons for Webapp, App Store, and Play Store -->
		</span>
    </LandingCentered>
</Section>

<Section watermarkPadding dark>
    <!--	<WatermarkHeader title="demo" />-->
    <WatermarkHeader title="Work in progress" fontSizeViewWidth={9} />
    <DemoPicture imageUrl="/case-study/cat.gif" altText="Diet Driven Demo" />
</Section>