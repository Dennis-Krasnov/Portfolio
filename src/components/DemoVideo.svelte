<script lang="ts">
    export let videoUrl: string;
</script>

<video autoplay loop muted controls>
    <source src="{videoUrl}" type="video/webm">
    Your browser does not support the video tag.
</video>

<style>
    video {
      width: 100%;
    }
</style>