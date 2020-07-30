<script lang="ts">

	// The first time I got paid for development work, Pocket Trade Show
	let professionalStartDate: string = "08/01/2017";
	let millisecondsInYear: number = 31536000000;
	let yearsExperience: number = Math.floor((new Date().getTime() - new Date(professionalStartDate).getTime()) / millisecondsInYear);
</script>

<svelte:head>
	<title>Dennis Krasnov - Experienced developer available for hire</title>
</svelte:head>

<main>
	summary="Full stack software engineer with {yearsExperience} years experience designing and developing structured software systems."
</main>

<style>

</style>