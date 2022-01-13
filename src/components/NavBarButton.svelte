<script lang="ts">
    export let hash: string;
</script>

<a href="#{hash}">
    <slot/>
</a>

<style>
    a {
        margin: 0 0 0 10px;
        padding: 8px;

        font-size: 16px;
        font-weight: 600;

        color: #556;
        -webkit-transition: all .15s ease;
        transition: all .15s ease;
    }

    /* Similar hover animation to button */
    a:hover {
        color: #242733;
        /* padding-bottom: 2px; FIXME: fix text jumping when hovering bottom part */
        transform: translateY(-2px);
    }
</style>