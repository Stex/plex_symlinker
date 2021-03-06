RSpec.describe PlexSymlinker::FileTypes::Mp3 do
  let(:file) { resource_file("example.mp3") }
  subject { described_class.new(file.to_s) }

  its(:album) { is_expected.to eql "mp3-book-album" }
  its(:genre) { is_expected.to eql "mp3-book-genre" }
  its(:title) { is_expected.to eql "mp3-book-title" }
  its(:year) { is_expected.to eql "2001" }
  its(:artist) { is_expected.to eql "mp3-book-artist" }
  its(:track_number) { is_expected.to eql "42" }
end
