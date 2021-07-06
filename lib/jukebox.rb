# Add your code here
def call
    puts "Welcome to Jukebox!"
    list_concerts
    menu
    goodbye
  end

  songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

describe "CLI Jukebox" do

  context "methods" do
    describe "#help" do
      it "lists out the possible commands" do
        expect( $stdout ).to receive(:puts).with(/I accept the following commands:/)
        expect( $stdout ).to receive(:puts).with(/- help : displays this help message/)
        expect( $stdout ).to receive(:puts).with(/- list : displays a list of songs you can play/)
        expect( $stdout ).to receive(:puts).with(/- play : lets you choose a song to play/)
        expect( $stdout ).to receive(:puts).with(/- exit : exits this program/)
        help
      end
