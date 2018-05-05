---
title       : "Grand Slam men's single champions in the Open Era"
subtitle    : "A data visualization from 1968 to 2018"
author      : "Massimo Malandra"
job         : "Data Scientist"
date        : "May 3rd, 2018"
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
# revealjs:
#   theme: beige
#   transition: concave
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : standalone # {standalone, draft}
knit        : slidify::knit2slides

---

<style>

slides > slide {
    background: #F5FFFA;
}

.title-slide {
  background-color: #A2CD5A;
}

.title-slide hgroup > h1, 
.title-slide hgroup > h2 {
  color: #FFFFFF ;
}

em {
  font-style: italic
}

strong {
  font-weight: bold;
}

bigger {
  font-size: 125%;
  font-style: italic;
  color: #AA9A39;
   }

</style>


## The Open Era winners
<br/>

This application contains an illustration of <strong>all the Grand Slam men's single champions in the Open Era</strong>.
<br/>

The analysis includes all Grand Slam tournaments from <b>1968</b> (excluding Australian Open of the same year, who was still under the Non-Open Era) to <b>2018</b>, and it is updated up to May 3rd 2018, hence the only 2018 Grand Slam tournament taken into account is the Australian Open, played last January in Melbourne.
<br/>

Notice that 1977 Australian Open was played twice in the same year, in January and December.

---

## Prize Money

Prize money information was mainly taken from the following link:
<br/>
https://github.com/popovichN/grand-slam-prize-money
<br/>
Thanks to the data gathered and made available by Nadja Popovich, and her extremely interesing article for the Guardian US:
<br/>

<em>"Battle of the sexes: charting how women in tennis achieved equal pay"</em>, Nadja Popovich, Guardian, 11 September 2015.
<br/>

The information for the years not included in the above file was retrieved from different Wikipedia pages, of the specific single tournament.
Data for 1969 <b>Australian Open</b> prize money were not available so an estimation has been made, based on the subsequent years and other sources.
<br/>

All imports have been converted from Australian dollars, Britihs Pounds, French Francs and Euro to US dollars according to the Google Finance currency rates at April 20th, 2018.

---

## Grand Slam winners plot

The one below is a 'static' version of the visualization available in the Shiny app: the scatterplot displays the total earnings in US dollars (in millions of US dollars) on the x-axis and the total number of Slam tournaments won on the y-axis. The size of the points represent the age of the player at his first Slam title win and the different colors indicate the maximum number of titles won in the same year by the player.

<img src="figure/unnamed-chunk-1-1.png" title="plot of chunk unnamed-chunk-1" alt="plot of chunk unnamed-chunk-1" style="display: block; margin: auto;" />

---

## Some highlights

The only player to have ever achieved a <b>Grand Slam</b> (all 4 different tournaments in the same year) is <bigger>Rod Laver</bigger>.
<br/>

The <b>youngest</b> player to ever win a Slam tournament was <bigger>Michael Chang</bigger>, who won the Roland Garros Open at the age of 17.
<br/>

The player with <b>most title</b> won (12) and <b>highest earnings</b> is <bigger>Roger Federer</bigger>.
<br/>

The only <b>African player</b> to ever won a Slam tournament is <bigger>Johan Kriek</bigger>, from South Africa.

