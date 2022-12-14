# Maintainer: Atolycs <atolycs@gmail.com>

pkgname=ardentlinux-keyring
pkgver=20221214
pkgrel=0
pkgdesc='ArdentLinux PGP Keyring'
arch=('any')
install="${pkgname}.install"
makedepends=("git")
source=("git+https://github.com/ardentteams/ardentlinux-keyring.git")
sha256sums=('SKIP')

package() {
   cd "${srcdir}/${pkgname}"
   make PREFIX=/usr DESTDIR="${pkgdir}" install
}
