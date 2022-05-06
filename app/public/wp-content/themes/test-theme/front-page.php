<?php
get_header();
?>

<article class="content px-3 py-5 p-md-5">

    <div class="blue-block">
        <h2 class="unskew">Eesti Erapilootide Liit</h2>
        <div class="text-block unskew"><span class="description-text">Eesti Erapilootide Liit (EEL) asutati 8. jaanuaril 2003 tookord 32 harrastuspiloodi poolt eesmärgiga koondada Eesti Vabariigis eralennundusega tegelevaid ning eralennundusest huvitatud isikuid.
                EEL liikmeteks on era- ja harrastuspiloodid, purilendurid, ülikerglennukite piloodid, professionaalsed piloodid, lennujuhid ja -instruktorid. Erinevate eluvaldkondade esindajad – kuid ühise nimetajaga – lennundusentusiastid. Liitu kuulumine on loomulikult vabatahtlikkuse alusel, liikmed ega juhatus ei saa tehtava töö eest tasu.</span>
        </div>
    </div>
    <div class="light-block">
        <h2 class="">Uudised</h2>
        <div class="fb-page mt-2 " data-href="https://www.facebook.com/Pilots.ee/" data-tabs="timeline" data-width="500" data-height="600" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="false">
            <blockquote cite="https://www.facebook.com/Pilots.ee/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/Pilots.ee/">Pilots Estonia</a></blockquote>
        </div>
    </div>
    <?php

    if (have_posts()) {
        while (have_posts()) {
            the_post();
            the_content();
        }
    }

    ?>

</article>

<?php
get_footer();
?>
