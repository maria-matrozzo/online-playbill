puts "destorying existing seeds..."

Show.destroy_all
Review.destroy_all

puts "creating shows..."

s1 = Show.create(name:"Hamilton", image_URL: "https://imaging.broadway.com/images/poster-178275/w121/96902-11.jpg", description: "A fresh look at the era of the Founding Fathers.")
s2 = Show.create(name:"The Book of Mormon", image_URL: "https://imaging.broadway.com/images/poster-178275/w121/121297-3.jpg", description:"The nine-time Tony Award-winning Best Musical.")
s3 = Show.create(name: "Six: The Musical", image_URL: "https://imaging.broadway.com/images/poster-178275/w121/119932-13.jpeg", description: "A pop concert spectacle featuring the six ex-wives of Henry VIII.")
s4 = Show.create(name: "A Strange Loop", image_URL: "https://imaging.broadway.com/images/poster-178275/w121/122389-7.jpeg", description: "Michael R. Jackson's Pulitzer Prize-winning play arrives on Broadway.")
s5 = Show.create(name: "Bettlejuice", image_URL: "https://imaging.broadway.com/images/poster-178275/w121/102286-13.jpg", description:"The ghost-with-the-most returns to Broadway!")
s6 = Show.create(name: "Hadestown", image_URL: "https://imaging.broadway.com/images/poster-178275/w121/98790-13.jpg", description: "The Tony-winning musical that follows the mythical quest of Orpheus.")

puts "creating reviews..."

# Hamilton
r1 = Review.create(title: "Hamilton Takes a Shot at Broadway", 
    description: "The hottest ticket in town at The Public, Hamilton has only grown as a phenomenon with its move to Broadway, with its web site advising customers that good seats will start becoming available in January. And while some have pondered if Hamilton's success signals Broadway's greater acceptance of diverse contemporary music, the musical's major appeal is as old as Rodgers and Hammerstein: good writing. They loved it in the 1700s, and they're loving it now.",
    score: 5,
    show_id: s1.id)
r2 = Review.create(title: "The Founding Fathers Never Looked or Sounded So Cool", 
    description: "Yes, Hamilton is that good, and the still youthful Lin-Manuel Miranda can be mentioned in the same sentence with Sondheim and even Cole Porter. No need to go into all the lyrics here, but Miranda has a syllable-by-syllable rhyme for pseudonym, and many other words, that is absolutely delicious.",
    score: 5,
    show_id: s1.id)

# Six: The Musical
r3 = Review.create(title: "HOLD ON TO YOUR HEADS, WITH CHEERS AND HUZZAHS!", 
    description: "It has mass appeal, immediacy, enthusiasm, and an incredibly high sense of style; and it revels in what used to be called girl power but can now more properly be described as simply, or not-so-simply, power. An audience show for a wide audience, Six is a rafter-raising entertainment that'll get you throwing your proverbial bonnet in the air (but please keep that mask on, for now). Even if, yes, a third of the crowned characters portrayed did indeed-in the plot, and in actual history (and in actual herstory)-lose their heads.",
    score: 5,
    show_id: s3.id)
r4 = Review.create(title: "Lively Pop Musical Crowns King Henry’s Wives With A Royal Treatment", 
    description: "Introducing themselves by both name and fate - Divorced, beheaded, died, divorced, beheaded, survived!, they chant-sing - the wives, dressed in glitzy, geometric dresses that recall the space-glam flourishes of Lady Marmalade-era LaBelle, take the stage in a non-stop high-energy avalanche of sound. While each of the wives is given a contemporary musical niche - Catherine of Aragon hits the Beyonce-Shakira notes, Jane Seymour goes full Adele, Katherine Howard blends Britney Spears with Ariana Grande - the numbers, distinct and in quick succession, mesh like the colors of a nicely aged tapestry.",
    score: 4,
    show_id: s3.id)
r5 = Review.create(title: "Six finally gets its royal opening night, at long last", 
    description: "Notwithstanding the dynamic score, Six is weighed down by a labored book (which is built around a flimsy setup and banal banter), bargain-basement scenic design, and clunky dance choreography. That being said, Six, which was highly anticipated before the shutdown, still has the makings of a solid hit. The history-meets-contemporary pop concept certainly worked out well for a little show called Hamilton, and it is easy to imagine Six appealing to teen girls, history buffs, and many others.",
    score: 3,
    show_id: s3.id)

# A Strange Loop
r6 = Review.create(title: "Musical-theater auteur Michael R. Jackson turns himself inside out in a thrilling new show.", 
    description: "A Strange Loop is a wild ride. In a Broadway landscape dominated by shows that often seem designed by corporations for audiences of focus groups, Michael R. Jackson’s musical is the defiant product of a single and singular authorial vision. This wide-ranging intravaganza takes a deep dive, often barely coming up for breath, into a whirlpool of ambition and frustration as Jackson's seeming alter ego—a queer, Black writer-composer named Usher (Jaquel Spivey)—struggles to define himself amid traps of sex, race, family, body image, religion and entertainment. It’s screamingly funny and howlingly hurt, and it’s unmissable.",
    score: 5,
    show_id: s4.id)

# Beetlejuice
r7 = Review.create(title: "THESE GHOSTS ARE GONNA LIVE FOREVER", 
    description: "And thus is conjured a very enjoyable, very self-aware, very slick, very tuneful, very constructed-to-please-the-crowds new Broadway musical. It opened tonight at the Winter Garden, that frequent home to now-and-forever-running staples, and it's nearly guaranteed to follow suit.",
    score: 4,
    show_id: s5.id)
r8 = Review.create(title: "Beetlejuice Is Best When It’s at Its Most Antic", 
    description: "Beetlejuice, the rowdy, raunchy musical adapted from Tim Burton's 1988 horror-comedy, openly embraces the theme park-y aspects of an enterprise like the one it's engaged in. True to its source material, it's loud, it's cheeky, and it's all about excess. It's also-thanks in large part to Alex Brightman's spot-on performance as the incorrigible titular ghoul-a pretty fun time.",
    score: 3,
    show_id: s5.id)

# Hadestown
r9 = Review.create(title: "The Broadway Musical That Takes Its Sweet-Sounding Time Going to Hell and Back", 
description: "Hadestown has so much fun telling, as it puts it, this sad tale that even though this retelling of a well-trodden Greek myth feels slight, it also makes for a joyful performance. Anaïs Mitchell's musical, which opens on Broadway tonight at the Walter Kerr Theatre (to September 1), is delicious to look at and listen to-truly, my new earworm is Way Down Hadestown-even if its story is as wan as its central couple.",
score: 4,
show_id: s6.id)

puts "done seeding! :)"