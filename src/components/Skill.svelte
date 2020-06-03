<script>
	export let imageUrl;
	export let title;
	export let summary;
</script>

<div class="skill-container">
	<figure>
		<svg xmlns="http://www.w3.org/2000/svg" width="48px" height="48px" viewBox="0 0 48 48"><g fill="none" fill-rule="evenodd"><path fill="#87BBFD" fill-rule="nonzero" d="M46 33.44v3.09a1 1 0 0 1-.8.97l-42 8.93a1 1 0 0 1-1.2-.98v-3.09a1 1 0 0 1 .8-.97l42-8.93a1 1 0 0 1 1.2.98zm0-10v3.09a1 1 0 0 1-.8.97l-42 8.93a1 1 0 0 1-1.2-.98v-3.09a1 1 0 0 1 .8-.97l42-8.93a1 1 0 0 1 1.2.98zm0-10v3.09a1 1 0 0 1-.8.97l-42 8.93a1 1 0 0 1-1.2-.98v-3.09a1 1 0 0 1 .8-.97l42-8.93a1 1 0 0 1 1.2.98z"></path><path fill="#555ABF" fill-rule="nonzero" d="M46 3.44v3.09a1 1 0 0 1-.8.97l-42 8.93a1 1 0 0 1-1.2-.98v-3.09a1 1 0 0 1 .8-.97l42-8.93a1 1 0 0 1 1.2.98z"></path></g></svg>
	</figure>
	<!-- <img src="{imageUrl}" alt="Programming language logos"/> -->
	<h2>{title}</h2>
	<p>{@html summary}</p>
</div>

<style lang="scss">
	@import "../style/constants.scss";

	// Inspired by https://stripe.com/en-ca/terminal

	.skill-container {

	}

	figure {
		min-height: 48px;
		margin: 0 0 16px;
		display: grid;
		align-items: end;
	}

	h2 {
		font-weight: 600;
		font-size: 19px;
		line-height: 32px;
		color: #32325d;
	}

	p {
		font-weight: 400;
		font-size: 17px;
		line-height: 28px;
		color: #525f7f;
	}
</style>