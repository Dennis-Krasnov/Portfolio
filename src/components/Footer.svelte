<script lang="ts">
	import Section from "../components/Section.svelte";

	let currentYear: number = new Date().getFullYear();
</script>

<footer>
	<Section>
		<div class="social">
			<!-- TODO: components! -->
			<a href="https://github.com/Dennis-Krasnov"><i class="fab fa-github fa-lg" /></a>
			<a href="https://www.linkedin.com/in/denniskrasnov"><i class="fab fa-linkedin-in fa-lg" /></a>
			<a href="https://www.hackerrank.com/krasnov"><i class="fab fa-hackerrank fa-lg" /></a>
		</div>
		<div class="copyright">
			© {currentYear} Dennis Krasnov
		</div>
	</Section>
</footer>

<style lang="scss">
	.social {
		display: flex;
		flex-flow: row nowrap;
		justify-content: center;

		a {
			margin: 0 10px;
			border-radius: 50%;
			padding: 15px;

			background: #f5f5f9;
			color: black;
			-webkit-transition: all .15s ease;
			transition: all .15s ease;

			// Similar hover animation to button
			&:hover {
				color: #242733;
				// padding-bottom: 2px; // FIXME: fix text jumping when hovering bottom part
				transform: translateY(-2px);
			}
		}
	}

	.copyright {
		margin: 20px 0;
		text-align: center;

		color: rgb(136, 152, 170);
	}
</style>