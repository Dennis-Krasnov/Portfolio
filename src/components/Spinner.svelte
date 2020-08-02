<script lang="ts"></script>

<div class="loader" />

<style lang="scss">
	@import "../styles/constants.scss";

	// Inspired by https://www.w3schools.com/howto/tryit.asp?filename=tryhow_css_loader

	.loader {
		border: 2.5px solid #f3f3f3;
		border-radius: 50%;
		border-top: 2.5px solid #555;
		width: 25px;
		height: 25px;
		-webkit-animation: spin 1s linear infinite; // Safari
		animation: spin 1s linear infinite;
	}

	/* Safari */
	@-webkit-keyframes spin {
		0% { -webkit-transform: rotate(0deg); }
		100% { -webkit-transform: rotate(360deg); }
	}

	@keyframes spin {
		0% { transform: rotate(0deg); }
		100% { transform: rotate(360deg); }
	}
</style>