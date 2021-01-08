<script lang="ts">
    import Button from "../../components/Button.svelte";
    import LandingCentered from "../../components/LandingCentered.svelte";
    import Section from "../../components/Section.svelte";
    import DemoVideo from "../../components/DemoVideo.svelte";
    import WatermarkHeader from "../../components/WatermarkHeader.svelte";
</script>

<svelte:head>
    <title>Dennis Krasnov - Chess Case Study</title>
</svelte:head>

<Section>
    <LandingCentered
        title="Chess"
        summary="Complete game of chess with AI for my grade 10 final project. Won school’s computer science course and department awards."
    >
		<span slot="cta">
			<Button href="https://github.com/Dennis-Krasnov/Chess" targetBlank buttonRow primary>Github</Button><Button href="/case-study/DennisKrasnovChess.jar" targetBlank buttonRow>Download JAR</Button>
		</span>
    </LandingCentered>
</Section>

<Section watermarkPadding dark>
    <WatermarkHeader title="demo" />
    <DemoVideo videoUrl="/case-study/chess.webm" />
</Section>