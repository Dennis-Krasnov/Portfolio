<script lang="ts">
    export let imageUrl: string;
    export let altText: string;
</script>

<img src="{imageUrl}" alt="{altText}">

<style>
    img {
      width: 100%;
      user-select: none;
    }
</style>