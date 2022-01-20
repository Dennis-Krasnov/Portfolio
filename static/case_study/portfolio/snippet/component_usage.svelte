<Section id="skills" watermarkPadding dark>
    <WatermarkHeader title="skills"/>
    <Skills>
        {#each data.skills as skill}
            <Skill {...skill}/>
        {/each}
    </Skills>
</Section>