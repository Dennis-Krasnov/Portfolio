<script lang="ts">
    export let image: string;
    export let title: string;
    export let summary: string;
</script>

<div class="skill-container">
    <img src="{image}" alt="{title} icon"/>
    <h2>{title}</h2>
    <p>{@html summary}</p>
</div>

<style>
    img {
        height: 48px;
        width: 48px;
        margin-bottom: 12px;
        user-select: none;
    }

    /* ... */
</style>