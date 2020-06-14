<script>
	
</script>

<div id="customer-logos">
	<a href="#work">
		<span class="button">View work experience</span>
		<ul>
			<li><img class="kickstarter" alt="kickstarter" src="https://stripe.com//img/v3/home/customer-logos/kickstarter.svg"></li>
			<li><img class="instacart" alt="instacart" src="https://stripe.com//img/v3/home/customer-logos/instacart.svg"></li>
			<li><img class="bookingcom" alt="bookingcom" src="https://stripe.com//img/v3/home/customer-logos/bookingcom.svg"></li>
			<li><img class="lyft" alt="lyft" src="https://stripe.com//img/v3/home/customer-logos/lyft.svg"></li>
			<li><img class="shopify" alt="shopify" src="https://stripe.com//img/v3/home/customer-logos/shopify.svg"></li>
			<li><img class="opentable" alt="opentable" src="https://stripe.com//img/v3/home/customer-logos/opentable.svg"></li>
			<li><img class="slack" alt="slack" src="https://stripe.com//img/v3/home/customer-logos/slack.svg"></li>
		</ul>
	</a>
</div>

<style lang="scss">
	// Inspired by https://stripe.com/en-ca/
	// TODO: size individual companies logos like stripe does

	$breakpoint: 880px;

	#customer-logos {
		// border-top: 2px solid #f6f9fc;

		a {
			display: block;
			padding-top: 20px;
			padding-bottom: 10px;

			user-select: none;

			.button {
				position: absolute;
				z-index:1;
				left:50%;
				-webkit-transform:translate(-50%,5px) scale(.95);
				transform:translate(-50%,5px) scale(.95);
				opacity:0;
				-webkit-transition:.7s cubic-bezier(.19,1,.22,1);
				transition:.7s cubic-bezier(.19,1,.22,1);
			}

			ul {
				display: flex;
				flex-flow: row wrap;
				justify-content: center;
				align-items: center;

				-webkit-transition:1s cubic-bezier(.19,1,.22,1);
				transition:1s cubic-bezier(.19,1,.22,1);
				will-change:transform;
				-webkit-filter:blur(0);
				filter:blur(0);

				li {
					margin: 10px;
				}

				img {
					height: 16px;
				}
			}

			@media (min-width: $breakpoint) {
				& {
					padding-top: 70px;
					padding-bottom: 65px;
				}	

				&:focus .button, &:hover .button {
					opacity:1;
					-webkit-transform:translate(-50%,-7px);
					transform:translate(-50%,-7px);
				}

				&:focus ul, &:hover ul {
					opacity:.7;
					-webkit-transform:scale(.95);
					transform:scale(.95);
					-webkit-filter:blur(10px);
					filter:blur(10px);
				}

				ul {
					justify-content: space-between;
				}
			}
		}
	}
</style>