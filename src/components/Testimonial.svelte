<script lang="ts">
    export let image: string;
    export let quote: string;
    export let name: string;
    export let position: string;
</script>

<div class="testimonial-container">
    <div class="portrait">
        <img src="{image}" alt="Portrait of {name}">
    </div>
    <div class="content">
        <p>{quote}</p>
        <h5>{name}</h5>
        <h6>{position}</h6>
    </div>
</div>

<style>
    .testimonial-container {
        display: flex;

        /* Mobile */
        flex-flow: column nowrap;
        padding: 0 30px 30px 30px;
    }

    .portrait img {
        display: block;

        width: 200px;
        height: 200px;
        margin: 0 auto;

        border-radius: 50%;
    }

    .content {
        color: rgb(50, 50, 93);

        /* Mobile */
        padding: 30px 0 0 0;
    }

    .content p {
        position: relative;

        /* From landing section paragraph */
        font-weight: 300;
        font-size: 23px;
        line-height: 35px;
        color: #525f7f;
    }

    .content p:before {
        content: open-quote;
        position: absolute;
        left: -10px;
    }

    .content p:after {
        content: close-quote;
        position: absolute;
    }

    .content h5 {
        margin: 20px 0 0 0;

        font-size: 17px;
        font-weight: 600;
        text-transform: uppercase;
        letter-spacing: .025em;
        line-height: 28px;
    }

    .content h6 {
        font-size: 17px;
        font-weight: 400;
        line-height: 28px;
    }

    /* Desktop */
    @media (min-width: 820px) {
        .testimonial-container {
            flex-flow: row nowrap;
            padding: 0 60px 60px 60px;
        }

        .portrait {
            width: 470px;
        }

        .content {
            padding: 0 0 0 60px;
        }
    }
</style>