<script lang="ts">
    export let name: string;
    export let summary: string;
    export let colourHex: string;
    export let whiteText: boolean = true;
    export let projectId: string;
    export let image: string;
</script>

<div class="project-container">
<!--    FIXME: how to do prefetch if at all? -->
    <a rel=prefetch href="projects/{projectId}">
        <div class="background" style="background: {colourHex}">
            <div class="title" class:whiteText>
                <h4>{name}</h4>
                <h2>{@html summary}</h2>
            </div>
            <div class="thumbnail">
                <img src="{image}" alt="{summary}">
            </div>
        </div>
    </a>
</div>

<style>
    /* Inspired by http://qaisar.design */

    /* Animation */
    .project-container:hover .background {
        transform: scale(0.94);
    }

    .project-container:hover .thumbnail {
        transform: scale(1.15);
    }

    .background {
        position: relative; /* For absolute positioned thumbnail */

        max-width: 394px; /* Width of placeholder on largest screen */
        height: 520px;
        padding: 40px;

        overflow: hidden; /* Stop thumbnail from going out of bounds */
        transition: all 0.25s ease;
    }

    .background .title {
        color: rgb(21, 48, 79);
    }

    .background .title.whiteText {
        color: white;
    }

    .background .title h4 {
        margin-bottom: 10px;

        text-transform: uppercase;
        letter-spacing: 2.5px;
        font-size: 19px;
        line-height: 28px;
    }

    .background .title h2 {
        font-size: 42px;
        letter-spacing: -0.3px;
    }

    .thumbnail {
        position: absolute;
        bottom: 0;
        right: 0;

        transition: all 0.25s ease;
        user-select: none;
    }

    .thumbnail img {
        max-width: 100%;
    }

    /* Desktop: section width (1000px) - project shrink before breakpoint (150px) */
    @media (min-width: 850px) {
        .project-container:nth-child(odd) {
            /* Project offset */
            margin: -100px 0 100px 0;
        }
    }

</style>