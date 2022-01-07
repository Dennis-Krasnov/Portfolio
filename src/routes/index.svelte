<script context="module">
  export async function load({fetch}) {
    const response = await fetch("/data.json");

    // TODO: file with typescript types!

    return {
      props: {
        data: await response.json(),
      }
    }
  }
</script>

<script>
  import Section from "../components/Section.svelte";
  import Skills from "../components/Skills.svelte";
  import WatermarkHeader from "../components/WatermarkHeader.svelte";
  import Skill from "../components/Skill.svelte";
  import Landing from "../components/Landing.svelte";

  export let data;
</script>

<svelte:head>
    <title>Dennis Krasnov - Experienced developer available for hire</title>
</svelte:head>

<Section>
    <Landing {...data.landing}/>
</Section>

<Section id="skills" watermarkPadding dark>
    <WatermarkHeader title="skills"/>
    <Skills>
        {#each data.skills as skill}
            <Skill {...skill}/>
        {/each}
    </Skills>
</Section>

<Section watermarkPadding>
    <WatermarkHeader title="testimonials"/>
</Section>

<Section id="work" watermarkPadding dark>
    <WatermarkHeader title="work"/>
</Section>

<Section id="projects" watermarkPadding>
    <WatermarkHeader title="projects"/>
</Section>

<Section watermarkPadding dark>
    <WatermarkHeader title="education"/>
</Section>

<Section watermarkPadding>
    <WatermarkHeader title="contact"/>
</Section>