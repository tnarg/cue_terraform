package main

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"net/http"
	"time"
)

const (
	urlBase  = "https://registry.terraform.io"
	urlStart = "/v1/providers?limit=100&tier=official,partner"
)

type response struct {
	Meta      responseMeta       `json:"meta"`
	Providers []responseProvider `json:"providers"`
}

type responseMeta struct {
	Limit         int    `json:"limit"`
	CurrentOffset int    `json:"current_offset"`
	NextOffset    int    `json:"next_offset"`
	NextUrl       string `json:"next_url"`
	PrevUrl       string `json:"prev_url"`
}

type responseProvider struct {
	Id          string    `json:"id"`
	Owner       string    `json:"owner"`
	Namespace   string    `json:"namespace"`
	Name        string    `json:"name"`
	Version     string    `json:"version"`
	Tag         string    `json:"tag"`
	Desc        string    `json:"description"`
	Source      string    `json:"source"`
	PublishedAt time.Time `json:"published_at"`
	Downloads   int       `json:"downloads"`
	Tier        string    `json:"tier"`
	LogoUrl     string    `json:"logo_url"`
}

func main() {
	seen := make(map[string]struct{})

	fmt.Println("terraform {")
	fmt.Println("  required_providers {")

	urlNext := urlBase + urlStart
	for {
		rsp, err := http.Get(urlNext)
		if err != nil {
			panic(err)
		}
		defer rsp.Body.Close()

		data, err := ioutil.ReadAll(rsp.Body)
		if err != nil {
			panic(err)
		}

		var msg response
		if err := json.Unmarshal(data, &msg); err != nil {
			panic(err)
		}

		for _, prov := range msg.Providers {
			if _, ok := seen[prov.Id]; ok {
				continue
			}
			fmt.Printf("      %s = {\n", prov.Name)
			fmt.Printf("          source  = \"%s/%s\"\n", prov.Namespace, prov.Name)
			fmt.Printf("          version  = \"~> %s\"\n", prov.Version)
			fmt.Println("      }")
			seen[prov.Id] = struct{}{}
		}

		if msg.Meta.NextUrl == "" || msg.Meta.NextUrl == urlNext || len(msg.Providers) < 100 {
			break
		}

		urlNext = msg.Meta.NextUrl
	}

	fmt.Println("  }")
	fmt.Println("}")
}
