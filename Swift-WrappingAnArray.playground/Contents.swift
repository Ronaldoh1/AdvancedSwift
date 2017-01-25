//: Playground - noun: a place where people can play

import UIKit

// assume you have  a list of tracks.

let tracks = ["a", "b", "c", "d", "e"]

// algorithm should return a playlist if we select track "d"

var playlist = [String]() // this contains the selected track.
let selectedTrack = "d" // this is our selected track
var priorTracks = [String]() // this is the array prior to our selected track.

for track in tracks {

    if track == selectedTrack || playlist.count > 0 {
        playlist.append(track)
    } else {
        priorTracks.append(track)
    }
}

priorTracks

// add the two arays together. 

playlist + priorTracks


// Solution without using a for loop. 

func indexOf(array:[String], selectedTrack: String) -> Int {
    guard let index =  array.index(where: { return $0 == selectedTrack }) else {
        return 0
    }
    return index
}

let index = indexOf(array: tracks, selectedTrack: selectedTrack)

let prefix = tracks.prefix(upTo: index)
let suffix = tracks.suffix(from: index)

 suffix + prefix


