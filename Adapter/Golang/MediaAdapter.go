package main

import (
	"fmt"
	"strings"
)

type MediaAdapter struct {
	Player IMediaPlayer
}

func (mediaAdapter *MediaAdapter) playMovie(filename string)  {
	filename_detail := strings.Split(strings.ToLower(filename), ".")
	count_arr := len(filename_detail)

	if count_arr < 2 {
		fmt.Println("File not valid")
		return
	}

	switch filename_detail[count_arr - 1] {
		case "mkv":
			mediaAdapter.Player.playMKV(filename)
			break

		case "mp4":
			mediaAdapter.Player.playMP4(filename)
			break
		
		default:
			fmt.Println("File type not supported")
	}
}