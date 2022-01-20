<script lang="ts">
    export let id: string = "";
    export let watermarkPadding: boolean = false;
    export let dark: boolean = false;
</script>

<section id="{id}" class:dark>
    <div class="content" class:watermarkPadding>
        <slot/>
    </div>
</section>

<style>
    section {
        /* Don't let menu go overtop section when anchor scrolling */
        scroll-margin-top: var(--menu-height);
    }

    section.dark {
        background: #f5f5f9;
    }

    section .content {
        max-width: 1000px;
        width: 95%;
        margin: 0 auto;
    }

    section .content.watermarkPadding {
        padding: 80px 0 100px 0;
    }
</style>