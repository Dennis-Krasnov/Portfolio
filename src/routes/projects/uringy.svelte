<script context="module" lang="ts">
    import hljs from "highlight.js";

    export async function load({fetch}) {
        const structuredConcurrencyResponse = await fetch("/case_study/uringy/snippet/structured_concurrency.rs");

        return {
            props: {
                codeSnippets: {
                    structuredConcurrency: hljs.highlight(await structuredConcurrencyResponse.text(), {language: "Rust"}).value,
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
            title="Uringy - Non-blocking Rust without the pain and complexity of async/await"
            summary="A simple single-threaded concurrency runtime based on io_uring."
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
        Writing concurrent code in Rust doesn't need to be painful.
        Uringy is a runtime that combines structured concurrency, a single-threaded design, and Linux's io_uring.
        Intended for server applications, from simple single-threaded to highly scalable thread-per-core designs.
    </Paragraph>
    <Paragraph>
        The runtime runs on a single thread (inspired by NodeJS).
        Unlike NodeJS which uses epoll under the hood, there is no need for an auxiliary thread pool for file IO operations, since io_uring supports filesystem IO natively.
        For parallelism, you can spawn multiple threads with their own runtime.
    </Paragraph>
    <DemoPicture imageUrl="/case_study/uringy/diagram.png"/>
</Section>

<Section watermarkPadding>
    <WatermarkHeader title="io_uring"/>
    <Paragraph>
        io_uring is a new asynchronous syscall interface for Linux, implemented using a pair of memory mapped ring buffers.
        It has several benefits:
        <ul style="margin-left: 32px">
            <!-- TODO: provided fd/buffers, oneshot syscalls -->
            <li>Buffers aren't copied to and from the kernel, instead ownership of a buffer is lent out to the kernel</li>
            <li>Syscall overhead is amortized due to batching several submission queue entries before issuing the system call that submits them all</li>
            <li>Provides efficient IPC from one io_uring instance to another</li>
        </ul>
    </Paragraph>
</Section>

<Section watermarkPadding dark>
    <WatermarkHeader title="Structured Concurrency"/>

    <Paragraph>
        Inspired by <a href="https://vorpus.org/blog/notes-on-structured-concurrency-or-go-statement-considered-harmful">trio</a> and <a href="https://doc.rust-lang.org/stable/std/thread/fn.scope.html">scoped threads</a>, Uringy doesn't allow globally spawning tasks.
        Instead, tasks form a tree starting with start.
        Parent tasks wait for their children to complete.
        Parent tasks propagate cancellation to their children.
        Child tasks propagate panics to their parent after waiting for its own children to complete.
    </Paragraph>

    <Paragraph>Here's an example of a TCP echo server. Note the lack of async and await.</Paragraph>
    <CodeSnippet snippet={codeSnippets.structuredConcurrency}/>
</Section>

<!--<Section watermarkPadding>-->
<!--    <WatermarkHeader title="docs"/>-->
<!--TODO-->
<!--</Section>-->

<!-- TODO: Benchmarks -->

<!--TODO: code snippet of event loop-->
