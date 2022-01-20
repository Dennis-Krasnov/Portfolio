<script lang="ts">
    export let src: string;
    export let title: string;
</script>

<iframe src="{src}" title="{title}"></iframe>

<style>
  iframe {
    width: 100%;
    height: 500px;

    background: white;
  }
</style>