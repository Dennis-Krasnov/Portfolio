<script>
	export let imageUrl;
	export let title;
	export let summary;
</script>

<div class="skill-container">
	<img src="{imageUrl}" alt="Programming language logos"/>
	<h2>{title}</h2>
	<p>{@html summary}</p>
</div>

<style>
	.skill-container {
		position: relative;

		display: flex;
		flex-flow: column nowrap;
		padding: 0 0 60px 0;
	}

	img {
		width: 50%;
		height: 30px;
		margin: 0 auto;
		object-fit: contain;
	}

	.skill-container > h2 {
		margin: 15px 0 0 0;
		text-align: center;
	}

	.skill-container > p {
		margin: 15px 0 0 0;
		text-align: center;
	}

	@media (min-width: 40em) {
		.skill-container {
			padding: 30px;

			box-shadow: 0 10px 30px rgba(75, 89, 123, .13);
		}

		.skill-container::before {
			content: "";
			top: 0;
			left: 0;
			position: absolute;
			background: linear-gradient(312.39deg,#ed88ff 0%,#1868f1 100%);
			-webkit-box-shadow: 0 4px 9px rgba(116,123,247,.25);
			box-shadow: 0 4px 9px rgba(116,123,247,.25);
			width: 100%;
			height: 5px;
		}

		img {
			width: 100%;
			height: 60px;
		}
	}
</style>