<script lang="ts">
    import Button from './Button.svelte';
    import NavBarButton from './NavBarButton.svelte';
    import Section from "./Section.svelte";
</script>

<nav>
    <Section>
        <div class="horizontal">

            <a href="/#" id="logo">
                <img src="/logo.svg" alt="Dennis Krasnov Logo"/>
                <span>Dennis Krasnov</span>
            </a>

            <div class="expand" />

            <div class="scroll-links">
                <NavBarButton hash="skills">skills</NavBarButton>
                <NavBarButton hash="work">work</NavBarButton>
                <NavBarButton hash="projects">projects</NavBarButton>
            </div>

            <span class="resume-download">
                <Button href="/dennis_krasnov_resume.pdf" targetBlank>download resume</Button>
            </span>
        </div>
    </Section>
</nav>

<style>
    nav {
        height: var(--menu-height);

        /* Stick to top of screen */
        position: sticky;
        top: 0;
        z-index: 3;

        background: white;
    }

    .horizontal {
        display: flex;
        flex-flow: row nowrap;
        align-items: center;

        height: var(--menu-height);
    }

    a {
        display: flex;
        align-items: center;
    }

    a img {
        height: 40px;
    }

    a span {
        margin-left: 8px;

        font-size: 32px;
        font-weight: 600;
        white-space: nowrap;

        /* Same as logo */
        color: #343434;
    }

    .expand {
        flex: 1;
    }

    .scroll-links {
        display: flex;
        flex-flow: row nowrap;
        justify-content: flex-end;
        align-items: center;

        margin: 0 20px 0 0;
    }

    /* Mobile */
    @media (max-width: 500px) {
        .resume-download {
            display: none;
        }
    }

    /* Mobile */
    @media (max-width: 820px) {
        .scroll-links {
            display: none;
        }
    }
</style>