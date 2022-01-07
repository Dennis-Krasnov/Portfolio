<script lang="ts">
    export let title: string;
</script>

<h1>{title}</h1>

<style>
  h1 {
    font-size: clamp(36px, 12vw, 144px);
    font-weight: 700;
    line-height: 1;
    text-align: center;
    margin-bottom: 48px;

    color: #556; /* Instead of body text's rgb(51, 51, 51) */
    text-transform: uppercase;
    user-select: none;
  }
</style>