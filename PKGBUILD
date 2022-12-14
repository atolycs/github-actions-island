# Maintainer: Atolycs <atolycs@gmail.com>

pkgname=ardentlinux-keyring
pkgver=20221214
pkgrel=0
pkgdesc='ArdentLinux PGP Keyring'
arch=('any')
install="${pkgname}.install"
license=('GPL')
makedepends=("git")
url="https://github.com/ardentteams"
source=("git+https://github.com/ardentteams/ardentlinux-keyring.git")
sha256sums=('SKIP')

package() {
   cd "${srcdir}/${pkgname}"
   make PREFIX=/usr DESTDIR="${pkgdir}" install
}
