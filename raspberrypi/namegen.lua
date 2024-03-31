
local adjectives = {
	"admiring", "adoring", "agitated", "amazing",
	"angry", "awesome", "backstabbing", "berserk",
	"big", "boring", "clever", "cocky",
	"compassionate", "condescending", "cranky", "desperate",
	"determined", "distracted", "dreamy", "drunk",
	"ecstatic", "elated", "elegant", "evil",
	"fervent", "focused", "furious", "gigantic",
	"gloomy", "goofy", "grave", "happy",
	"high", "hopeful", "hungry", "insane",
	"jolly", "jovial", "kickass", "lonely",
	"loving", "mad", "modest", "naughty",
	"nauseous", "nostalgic", "pedantic",
	"pensive", "prickly", "reverent", "romantic",
	"sad", "serene", "sharp", "sick",
	"silly", "sleepy", "small", "stoic",
	"stupefied", "suspicious", "tender", "thirsty",
	"tiny", "trusting", "awake", "abstract",
	"abstaining", "happy", "good", "cheeky",
	"small", "exhuberant", "thick", "thin"
}

local last_names = {
	"allen", "almeida", "archimedes",
	"austin", "bobby", "baltic", "bell",
	"blackwell", "bohr", "booth", "borg",
	"bose", "brown", "carson", "cindy",
	"cori", "cray", "curie", "darwin",
	"davinci", "dijkstra", "dubinsky", "easley",
	"einstein", "engelbart", "euclid", "euler",
	"fermat", "fermi", "franklin", "galileo",
	"gates", "goldberg", "goldstine", "goldwasser",
	"golick", "goodall", "hamilton", "hawking",
	"heisenberg", "heyrovsky", "hodgkin", "hoover",
	"hopper", "hugle", "hypatia", "jang",
	"jennings", "jepsen", "joliot", "jones",
	"kalam", "kare", "keller", "kinsey",
	"khorana", "kilby", "kirch", "knuth",
	"kowalevski", "lamar", "leakey", "leavitt",
	"lichterman", "liskov", "lovelace", "lumiere",
	"mahavira", "mayer", "mccarthy", "mcclintock",
	"mclean", "mkenzie", "meitner", "meninsky",
	"mestorf", "morse", "murdock", "newton", "nobel",
	"noether", "northcutt", "noyce", "panini",
	"pare", "pasteur", "payne", "perlman",
	"pike", "poincare", "poitras", "ptolemy",
	"raman", "ramanujan", "ride", "ritchie",
	"roentgen", "rosalind", "saha", "sammet",
	"schwartz", "shaw", "shirley", "shockley",
	"sinoussi", "snyder", "spence", "stallman",
	"stonebraker", "swanson", "swartz", "swirles",
	"tesla", "thompson", "torvalds", "turing",
	"varahamihira", "visvesvaraya", "volhard", "wescoff",
	"williams", "wilson", "wing", "wozniak", "wright",
	"zed"
}

local function gen2()
	local r1, r2 = math.random(#adjectives), math.random(#last_names)
	local w1, w2 = adjectives[r1], last_names[r2]
	return w1 .. "-" .. w2
end

local function gen3()
	local r1, r2, r3 = math.random(#adjectives), math.random(#adjectives), math.random(#last_names)
	local w1, w2, w3 = adjectives[r1], adjectives[r2], last_names[r3]
	return w1 .. "-" .. w2 .. "-" .. w3
end

math.randomseed(tonumber(tostring(os.time()):reverse():sub(1,6)))

return {
	gen2 = gen2,
	gen3 = gen3
}
