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
    margin: 0 0 12px 0;
    width: 48px;

    user-select: none;
  }

  h2 {
    font-weight: 600;
    font-size: 19px;
    line-height: 32px;

    color: #32325d;
  }

  p {
    font-weight: 400;
    font-size: 17px;
    line-height: 28px;

    color: #525f7f;
  }
</style>