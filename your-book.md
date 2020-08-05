---
# vim: filetype=markdown
title: 'Book Title'
author: 'Author Name'
link-citations: true
lang: en-GB
rights: © YYYY Author Name
documentclass: book
classoption:
- 11pt
- twoside
geometry:
- inner=0.75in
- outer=1in
- top=0.75in
- bottom=0.75in
- paperwidth=6in
- paperheight=9in
biblatex: true
biblatexoptions:
- backend=biber
microtypeoptions:
- final
pagestyle: plain
fontfamily: tgpagella
numbersections: 1
header-includes:
  - |
    \usepackage{eurosym}
    \usepackage[margins=raggedright]{floatrow}
    \usepackage{imakeidx}
    \makeindex[columns=2]
    \usepackage{nicefrac}
    \usepackage{csquotes}
    \usepackage{wrapfig}
    \usepackage[labelformat=empty]{caption}
    \setlength{\parindent}{0em}
    \setlength{\parskip}{1em}
include-after:
  - |
    \printindex
---

<div data-show-in="epub">
# Imprint {-}

&copy; Copyright: YYYY Author Name

First Edition, Month YYYY

Text: Author Name

Cover Image: Source of your cover image

Cover Design: Designer Name

Publisher: Publisher name and address

All rights reserved. Except for use in a review, no portion of this book may be reproduced in any form
without written permission of the publisher. Although the author and publisher have made every effort
to ensure that the information in this book was correct, the author and publisher do not assume and
hereby disclaim any liability to any party for any loss, damage or disruption caused by errors or
omissions, whether such errors or omissions result from negligence, accident or any other cause.
</div>

\mainmatter

# Foreword {-}


Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare neque mi, 
quis fringilla lectus vulputate euismod. Nullam vitae venenatis orci. Integer 
gravida quam ante, quis accumsan justo convallis eget. Mauris pulvinar, risus 
sit amet aliquam ornare, urna enim dignissim enim, id vulputate tellus ligula 
fringilla nisi. Aenean at mi a risus dictum auctor. Nunc varius sapien eu erat 
fringilla, id mollis justo viverra. Suspendisse malesuada vestibulum nisi, id 
pulvinar mi fermentum vitae.

Vestibulum ante\index{ante} ipsum primis in faucibus orci luctus et ultrices posuere 
cubilia curae; Phasellus accumsan nulla lobortis porta eleifend. Vestibulum id 
porttitor nisi. Suspendisse ut eros pellentesque, hendrerit est ut, tincidunt 
augue. Cras in laoreet est. Curabitur et augue et velit mollis imperdiet eu 
eget erat. Vestibulum ac nibh at elit volutpat rutrum. Fusce nec dui erat. Sed 
mi nibh, aliquet eu interdum vel, luctus quis elit. Mauris in nulla vel risus 
faucibus pretium. Nam lacinia ipsum varius, efficitur dolor dictum, pulvinar 
orci.

Curabitur pellentesque risus ligula, a consectetur magna facilisis vehicula. 
Praesent dapibus, nisl a mattis euismod, dui eros commodo lorem, eget interdum 
urna nulla et risus. Aenean eu tincidunt felis. Integer volutpat sit amet odio 
eget suscipit. Vivamus a justo lorem. Nullam ullamcorper varius ante. Fusce a 
leo mi. Duis aliquet vehicula purus vel rutrum. Praesent luctus mi a ex 
commodo, eget ullamcorper nunc pulvinar. Praesent fermentum ligula purus, ut 
ullamcorper sem vestibulum id.

Nunc vel velit congue nibh ultrices ultrices eget mattis erat. Phasellus magna 
erat, maximus sed tellus nec, fringilla tincidunt quam. Fusce ut risus vel nibh 
fringilla dignissim. Donec ornare augue in ex tincidunt, nec viverra nunc 
accumsan. Suspendisse luctus ex mattis pulvinar euismod. Vivamus elementum ante 
ac purus cursus, ut varius leo ultricies. Mauris sit amet ipsum eleifend, 
imperdiet magna ut, fermentum ex. Aenean sollicitudin leo non mauris consequat 
fermentum non quis nunc. Quisque vitae lacus volutpat, vehicula dui id, posuere 
libero.

Nullam accumsan odio eget tortor efficitur fermentum. Quisque imperdiet eros ac 
felis volutpat facilisis. Cras non dolor auctor, commodo orci at, semper 
mauris. In sed aliquet enim. Etiam sapien leo, mattis ut leo vitae, semper 
tempor turpis. Etiam ac sodales diam. Mauris vitae pretium libero. Nullam 
consectetur vulputate dolor sed finibus. In lobortis cursus tortor sit amet 
laoreet. Fusce vitae augue tempus, commodo massa id, sollicitudin justo. Class 
aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos 
himenaeos. Maecenas placerat ante non lacus pulvinar lacinia quis id neque. 
Duis venenatis pharetra elit, eu congue turpis volutpat sit amet. Curabitur eu 
auctor ante. In sit amet dictum magna, eu facilisis nulla. Morbi id nisi vel ex 
laoreet accumsan sit amet non ipsum.

# Chapter Title

## Some Section

![Small Image {l2in}](images/image2.jpg)

