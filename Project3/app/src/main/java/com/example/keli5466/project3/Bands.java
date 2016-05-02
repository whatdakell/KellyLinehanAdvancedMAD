package com.example.keli5466.project3;

/**
 * Created by keli5466 on 5/1/16.
 */
public class Bands {
    private String name;
    private int imageResourceID;
    private String des;

    private Bands(String newname, int newID, String newDes){
        this.name =newname;
        this.imageResourceID = newID;
        this.des = newDes;

    }
    public static final Bands[]rock = {
            new Bands("Foo Fighters",R.drawable.foo,"Adopted from a term used by Allied aircraft pilots in World War II to describe various UFOs or mysterious aerial phenomena"),
            new Bands("GreenDay",R.drawable.green,"Green day is a slang term for spending a day smoking marijuana"),
            new Bands("Jimmy Eat World",R.drawable.jimmy,"\"Jimmy\" is the guitarist Tom Linton's younger brother, who had a weight problem. Lead vocalist Jim Adkins' younger brother drew a picture on Jimmy's door of him putting a globe in his mouth, and wrote on it \"Jimmy Eat World.\""),
            new Bands("Marylin Manson ",R.drawable.man,"for Marilyn Monroe and Charles Manson."),
            new Bands("Arcade Fire",R.drawable.arcade,"Based on a story that singer the lead Vocalist heard as a kid. He was told that an arcade in Exeter had burnt down, killing many youths."),
            new Bands("Weezer",R.drawable.weezer," Weezer, a nickname given to the lead vocalist Rivers Cuomo when he was a kid by other children who were teasing him about his asthma."),

    };
    public static final Bands[]pop = {
            new Bands("ABBA",R.drawable.abba,"An acronym for the first names of the band members: Agnetha Faltskog, Bjorn Ulvaeus, Benny Anderson and Anni-Frid (Frida) Lyngstad. "),
            new Bands("Beatles",R.drawable.beatles," The Crickets were cited as an inspiration for the name. Additionally, the misspelling of beetles was a play on words, describing the \"beat\" of the band."),
            new Bands("BEE GEES ",R.drawable.bg,"the band said that they took their name from two friends that helped them out in their early days... Bill Goode and a disc jockey named Bill Gates. "),
            new Bands("DAVID BOWIE",R.drawable.bowie,"David took his last name from the Bowie knife (\"that big old bear killin' knife\"). His given name is 'David Jones', but he didn't want to be confused with Davy Jones of the Monkees. "),
            new Bands("ELVIS COSTELLO",R.drawable.elvis,"A combination of Elvis Presley and Dekland Mcmanus'(lead vocals, guitar) Mother's maiden name, Costello "),
            new Bands("ELTON JOHN",R.drawable.elton,"Reginald Dwight took his stage name from two other British musicians, Elton Dean and Long John Baldry. "),
            new Bands("FLEETWOOD MAC",R.drawable.fleet,"A combination of the last names of drummer Mick Fleetwood and bassist John McVie. "),
            new Bands("Men Without Hats",R.drawable.men,"the band started out playing in bars and clubs as Men With Hats. At the end of each show, they would throw their hats into the audience, eventually inspiring the name change."),
            new Bands("BackstreetBoyd",R.drawable.back,"After a flea market in Orlando, Florida"),
            new Bands("Lady Gaga",R.drawable.gaga,"From the queen song Radio Gaga"),
            new Bands("NSYNC",R.drawable.nsync,"Justin's mother came up with the name. N is the last letter in Justin, S is the last letter in Chris, Y is the last letter in Joey. N is actually from James Lance Bass because Chris gave him the nickname 'Lansten'. Since Lance doesn't end with a N, they used his nick name,\n" +
                    "Lansten. C is from J.C.")
    };
    public static final Bands[]hiphop = {
            new Bands("311",R.drawable.three,"311 is an Omaha, Nebraska, police code for indecent exposure. "),
            new Bands("UB40",R.drawable.ub,"The band got their name from the British Unemployment Benefit Form UB40 that you fill out to go \"on the dole.\" "),
            new Bands("Bestie Boys",R.drawable.best," A backronym for \"Boys Entering Anarchistic States Towards Inner Excellence"),
            new Bands("Eminem",R.drawable.slim,"Eminem is the phonetic spelling of the former stage name M&M of the Detroit rapper Marshall Mathers. M&M representing his initials."),
            new Bands("The Killers",R.drawable.killers,"From the bass drum of a fictional band in the music video for the New Order song Crystal"),
            new Bands("Knife Party",R.drawable.knife,"From the song Knife Prty by Deftones. "),
            new Bands("MGMT",R.drawable.mgmt,"The band was originally called The Management, MGMT is an abbreviation of that. "),
            new Bands("TLC",R.drawable.tlc,"Acronym for their nicknames T-Boz, Left Eye, and Chilli. "),
            new Bands("Skrillex",R.drawable.skrill,"Sonny Moore's old AIM nickname "),
            new Bands("LIMP BIZKIT",R.drawable.limp,"Got the idea from Fred Durst's dog Biscuit who has a limp."),
            new Bands("LL COOL J",R.drawable.ll,"for Ladies Love Cool James"),
            new Bands("Wu-Tang Clan",R.drawable.wu,"members adopted the name for the rap group after seeing the Kung fu film Shaolin and Wu Tang, which features a school of warriors trained in Wu-Tang style"),

    };
    public static final Bands[]classic = {
            new Bands("ACDC",R.drawable.acdc,"A band member saw AC/DC on a sewing machine. It stood for 'Alternating Current / Direct Current'. The band didn't realize it was also slang for bi-sexual"),
            new Bands("BLACK SABBATH",R.drawable.blsck,"Named after a 1963 horror movie starring Boris Karloff."),
            new Bands("BLOOD, SWEAT AND TEARS ",R.drawable.blood,"Founder, Al Kooper came up with the name when he was on the phone with a promoter, while gazing at a Johnny Cash album cover. The album was called, \"Blood Sweat & Tears\""),
            new Bands("BUFFALO SPRINGFIELD",R.drawable.buff,"The band took their name from of heavy asphalt roller that they saw parked on the street. "),
            new Bands("Cheap Trick",R.drawable.cheap,"From a Ouiji Board"),
            new Bands("CLASH ",R.drawable.clash,"Taken from a newspaper headline describing 'A Clash With Police' "),
            new Bands("CCR",R.drawable.ccr,"John Fogerty had a friend at work who had a friend whose name was Creedence Nuball. John's favorite beer was called Clearwater, which, after it disappeared from the market for a time, was re-introduced by another brewery.The result: Creedence Clearwater Revival."),
            new Bands("DEF LEPPARD",R.drawable.def,"Inspired by a drawing Joe Elliot made of a leopard with no ears, a 'Deaf Leopard'. "),
            new Bands("Lynyrd Skynyrd",R.drawable.skyn,"Named a fter Leonard Skinner, a gym teacher at Robert E. Lee High School in Jacksonville, Florida who was notorious for strictly enforcing the school's policy against boys having long hair"),
            new Bands("GRATEFUL DEAD",R.drawable.great," was chosen from a dictionary when Jerry Garcias finger landed on that phrase while playing a game of \"dictionary\" The band was originally the Warlocks"),
            new Bands("Led Zepplin",R.drawable.zep,"refers to the Hindenburg disaster. When Jimmy Page was assembling the group, Keith Moon(Who)and predicted the group would go down \"like a lead balloon\". Joking, John Entwistle(Who) said it would be \"more like a lead zeppelin.\" zeppelin is known as a blimp "),
            new Bands("The Rolling Stones",R.drawable.stones,"From the Muddy Waters song Rolling Stone "),

    };
    public String getName(){
        return name;

    }
    public String getDes(){
        return des;

    }
    public int getImageResourceID(){
        return imageResourceID;
    }
    public String toString(){
        return this.name;

    }

}
