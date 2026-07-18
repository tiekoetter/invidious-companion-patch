# invidious-companion patch set

Patch bundle for building a customized `invidious-companion`.

All patches are in [./patches](./patches/) and are applied before building
invidious-companion using [./scripts/compile.sh](./scripts/compile.sh), or
[./scripts/build-container-image.sh](./scripts/build-container-image.sh) if a
container image is preferred for Podman, Docker, Kubernetes, or any platform
that can run OCI container images.

## Attribution

This repository structure and patch set are based on Fijxu's
`invidious-companion-patches` repository:

https://git.nadeko.net/Fijxu/invidious-companion-patches

The original patch author metadata has been preserved in the patch files.
Copyright in the copied material remains with the original authors as indicated
there. Patches 0001 through 0003 are authored by Fijxu <fijxu@nadeko.net>.

This copy was modified on 2026-05-28 by adding this attribution notice, fixing
README links for the copied structure, adding the GPLv3 license text, reducing
the patch set to the patches used by this fork, and refreshing the logging and
encrypted query-parameter patches for the current `iv-org/invidious-companion`
version.

## License

This repository is distributed under the GNU General Public License version 3.
See [LICENSE](./LICENSE).
