# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit opam

DESCRIPTION="Standard library for OCaml"
HOMEPAGE="https://github.com/janestreet/base"
SRC_URI="https://github.com/janestreet/base/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

RDEPEND="
	dev-lang/ocaml:=
"

DEPEND="${RDEPEND}
	dev-ml/dune
	dev-ml/sexplib0
"

src_test() {
	dune runtest || die
}
