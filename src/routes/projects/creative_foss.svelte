<script context="module" lang="ts">

    import hljs from "highlight.js";

    export async function load({fetch}) {
        const applicationPropertiesResponse = await fetch("/case_study/creative_foss/snippet/application.properties");
        const memberResponse = await fetch("/case_study/creative_foss/snippet/Member.kt");
        const memberRepositoryResponse = await fetch("/case_study/creative_foss/snippet/MemberRepository.kt");
        const memberServiceResponse = await fetch("/case_study/creative_foss/snippet/MemberService.kt");

        return {
            props: {
                codeSnippets: {
                    applicationProperties: hljs.highlight(await applicationPropertiesResponse.text(), {language: "properties"}).value,
                    member: hljs.highlight(await memberResponse.text(), {language: "Kotlin"}).value,
                    memberRepository: hljs.highlight(await memberRepositoryResponse.text(), {language: "Kotlin"}).value,
                    memberService: hljs.highlight(await memberServiceResponse.text(), {language: "Kotlin"}).value,
                }
            }
        }
    }
</script>

<script lang="ts">
    import Button from "../../components/Button.svelte";
    import LandingCentered from "../../components/LandingCentered.svelte";
    import Section from "../../components/Section.svelte";
    import DemoIframe from "../../components/DemoIframe.svelte";
    import WatermarkHeader from "../../components/WatermarkHeader.svelte";
    import CodeSnippet from "../../components/CodeSnippet.svelte";
    import Paragraph from "../../components/Paragraph.svelte";
    import DemoVideo from "../../components/DemoVideo.svelte";

    export let codeSnippets;
</script>

<svelte:head>
    <title>Dennis Krasnov - Creative FOSS Case Study</title>
</svelte:head>

<Section>
    <LandingCentered
            title="Creative FOSS - Open Source Collaboration Tool"
            summary="Webapp that streamlines the open source contribution process for non-technical people. Won $1000 in the Gnome Community Engagement Challenge."
    />
</Section>

<Section watermarkPadding dark>
    <WatermarkHeader title="demo"/>
    <DemoVideo videoUrl="/case_study/creative_foss/demo.webm"/>
    <Paragraph>
        The designer signs up using the Github OAuth 2 integration.
        They are presented with a list of projects they can contribute to (filterable by work required, posted by project maintainers).
        In this demo, I forked the repository and submitted a pull request to replace the project logo by simply uploading an image.
        This was accomplished using Svelte on the frontend and Kotlin/Spring/PostgreSQL on the backend interfacing the Github API.
        Note that only a proof of concept was required for the competition.
    </Paragraph>
</Section>

<Section watermarkPadding>
    <WatermarkHeader title="Kotlin Spring"/>
    <Paragraph>
        For this project, I chose to use PostgreSQL because it's familiar and reliable.
        Combining Kotlin with Spring Boot allows me to write some incredibly expressive code.
    </Paragraph>

    <Paragraph>A Spring Boot properties file is used to configure the database connection, with the password supplied through an environment variable.</Paragraph>
    <CodeSnippet snippet={codeSnippets.applicationProperties}/>

    <Paragraph>Kotlin dataclasses are annotated with Spring Data JDBC to behave as an ORM.</Paragraph>
    <CodeSnippet snippet={codeSnippets.member}/>

    <Paragraph>This allows to use Spring Data's magical derived query methods in addition to built-in CrudRepository operations.</Paragraph>
    <CodeSnippet snippet={codeSnippets.memberRepository}/>

    <Paragraph>The MemberService uses Spring's dependency injection to get an instance of MemberRepository and SessionData.</Paragraph>
    <CodeSnippet snippet={codeSnippets.memberService}/>
</Section>

<Section watermarkPadding dark>
    <WatermarkHeader title="the pitch"/>
    <Paragraph>
        Software isn’t just about the code.
        Good software requires a good user experience.
        But what do graphic/UI/UX designers, marketers, copywriters, animators, translators, and other creative people have in common?
        They almost never contribute to FOSS, and that’s an issue.
        Creative FOSS aims to lower the barrier to entry of contributing to open source projects, specifically for non-technical people.
        No command line, no building the project from sources, and no spooky git commands, just a dead simple streamlined way for creative people of various professions to contribute their work.
    </Paragraph>
</Section>