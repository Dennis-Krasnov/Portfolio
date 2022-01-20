<script lang="ts">
    export let image: string;
    export let position: string;
    export let company: string;
    export let startDate: string;
    export let endDate: string;
    export let points: string[];

    export let fullWidth: boolean = false;
</script>

<div class="experience-container">
    <div class="logo">
        <img class:fullWidth src="{image}" alt="{company} logo"/>
    </div>
    <div class="content">
        <div class="header">
            <h2>{position}</h2>
            <h4>{company}: {startDate} - {endDate}</h4>
        </div>
        <ul>
            {#each points as point}
                <li>{@html point}</li>
            {/each}
        </ul>
    </div>
</div>

<style>
    /* FIXME: redo this as necessary! */

    .experience-container {
        /* Mobile */
        display: flex;
        flex-flow: column nowrap;

        padding-bottom: 92px;
    }

    .logo {
        width: 100px;
        height: 100px;
        padding: 15px;

        /* Mobile */
        align-self: center;
        margin-bottom: 10px;

        border-radius: 50%;
        border: 1px solid #e8e8eb;

        background: white;
    }

    .logo img {
        width: 60px;
        height: 60px;
        padding: 20px;

        object-fit: contain;
        user-select: none;
    }

    .logo img.fullWidth {
        width: 100px;
        padding: 20px 0;
    }

    .content .header {
        margin-bottom: 16px;
    }

    .content .header h2 {
        /*margin-right: 16px;*/

        /* Similar to project large heading */
        font-size: 42px;
        letter-spacing: -0.3px;
    }

    .content .header h4 {
        /* Similar to project small heading */
        text-transform: uppercase;
        letter-spacing: 2.5px;
        font-size: 16px; /* used to be 19px */
        font-weight: 600; /* used to be 700 */
    }

    .content ul {
        /* For the dots */
        padding: 0 0 0 18px;

        /* Similar to skill paragraph */
        font-weight: 400;
        font-size: 17px;
        color: #525f7f;
        line-height: 28px;
    }

    /* Desktop */
    @media (min-width: 820px) {
        .experience-container {
            flex-flow: row nowrap;
        }

        .logo {
            align-self: start;
            margin-bottom: 0;
        }

        .content {
            padding-left: 60px;
        }
    }
</style>