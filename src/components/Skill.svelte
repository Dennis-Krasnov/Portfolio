<script>
	export let imageUrl;
	export let title;
	export let summary;
</script>

<div class="skill-container">
	<figure>
		<!-- <img src="{imageUrl}" alt="{title} icon"/> -->
		<img src="https://cdn.worldvectorlogo.com/logos/google-icon.svg" alt="{title} icon"/>
	</figure>
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

		user-select: none;

		img {
			height: 48px;
			width: 48px;
		}
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