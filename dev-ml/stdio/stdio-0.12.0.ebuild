# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit opam

DESCRIPTION="Standard IO Library for OCaml"
HOMEPAGE="https://github.com/janestreet/stdio"
SRC_URI="https://github.com/janestreet/stdio/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

RDEPEND="dev-ml/base:="
DEPEND="${RDEPEND} dev-ml/dune"

src_test() {
	dune runtest || die
}
