# Maintainer: darkviper-dev <darkviper314@gmail.com>

pkgname=BeautyTheme
pkgver=r2.bb7c079
pkgrel=1
pkgdesc='Linux Icon Theme'
arch=('any')
url='https://github.com/darkviper-dev/'
license=()
provides=($pkgname)
conflicts=($pkgname)
source=("git+https://github.com/darkviper-dev/BeautyTheme.git")
sha256sums=('SKIP')

pkgver() {
  cd $pkgname
  printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
    cd $pkgname
    tar -xzvf $pkgname.tar.gz
    install -Dm644 "default/index.theme" "$pkgdir/usr/share/icons/default/index.theme"
    cp -r "$pkgname" "$pkgdir/usr/share/icons/"
}
