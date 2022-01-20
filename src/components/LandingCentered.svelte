<script lang="ts">
    export let title: string;
    export let summary: string;
</script>

<div class="landing-container">
    <h1>{title}</h1>
    <p>{@html summary}</p>

    <div class="cta">
        <slot name="cta" />
    </div>
</div>

<style>
    .landing-container {
        padding: 32px 0 80px 0; /* FIXME */

        text-align: center;
    }

    h1 {
        font-weight: 600;
        margin: 0 0 20px 0;

        /* Mobile */
        font-size: 34px;
        line-height: 44px;

        color: #32325d;
        transition: all 0.25s ease;
    }

    p {
        font-weight: 300;
        font-size: 23px;
        line-height: 35px;

        color: #525f7f;
    }

    .cta {
        /* Mobile */
        margin: 0 0 0 0;
    }

    /* Desktop */
    @media (min-width: 820px) {
        .landing-container {
            padding: 64px 0 120px 0; /* FIXME */
        }

        h1 {
            font-size: 42px;
            line-height: 52px;
        }

        .cta {
            margin: 15px 0 0 0;
        }
    }
</style>