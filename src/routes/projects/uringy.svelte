<script context="module" lang="ts">
    import hljs from "highlight.js";

    export async function load({fetch}) {
        const limitConcurrencyResponse = await fetch("/case_study/uringy/snippet/limit_concurrency.rs");
        const sharingResourceResponse = await fetch("/case_study/uringy/snippet/sharing_resource.rs");

        return {
            props: {
                codeSnippets: {
                    limitConcurrency: hljs.highlight(await limitConcurrencyResponse.text(), {language: "Rust"}).value,
                    sharingResource: hljs.highlight(await sharingResourceResponse.text(), {language: "Rust"}).value,
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
    <title>Dennis Krasnov - Uringy Case Study</title>
</svelte:head>

<Section>
    <LandingCentered
            title="Uringy - Async Runtime for Rust using io_uring"
            summary="Work in progress. Simple and efficient non-blocking IO for Rust."
    >
		<span slot="cta">
			<Button href="https://github.com/Dennis-Krasnov/Uringy" targetBlank buttonRow primary>Github</Button><Button
                href="https://crates.io/crates/uringy" targetBlank buttonRow>View on crates.io</Button>
		</span>
    </LandingCentered>
</Section>

<Section watermarkPadding dark>
    <WatermarkHeader title="diagram"/>
    <Paragraph>
        Rust comes with built-in support for the async/await syntax.
        However, you're supposed to bring your own runtime that runs asynchronous tasks and interacts with the kernel.
        Uringy is one such runtime, where block_on is the bridge between sync and async code.
    </Paragraph>
    <Paragraph>
        The runtime runs on a single thread (inspired by NodeJS), and for parallelism you spawn multiple threads with their own runtime.
        Unlike NodeJS (uses epoll under the hood), there is no need for an auxiliary thread pool for file IO operations, since io_uring supports file IO natively.
    </Paragraph>
    <DemoPicture imageUrl="/case_study/uringy/diagram.png"/>
</Section>

<Section watermarkPadding>
    <WatermarkHeader title="io_uring"/>
    <Paragraph>
        io_uring is a new asynchronous syscall interface for Linux, implemented using a pair of memory mapped ring buffers.
        it has several benefits:
        <ul style="margin-left: 32px">
            <li>Buffers aren't copied to and from the kernel, instead ownership of a buffer is given the kernel</li>
            <li>Syscall costs are amortized due to batching several submission queue entries before issuing the system call that submits them all</li>
            <li>Can remove syscall cost by making the kernel poll the submission queue for entries</li>
            <li>Can remove context switches and hardware interrupts by polling the completion queue for entries instead of blocking</li>
            <li>Can remove cost of passing ownership of buffers to kernel by preregistering them</li>
        </ul>
    </Paragraph>
</Section>

<Section watermarkPadding dark>
    <WatermarkHeader title="API"/>

    <Paragraph>
        Here is a sample of the tentative API for Uringy.
        Note that Futures in Uringy don't need to implement Send trait (unlike Tokio) so there's no need for atomics.
    </Paragraph>

    <Paragraph>Sharing a resource amongst multiple asynchronous tasks.</Paragraph>
    <CodeSnippet snippet={codeSnippets.sharingResource}/>

    <Paragraph>Limiting concurrency to 100 tasks at a time.</Paragraph>
    <CodeSnippet snippet={codeSnippets.limitConcurrency}/>
</Section>

<!--<Section watermarkPadding>-->
<!--    <WatermarkHeader title="docs"/>-->
<!--TODO-->
<!--</Section>-->

<!-- TODO: Benchmarks -->

<!--TODO: code snippet of event loop-->