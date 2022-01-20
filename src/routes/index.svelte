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
  import Testimonial from "../components/Testimonial.svelte";
  import Experience from "../components/Experience.svelte";
  import Projects from "../components/Projects.svelte";
  import Project from "../components/Project.svelte";

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
    <Testimonial {...data.testimonials[0]}/>
</Section>

<Section id="work" watermarkPadding dark>
    <WatermarkHeader title="work"/>
    {#each data.work as work}
        <Experience {...work}/>
    {/each}
</Section>

<Section id="projects" watermarkPadding>
    <WatermarkHeader title="projects"/>
    <Projects>
        {#each data.projects as project}
            <Project {...project}/>
        {/each}
    </Projects>
</Section>

<Section watermarkPadding dark>
    <WatermarkHeader title="education"/>
    {#each data.education as education}
        <Experience {...education}/>
    {/each}
</Section>