<script context="module" lang="ts">

    import hljs from "highlight.js";

    export async function load({fetch}) {
        const deepLinksResponse = await fetch("/case_study/deep_link_navigation/snippet/deep_links.dart");
        const mainResponse = await fetch("/case_study/deep_link_navigation/snippet/main.dart");
        const usageResponse = await fetch("/case_study/deep_link_navigation/snippet/usage.dart");
        const bddFeatureResponse = await fetch("/case_study/deep_link_navigation/snippet/bdd.feature");

        return {
            props: {
                codeSnippets: {
                    deepLinks: hljs.highlight(await deepLinksResponse.text(), {language: "TypeScript"}).value,
                    main: hljs.highlight(await mainResponse.text(), {language: "TypeScript"}).value,
                    usage: hljs.highlight(await usageResponse.text(), {language: "TypeScript"}).value,
                    bddFeature: hljs.highlight(await bddFeatureResponse.text(), {language: "Gherkin"}).value,
                }
            }
        }
    }
</script>

<script lang="ts">
    import Button from "../../components/Button.svelte";
    import LandingCentered from "../../components/LandingCentered.svelte";
    import Section from "../../components/Section.svelte";
    import DemoIframe from "../../components/DemoIframe.svelte";
    import WatermarkHeader from "../../components/WatermarkHeader.svelte";
    import CodeSnippet from "../../components/CodeSnippet.svelte";
    import Paragraph from "../../components/Paragraph.svelte";
    import DemoPicture from "../../components/DemoPicture.svelte";

    export let codeSnippets;
</script>

<svelte:head>
    <title>Dennis Krasnov - Deep Link Navigation Case Study</title>
</svelte:head>

<Section>
    <LandingCentered
            title="Deep Link Navigation - Navigation Library for Flutter"
            summary="Elegant abstraction for deep linking navigation in Flutter. 50+ stars on Github."
    >
		<span slot="cta">
			<Button href="https://github.com/Dennis-Krasnov/Flutter-Deep-Link-Navigation" targetBlank buttonRow primary>Github</Button><Button
                href="https://pub.dev/packages/deep_link_navigation" targetBlank buttonRow>View on pub.dev</Button>
		</span>
    </LandingCentered>
</Section>

<Section watermarkPadding dark>
    <WatermarkHeader title="demo"/>
    <div class="phone">
        <DemoIframe src="https://deep-link-navigation-demo-o6ro9.ondigitalocean.app/" title="Deep Link Navigation Demo"/>
    </div>
    <Paragraph>
        Flutter is a application framework that compiles natively for iOS, Android, and the web.
        Flutter uses the Dart programming language and my library is published on pub.dev (the Dart equivalent of npm).
    </Paragraph>

    <Paragraph>
        The demo is an app from the examples folder that demonstrates deep linking using my library.
        I compiled Flutter for the web, and stuffed it into an iframe.
    </Paragraph>
</Section>

<Section watermarkPadding>
    <WatermarkHeader title="Sample app"/>
    <Paragraph>
        This is the page hierarchy for the demo application above.
        A deep link allows you to directly navigate to any page in the hierarchy (like a URL).
    </Paragraph>
    <DemoPicture imageUrl="/case_study/deep_link_navigation/diagram.png" />

    <Paragraph>
        Deep links correspond to a page in the application.
        They're represented as simple dart classes.
        Some deep links have associated data, which is supported with generics.
    </Paragraph>
    <CodeSnippet snippet={codeSnippets.deepLinks}/>

    <Paragraph>
        The tree of deep links is specified as a extensions-based DSL (domain specific language).
    </Paragraph>
    <CodeSnippet snippet={codeSnippets.main}/>

    <Paragraph>
        Now to navigate to any page you call <CodeSnippet snippet={codeSnippets.usage} inline />.
    </Paragraph>
</Section>

<Section watermarkPadding dark>
    <WatermarkHeader title="BDD Testing"/>
    <Paragraph>I used behaviour driven development (BDD) to test that my library works as expected.</Paragraph>
    <CodeSnippet snippet={codeSnippets.bddFeature}/>
</Section>

<style>
    /* TODO: make this a option in iframe! */
    .phone {
        max-width: 360px;
        margin: 0 auto;
        padding: 40px 10px;
        border-radius: 20px;
        border: 2px solid #80808030;

        background: lightgray;
    }
</style>