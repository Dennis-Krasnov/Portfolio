<script lang="ts">
    export let snippet: string;
    export let inline: boolean = false;
</script>

<pre class:inline>
    <code class="hljs" class:inline>
        {@html snippet}
    </code>
</pre>

<style>
    pre {
        /* Wrap text */
        white-space: pre-wrap;       /* css-3 */
        white-space: -moz-pre-wrap;  /* Mozilla, since 1999 */
        white-space: -o-pre-wrap;    /* Opera 7 */
        word-wrap: break-word;       /* Internet Explorer 5.5+ */
    }
    code {
        display: block;
        padding: 12px;
        border-radius: 5px;

        /* Same as my Intellij settings */
        font-size: 15px;
        line-height: 1.5; /* Adjusted to take up the same height */
        font-weight: 500;
        font-family: "Fira Code", monospace;

        /* FIXME: make it look like: https://stackoverflow.design/product/components/code-blocks/ */
        /*overflow: auto;*/
        /*scrollbar-color: hsla(0, 0%, 0%, 0.2) transparent;*/
        overflow-wrap: anywhere;
    }

    pre.inline {
        display: inline-block;
    }

    code.inline {
        display: inline-block;
        margin: 0 4px;
        padding: 0 6px;
    }
</style>