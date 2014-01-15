require 'formula'

class Petsc < Formula
  homepage 'http://libmesh.sourceforge.net'
  url 'https://github.com/libMesh/libmesh.git'

  depends_on :mpi => :cc
  depends_on 'petsc'

  def install
    ENV.deparallelize
    args = ["--prefix=#{prefix}"]
    args << "--with-vtk-include=/usr/local/Cellar/vtk5/5.10.1/include/vtk-5.10"
    args << "--with-vtk-lib=/usr/local/Cellar/vtk5/5.10.1/lib/vtk-5.10"
    system "./configure", *args
    system "make"
    system "make install"
  end
end
