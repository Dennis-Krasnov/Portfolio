<script context="module" lang="ts">
    import hljs from "highlight.js";

    export async function load({fetch}) {
        const loadSvelteResponse = await fetch("/case_study/portfolio/snippet/load.svelte");
        // ...

        return {
            props: {
                codeSnippets: {
                    loadSvelte: hljs.highlight(await loadSvelteResponse.text(), {language: "HTML"}).value,
                    // ...
                }
            }
        }
    }
</script>

<script lang="ts">
    import CodeSnippet from "../../components/CodeSnippet.svelte";

    export let codeSnippets;
</script>

<CodeSnippet snippet={codeSnippets.loadSvelte}/>