Lorem\index{lorem} ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis nisi 
turpis. Quisque in lectus quam. Nullam cursus risus sed ligula euismod, non 
aliquet nibh mollis. Aliquam ullamcorper rutrum nunc, at varius ex consectetur 
eu. Sed gravida fermentum lacus, id sodales arcu accumsan a. Aenean nec nulla 
eu nulla rhoncus auctor id in velit. Vestibulum fringilla malesuada magna, sit 
amet sagittis turpis maximus a. Aliquam nec ex id ante iaculis accumsan vitae a 
arcu. Vivamus magna nulla, sagittis nec lorem id, congue bibendum odio. 
Maecenas vitae ipsum tincidunt dolor convallis finibus. Proin dictum nulla et 
nisi vehicula fringilla. Maecenas tempor, nulla ac venenatis imperdiet, velit 
velit interdum lorem\index{lorem}, vel efficitur velit neque vitae odio. Nunc sapien sapien, 
gravida sit amet dignissim in, luctus in nulla. Aliquam commodo eros quis metus 
venenatis sollicitudin. In vehicula nulla sem, a sodales odio vestibulum ut. 
Morbi ultrices tortor non elit tempor, id cursus tortor porta[@somebook1984, p.42].

Maecenas massa purus, hendrerit sed risus quis, sollicitudin dictum ligula. Nam 
congue lorem vitae suscipit euismod. Morbi ullamcorper consectetur facilisis. 
Donec hendrerit ante enim, nec suscipit nisl congue nec. Aenean a augue non 
nibh congue fringilla. Interdum et malesuada fames ac ante ipsum primis in 
faucibus. Morbi nibh libero, rhoncus sed pharetra eget, ultricies nec sapien. 
Mauris nec quam semper, bibendum dui id, facilisis urna. Etiam ipsum nisl, 
vulputate sit amet enim a, eleifend varius turpis. Donec quis dapibus nisi.

![Some Image](images/image1.jpg)

## Another Section

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam interdum 
sollicitudin iaculis. Aenean quis dapibus urna, ac viverra mi. Duis iaculis 
nisi vitae tellus congue pretium. Nunc consequat gravida augue, vitae congue 
elit maximus a. Mauris posuere accumsan varius. Praesent non enim ullamcorper 
sapien rhoncus elementum. Mauris vitae mi vitae ipsum volutpat maximus id et 
turpis. Morbi diam magna, faucibus vitae odio sed, fringilla ullamcorper felis. 
Duis tincidunt ut nisl quis mollis. Etiam lacinia accumsan ornare. Aenean in 
neque sapien. Proin pretium ornare quam, convallis pellentesque sapien pulvinar 
semper.

Vestibulum ante\index{ante} ipsum primis in faucibus orci luctus et ultrices posuere 
cubilia curae; Integer odio tortor, venenatis at diam sit amet, varius maximus 
dolor. Suspendisse semper erat in tortor elementum, vitae pretium elit commodo. 
Aliquam ultrices tempor dolor eget aliquam. Nulla eget sapien laoreet, mollis 
quam vitae, maximus enim. Etiam euismod odio vel metus sollicitudin lacinia. 
Quisque ullamcorper non est id tristique. Aenean id interdum risus. Vivamus 
eget augue quis neque feugiat blandit eu vel diam. Phasellus bibendum magna in 
eros vestibulum, eu euismod tellus gravida. Nunc sed dui non enim mollis 
euismod eu molestie augue. Mauris ipsum nibh, mollis id enim vestibulum, 
interdum aliquam purus. Mauris viverra pulvinar rutrum. In a posuere mauris, 
nec varius diam.

Nulla sodales tempor orci a tristique. Morbi accumsan consectetur viverra. 
Mauris auctor augue erat, in euismod diam semper vitae. Vivamus massa leo, 
blandit sed efficitur faucibus, tempus quis urna. Sed elementum massa ac orci 
dapibus, eu ornare nibh pulvinar. Nullam at ante ac purus porta faucibus. Nulla 
pretium ut dui dictum euismod. Quisque in orci semper, sagittis leo nec, 
gravida mauris. Praesent id interdum leo. In sit amet quam nisi. Suspendisse 
mollis nisl ac metus porttitor, pulvinar lacinia ligula fermentum. Morbi non 
elit metus.

\appendix

# An Appendix

Lorem\index{lorem} ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sagittis 
posuere sodales. Nullam blandit dolor eget facilisis dictum. Integer vitae mi 
tortor. Ut lacinia neque sit amet interdum consequat. Aenean iaculis, eros a 
luctus venenatis, magna ipsum luctus massa, et tincidunt magna dui vitae 
mauris. Cras vel felis dui. Cras vitae ullamcorper elit. Nam sapien nisl, 
tempor et varius hendrerit, dapibus ac sapien. Nulla nec ante\index{ante} turpis. Morbi 
egestas turpis interdum dui sodales, eu fermentum magna finibus. Fusce faucibus 
purus eget urna volutpat, ut tincidunt purus porta. Suspendisse pretium sapien 
dolor, id finibus lorem dictum sed. Sed sagittis massa sed magna ullamcorper, 
et mattis urna facilisis.

# Bibliography {-}
