<script lang="ts">
    import Button from "../../components/Button.svelte";
    import LandingCentered from "../../components/LandingCentered.svelte";
    import Section from "../../components/Section.svelte";
    import DemoIframe from "../../components/DemoIframe.svelte";
    import WatermarkHeader from "../../components/WatermarkHeader.svelte";
    import CodeSnippet from "../../components/CodeSnippet.svelte";
    import Paragraph from "../../components/Paragraph.svelte";
    import DemoPicture from "../../components/DemoPicture.svelte";
</script>

<svelte:head>
    <title>Dennis Krasnov - Diet Driven Case Study</title>
</svelte:head>

<Section>
    <LandingCentered
            title="Diet Driven - Calorie Counter Mobile App"
            summary="Work in progress, currently focusing on the backend. Created for nutrition enthusiasts that are unsatisfied with current solutions."
    >
		<span slot="cta">
			<Button href="https://github.com/Dennis-Krasnov/Diet-Driven" targetBlank buttonRow primary>Github</Button>
<!--            <Button href="https://krasnov.dev" targetBlank buttonRow>View Play Store</Button> TODO: view App Store-->
		</span>
    </LandingCentered>
</Section>

<Section watermarkPadding dark>
    <WatermarkHeader title="mockup"/>
    <div style="width: 360px; margin: 0 auto;">
        <DemoPicture imageUrl="/case_study/diet_driven/mockup.png"/>
    </div>
    <Paragraph>
        I'm more focused on the UX than on the UI.
    </Paragraph>
</Section>

<!--<Section watermarkPadding dark>-->
<!--    <WatermarkHeader title="demo"/>-->
<!--    TODO: similar to deep link navigation demo, flutter compiled for web!-->
<!--</Section>-->

<Section watermarkPadding>
    <WatermarkHeader title="microservices"/>
    <Paragraph>
        A great deal of thought has gone into defining service boundaries to have a cohesive and decoupled system.
    </Paragraph>

    <Paragraph>
        Design-time coupling is when a service knows something about another service, this matters during development.
    </Paragraph>
    <DemoPicture imageUrl="/case_study/diet_driven/design_time_coupling.png"/>

    <Paragraph>
        Runtime coupling is when a service depends upon the availability of another service, this matters to synchronous requests.
    </Paragraph>
    <DemoPicture imageUrl="/case_study/diet_driven/runtime_coupling.png"/>
</Section>

<Section watermarkPadding dark>
    <WatermarkHeader title="actor pattern"/>
    <Paragraph>
        Actors are used to manage concurrency.
        Actors are single-instance stateful data processors (although they may internally parallelize work).
        Actors are interfaced asynchronously through a message queue.
    </Paragraph>

    <DemoPicture imageUrl="/case_study/diet_driven/actor.png"/>

    <Paragraph>
        The actor pattern is used both across services, as well as within each service, it's turtles all the way down.
        Across services, most microservices are actors that communicate though message queues (NATS Jetstream).
        Within a service, most long-living tasks are actors, and communicate over channels (in-memory).
    </Paragraph>
</Section>

<Section watermarkPadding>
    <WatermarkHeader title="event sourcing"/>
    <Paragraph>
        Some services require the complete history of all operations that occurred.
        RDBMS-style databases aren't a good fit since they were designed to overwrite previous state (lose information).
        For these services, I use an event store as the single source of truth, and replay the events when I need to materialize the state.
        This is called event sourcing (think of git materializing your repository by replaying every commit).
    </Paragraph>

    <Paragraph>
        CQRS (command query responsibility segregation) is often used alongside event sourcing to separate the domain model into specialized read and write parts.
        The write-side is an actor that materializes enough state to validate the next command in the queue (can be optimized by taking snapshots).
        The read-side is a service that materializes events in real time to respond to synchronous queries (essentially creating the perfect cache).
        Thanks to event sourcing, the read-side and write-side models can be ephemeral, and additional read models can be created retrospectively.
    </Paragraph>

    <DemoPicture imageUrl="/case_study/diet_driven/event_sourcing.png"/>
</Section>

<!--Location transparent: freedom of deploying however I want, composable! (code samples of service composition) -->

<!--<Section watermarkPadding>-->
<!--    <WatermarkHeader title="ux design"/>-->
<!--    TODO: take picture of rough sketches from phone-->
<!--</Section>-->

<!--TODO: full-stack reactivity, (realtime stream from projection all the way to frontend) embracing eventual consistency -->
