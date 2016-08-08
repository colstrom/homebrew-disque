class Disque < Formula
  desc 'Disque is a distributed message broker'
  homepage 'https://github.com/antirez/disque'

  head 'https://github.com/antirez/disque.git'

  devel do
    url 'https://github.com/antirez/disque/archive/1.0-rc1.tar.gz'
    version '1.0-rc1'
    sha256 '2d6fc85d16c8009154fc24d7fb004708f864712853d417cbea74bb6c2694e134'
  end

  def install
    ENV['PREFIX'] = prefix
    system 'make'
    system 'make', 'install'
  end

  test do
    system "#{bin}/disque-server", '--test-memory', '2'
  end
end
