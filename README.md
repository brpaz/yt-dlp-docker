 # youtube-dlp-docker

> A docker image containing [yt-dlp](https://github.com/yt-dlp/yt-dlp) and [ffmpeg](https://ffmpeg.org/), useful for backing up online videos.

![LICENSE](https://img.shields.io/github/license/brpaz/yt-dlp-docker?style=for-the-badge)
[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/brpaz/yt-dlp-docker/ci.yml?style=for-the-badge)](https://github.com/brpaz/youtube-dlp-docker/actions/ci)

## What is included

- Alpine based image, that includes yt-dlp and ffmpeg binaries.

## Usage

```sh
docker run --rm -v ${PWD}:/data  -w /data ghcr.io/brpaz/yt-dlp-docker "https://www.youtube.com/watch?v=9xwazD5SyVg"
```

This container image has yt-dlp defined as entrypoint. Check [documentation](https://github.com/yt-dlp/yt-dlp?tab=readme-ov-file#usage-and-options) for supported commands and options.


## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

Please check [CONTRIBUTING.md](CONTRIBUTING.md) for details.

## 💛 Support the project

If this project was useful to you in some form, I would be glad to have your support.  It will help to keep the project alive and to have more time to work on Open Source.

The sinplest form of support is to give a ⭐️ to this repo.

You can also contribute with [GitHub Sponsors](https://github.com/sponsors/brpaz).

[![GitHub Sponsors](https://img.shields.io/badge/GitHub%20Sponsors-Sponsor%20Me-red?style=for-the-badge)](https://github.com/sponsors/brpaz)

Or if you prefer a one time donation to the project, you can simple:

<a href="https://www.buymeacoffee.com/Z1Bu6asGV" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: auto !important;width: auto !important;" ></a>

## Author

👤 **Bruno Paz**

* Website: [brunopaz.dev](https://brunopaz.net)
* Github: [@brpaz](https://github.com/brpaz)

## 📝 License

Copyright [Bruno Paz](https://github.com/brpaz).

This project is [MIT](https://opensource.org/licenses/MIT) licensed.
