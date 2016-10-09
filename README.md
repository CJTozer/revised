# *re*VIS*ed*

## The Vision

* You're reading *Longitude*, and want to see [John Harrison's](https://en.wikipedia.org/wiki/John_Harrison) clocks in all their glory as you read.
* You're reading *Band of Brothers*, and you don't know where [Carentan](https://en.wikipedia.org/wiki/Carentan) or [Bastogne](https://en.wikipedia.org/wiki/Bastogne) are.

The aim of this project is to create appropriate secondary sources that are appropriate to accompany your read.  Time will tell what direction this project takes, but some initial ideas are:
* Maps of key locations (and their relation to other locations)
* Portraits/photos of key characters
* Definitions/etymology of interesting words
* Links to references/further reading

## The Current Picture

* Barely started - no real functionality, but I've had a good play with the frameworks
* Written in Elm
* Served up by Heroku: [here](https://revised-web.herokuapp.com/)
* Back-end API provided by a Go webserver [revised-server](https://github.com/CJTozer/revised-server#readme) - aim is to back this with [Google cloud platform](https://cloud.google.com/storage/docs/json_api/v1/) for storage

## Ideas/To Do

### Types of resource
* [ ] Pure text
  * [ ] Marked-up text
* [ ] Links
* [ ] Images
* [ ] Maps
  * [ ] Basic (i.e. images, but not stored locally - use an API?)
  * [ ] With additional content - e.g. markers
  * [ ] Dynamic (see also: Timelines)
* [ ] Timelines
  * [ ] Static
  * [ ] Dynamic - e.g. [this](https://codyhouse.co/gem/vertical-timeline/)
