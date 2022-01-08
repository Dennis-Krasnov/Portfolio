<script lang="ts">
    import Button from "./Button.svelte";

    export let image: string;
    export let title: string;
    export let summary: string;
    export let resume: string;
</script>

<div class="landing-container">
    <div class="lhs">
        <h1>{title}</h1>
        <p>{@html summary}</p>

        <div class="cta">
            <Button href="#projects" buttonRow primary>view projects</Button><Button href={resume} buttonRow targetBlank>download resume</Button>
        </div>
    </div>
    <img src="{image}" alt="Landing">
</div>

<style>
    .landing-container {
        display: grid;

        /* Mobile */
        padding: 32px 0 80px 0; /* FIXME */
    }

    .lhs h1 {
        font-weight: 600;
        margin: 0 0 20px 0;

        /* Mobile */
        font-size: 34px;
        line-height: 44px;

        color: #32325d;
        transition: all 0.25s ease;
    }

    .lhs p {
        font-weight: 300;
        font-size: 23px;
        line-height: 35px;

        color: #525f7f;
    }

    .lhs .cta {
        /* Mobile */
        margin: 0 0 0 0;
    }

    img {
        width: 100%;
        height: 264px;

        object-fit: contain;
        user-select: none;
    }

    /* Desktop */
    @media (min-width: 820px) {
        .landing-container {
            grid-template-columns: .55fr .45fr;
            gap: 0 40px;

            padding: 64px 0 120px 0; /* FIXME */

            /* Height of lhs when p spans 2 lines */
            min-height: 264px;
        }

        .lhs h1 {
            font-size: 42px;
            line-height: 52px;
        }

        .lhs .cta {
            margin: 15px 0 0 0;
        }
    }

    /* Mobile */
    @media (max-width: 820px) {
        img {
            display: none;
        }
    }
</style>