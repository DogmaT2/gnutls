Pod::Spec.new do |s|
  s.name         = "gnutls"
  s.version      = "3.2.9"
  s.summary      = "The GnuTLS Transport Layer Security Library."
  s.description  = <<-DESC
GnuTLS is a secure communications library implementing the SSL, TLS and DTLS protocols and technologies around them. It provides a simple C language application programming interface (API) to access the secure communications protocols as well as APIs to parse and write X.509, PKCS #12, OpenPGP and other required structures. It is aimed to be portable and efficient with focus on security and interoperability.

Features
Support for TLS 1.2, TLS 1.1, TLS 1.0, and SSL 3.0 protocols
Support for DTLS 1.2, and DTLS 1.0, protocols
Support for certificate path validation, as well as DANE and trust on first use.
Support for the Online Certificate Status Protocol (OCSP).
Support for multiple certificate types including X.509 and OpenPGP certificates.
Support for public key methods, including RSA and Elliptic curves, as well as password and key authentication methods such as SRP and PSK protocols.
Support for all the strong encryption algorithms, including AES and Camellia.
Support for CPU-assisted cryptography with VIA padlock and AES-NI instruction sets.
Support for cryptographic accelerator drivers via /dev/crypto.
Supports natively cryptographic tokens such as smart-cards, via PKCS #11 and the Trusted Platform Module (TPM).
Runs on most Unix platforms and Windows.
                   DESC
  s.homepage     = "http://www.gnutls.org/"
  s.license      = 'LPGL'
  s.author       = { "waTeim" => "truthset@gmail.com" }
  s.source       = { :git => "https://github.com/waTeim/gnutls.git", :tag => s.version.to_s }
  s.platform     = :osx, '10.6'
  s.requires_arc = false
  s.vendored_libraries = 'lib/*.a'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/gnutls/include"' }
  s.private_header_files = s.source_files =
     'include/**/*.h'
  s.header_mappings_dir = 'include'
end
