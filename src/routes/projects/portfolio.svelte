<script context="module" lang="ts">
    import hljs from "highlight.js";

    export async function load({fetch}) {
        const componentResponse = await fetch("/case_study/portfolio/snippet/component.svelte");
        const componentUsageResponse = await fetch("/case_study/portfolio/snippet/component_usage.svelte");
        const loadSvelteResponse = await fetch("/case_study/portfolio/snippet/load.svelte");
        const compiledSnippetResponse = await fetch("/case_study/portfolio/snippet/compiled_snippet.html");
        const buildahResponse = await fetch("/case_study/portfolio/snippet/buildah.sh");

        return {
            props: {
                codeSnippets: {
                    component: hljs.highlight(await componentResponse.text(), {language: "HTML"}).value,
                    componentUsage: hljs.highlight(await componentUsageResponse.text(), {language: "HTML"}).value,
                    loadSvelte: hljs.highlight(await loadSvelteResponse.text(), {language: "HTML"}).value,
                    compiledSnippet: hljs.highlight(await compiledSnippetResponse.text(), {language: "HTML"}).value,
                    buildah: hljs.highlight(await buildahResponse.text(), {language: "sh"}).value,
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

    export let codeSnippets;
</script>

<svelte:head>
    <title>Dennis Krasnov - Portfolio Case Study</title>
</svelte:head>

<Section>
    <LandingCentered
            title="krasnov.dev - Portfolio Website"
            summary="Statically generated website written in Svelte, showcasing my skills and experience."
    >
		<span slot="cta">
			<Button href="https://github.com/Dennis-Krasnov/Portfolio" targetBlank buttonRow primary>Github</Button><Button
                href="https://krasnov.dev" targetBlank buttonRow>View live</Button>
		</span>
    </LandingCentered>
</Section>

<Section watermarkPadding dark>
    <WatermarkHeader title="demo"/>
    <DemoIframe src="https://krasnov.dev" title="Portfolio Demo (inception)"/>
    <Paragraph>Yes, this is a demo for this very website. Yes, you can do inception with iframes ;)</Paragraph>
</Section>

<Section watermarkPadding>
    <WatermarkHeader title="svelte"/>

    <Paragraph>
        This website is written in Svelte.
        It's a lightweight React-like component framework.
        Here's the skill component from the main page:
    </Paragraph>
    <CodeSnippet snippet={codeSnippets.component}/>

    <Paragraph>
        Here's how the skill component is used:
    </Paragraph>
    <CodeSnippet snippet={codeSnippets.componentUsage}/>
</Section>

<Section watermarkPadding dark>
    <WatermarkHeader title="compilation"/>
    <Paragraph>
        Modern frontend frameworks enable amazing developer productivity.
        Static websites are simple to deploy and have great performance.
        I'm using SvelteKit, a modern framework for Svelte which compiles into a static website (similar to Next.js).
    </Paragraph>

    <Paragraph>
        Parsing source code and highlighting keywords is a relatively expensive operation.
        I do this at compile time, which lets me avoid shipping the 112KB highlight.js library to the end user.
        The context="module" script is executed during compile time.
        The resulting HTML code snippets are passed as a prop into the component.
    </Paragraph>
    <CodeSnippet snippet={codeSnippets.loadSvelte}/>

    <Paragraph>
        This is what you'll find in this page's source (no trace of JavaScript).
    </Paragraph>
    <CodeSnippet snippet={codeSnippets.compiledSnippet}/>
</Section>

<Section watermarkPadding>
    <WatermarkHeader title="deployment"/>
    <Paragraph>
        This website is hosted on the cloudflare CDN because it's boring and it works well.
    </Paragraph>

    <Paragraph>
        For hosting locally and on Kubernetes I have this nifty 4-line bash script that generates the OCI image
        (alternative to a Dockerfile).
    </Paragraph>
    <CodeSnippet snippet={codeSnippets.buildah}/>
</Section>