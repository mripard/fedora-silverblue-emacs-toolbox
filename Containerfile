ARG FEDORA_MAJOR_VERSION=38

FROM registry.fedoraproject.org/fedora-toolbox:${FEDORA_MAJOR_VERSION}

RUN dnf copr enable -y deathwish/emacs-pgtk-nativecomp
RUN dnf install -y \
	emacs \
	fd-find \
	git \
	ripgrep
