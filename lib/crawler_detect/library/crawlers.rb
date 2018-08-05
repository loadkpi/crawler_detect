# frozen_string_literal: true

# rubocop:disable Layout/TrailingWhitespace
module CrawlerDetect
  module Library
    module Crawlers
      CRAWLERS = %q[
.*Java.*outbrain
 YLT
008\/
192\.comAgent
2ip\.ru
404checker
404enemy
80legs
^b0t$
^bluefish
^Calypso v\/
^COMODO DCV
^DangDang
^DavClnt
^FDM
^git\/
^Goose\/
^Grabber
^HTTPClient\/
^Java\/
^Jeode\/
^Jetty\/
^Mail\/
^Mget
^Microsoft URL Control
^NG\/[0-9\.]
^NING\/
^PHP\/[0-9]
^RMA\/
^Ruby|Ruby\/[0-9]
^scrutiny\/
^VSE\/[0-9]
^WordPress\.com
^XRL\/[0-9]
^ZmEu
a3logics\.in
A6-Indexer
a\.pr-cy\.ru
Abonti
Aboundex
aboutthedomain
Accoona-AI-Agent
acoon
acrylicapps\.com\/pulp
Acunetix
AdAuth\/
adbeat
AddThis
ADmantX
adressendeutschland
adscanner\/
Advanced Email Extractor v
agentslug
AHC
aihit
aiohttp\/
Airmail
akka-http\/
akula\/
alertra
alexa site audit
Alibaba\.Security\.Heimdall
Alligator
allloadin\.com
AllSubmitter
alyze\.info
amagit
Anarchie
AndroidDownloadManager
Anemone
AngleSharp\/
Ant\.com
Anturis Agent
AnyEvent-HTTP\/
Apache Droid
Apache-HttpAsyncClient\/
Apache-HttpClient\/
ApacheBench\/
Apexoo
APIs-Google
AportWorm\/[0-9]
AppBeat\/[0-9]
AppEngine-Google
AppStoreScraperZ
Arachmo
arachnode
Arachnophilia
aria2
Arukereso
asafaweb.com
AskQuickly
ASPSeek
Asterias
Astute
asynchttp
Attach
autocite
Autonomy
axios\/
B-l-i-t-z-B-O-T
Backlink-Ceck
backlink-check
BackStreet
BackWeb
Bad-Neighborhood
Badass
baidu\.com
Bandit
BatchFTP
Battleztar\ Bazinga
baypup\/[0-9]
baypup\/colbert
BazQux
BBBike
BCKLINKS
BDFetch
BegunAdvertising\/
BigBozz
Bigfoot
biglotron
BingLocalSearch
BingPreview
binlar
biNu image cacher
Bitacle
biz_Directory
Black\ Hole
Blackboard Safeassign
BlackWidow
Bloglovin
BlogPulseLive
BlogSearch
Blogtrottr
BlowFish
Boardreader
boitho\.com-dc
BPImageWalker
Braintree-Webhooks
Branch Metrics API
Branch-Passthrough
Brandprotect
Brandwatch
Brodie\/
Browsershots
BUbiNG
Buck\/
Buddy
BuiltWith
Bullseye
BunnySlippers
Burf Search
Butterfly\/
BuzzSumo
CAAM\/[0-9]
CakePHP
Calculon
CapsuleChecker
CaretNail
catexplorador
cb crawl
CC Metadata Scaper
Cegbfeieh
Cerberian Drtrs
CERT\.at-Statistics-Survey
cg-eye
changedetection
ChangesMeter\/
Charlotte
CheckHost
checkprivacy
CherryPicker
ChinaClaw
Chirp\/[0-9]
chkme\.com
Chlooe
CirrusExplorer\/
CISPA Vulnerability Notification
Citoid
CJNetworkQuality
Clarsentia
clips\.ua\.ac\.be
Cloud\ mapping
CloudEndure
CloudFlare-AlwaysOnline
Cloudinary\/[0-9]
cmcm\.com
coccoc
cognitiveseo
colly -
CommaFeed
Commons-HttpClient
Comodo SSL Checker
contactbigdatafr
contentkingapp
convera
CookieReports\.com
copyright sheriff
CopyRightCheck
Copyscape
Cosmos4j\.feedback
Covario-IDS
CrawlForMe\/[0-9]
Crescent
cron-job\.org
Crowsnest
CSHttp
curb
Curious George
curl
cuwhois\/[0-9]
cybo\.com
DareBoost
DatabaseDriverMysqli
DataCha0s
DataparkSearch
dataprovider
DataXu
Daum(oa)?[ \/][0-9]
Demon
DeuSu
developers\.google\.com\/\+\/web\/snippet\/
Devil
Digg
Digincore
DigitalPebble
Dirbuster
Dispatch\/
DittoSpyder
dlvr
DMBrowser
DNS-Tools Header-Analyzer
DNSPod-reporting
docoloc
Dolphin http client\/
DomainAppender
Donuts Content Explorer
dotMailer content retrieval
dotSemantic
downforeveryoneorjustme
Download\ Wonder
downnotifier\.com
DowntimeDetector
Dragonfly File Reader
Drip
drupact
Drupal \(\+http:\/\/drupal\.org\/\)
DTS\ Agent
dubaiindex
EARTHCOM
Easy-Thumb
EasyDL
Ebingbong
ec2linkfinder
eCairn-Grabber
eCatch
ECCP
echocrawl
eContext\/
Ecxi
EirGrabber
ElectricMonk
elefent
EMail Exractor
Email%20Extractor%20Lite
EMail\ Wolf
EmailWolf
Embed PHP Library
Embedly
europarchive\.org
evc-batch
EventMachine HttpClient
Everwall Link Expander
Evidon
Evrinid
ExactSearch
ExaleadCloudview
Excel\/
Exif Viewer
ExperianCrawlUK
Exploratodo
Express WebPictures
ExtractorPro
Extreme\ Picture\ Finder
EyeNetIE
ezooms
facebookexternalhit
facebookplatform
fairshare
Faraday v
fasthttp
Faveeo
Favicon downloader
FavOrg
Feed Wrangler
Feedbin
FeedBooster
FeedBucket
FeedBunch\/[0-9]
FeedBurner
FeedChecker
Feedly
Feedspot
Feedwind\/[0-9]
feeltiptop
Fetch API
Fetch\/[0-9]
Fever\/[0-9]
FHscan
Fimap
findlink
findthatfile
FlashGet
FlipboardBrowserProxy
FlipboardProxy
FlipboardRSS
Flock\/
fluffy
Flunky
flynxapp
forensiq
FoundSeoTool\/[0-9]
free thumbnails
Freeuploader
FreeWebMonitoring SiteChecker
Funnelback
G-i-g-a-b-o-t
g00g1e\.net
GAChecker
ganarvisitas\/[0-9]
geek-tools
Genderanalyzer
Genieo
GentleSource
Getintent
GetLinkInfo
getprismatic\.com
GetRight
GetURLInfo\/[0-9]
GetWeb
Ghost Inspector
GigablastOpenSource
GIS-LABS
github-camo
github\.com\/
Go [\d\.]* package http
Go http package
Go!Zilla
Go-Ahead-Got-It
Go-http-client
gobyus
gofetch
GomezAgent
gooblog
Goodzer\/[0-9]
GoogleCloudMonitoring
Google favicon
Google Keyword Suggestion
Google Keyword Tool
Google Page Speed Insights
Google PP Default
Google Search Console
Google Web Preview
Google-Adwords
Google-Apps-Script
Google-Calendar-Importer
Google-HotelAdsVerifier
Google-HTTP-Java-Client
Google-Publisher-Plugin
Google-SearchByImage
Google-Site-Verification
Google-Structured-Data-Testing-Tool
Google-Youtube-Links
google_partner_monitoring
GoogleDocs
GoogleHC\/
GoogleProducer
Gookey
GoScraper
GoSpotCheck
GoSquared-Status-Checker
gosquared-thumbnailer
Gotit
GoZilla
grabify
GrabNet
Grafula
Grammarly
GrapeFX
grokkit
grouphigh
grub-client
gSOAP\/
GT::WWW
GTmetrix
GuzzleHttp
gvfs\/
HAA(A)?RTLAND http client
Haansoft
hackney\/
Hatena
Havij
hawkReader
HEADMasterSEO
HeartRails_Capture
help@dataminr\.com
heritrix
historious\/
hledejLevne\.cz\/[0-9]
Hloader
HMView
Holmes
HonesoSearchEngine\/
HootSuite Image proxy
Hootsuite-WebFeed\/[0-9]
hosterstats
HostTracker
ht:\/\/check
htdig
HTMLparser
http-get
HTTP-Header-Abfrage
http-kit
http-request\/
HTTP-Tiny
HTTP::Lite
http\.rb\/
HTTP_Compression_Test
http_request2
http_requester
HttpComponents
httphr
HTTPMon
httpscheck
httpssites_power
httpunit
HttpUrlConnection
httrack
huaweisymantec
HubPages.*crawlingpolicy
HubSpot
Humanlinks
HyperZbozi.cz Feeder
i2kconnect\/
Iblog
ichiro
Id-search
IdeelaborPlagiaat
IDG Twitter Links Resolver
IDwhois\/[0-9]
Iframely
igdeSpyder
IlTrovatore
Image\ Fetch
Image\ Sucker
ImageEngine\/
Imagga
imgsizer
InAGist
inbound\.li parser
InDesign%20CC
Indy\ Library
infegy
infohelfer
InfoTekies
InfoWizards Reciprocal Link System PRO
inpwrd\.com
instabid
Instapaper
Integrity
integromedb
Intelliseek
InterGET
Internet\ Ninja
internet_archive
InternetSeer
internetVista monitor
intraVnews
IODC
IOI
iplabel
ips-agent
IPS\/[0-9]
IPWorks HTTP\/S Component
iqdb\/
Iria
Irokez
isitup\.org
iskanie
iZSearch
janforman
Jaunt\/
Jbrofuzz
Jersey\/
JetCar
Jigsaw
Jobboerse
JobFeed discovery
Jobg8 URL Monitor
jobo
Jobrapido
Jobsearch1\.5
JoinVision Generic
JolokiaPwn
Joomla
Jorgee
JS-Kit
JustView
Kaspersky Lab CFR link resolver
KeepRight OpenStreetMap Checker
Kelny\/
Kerrigan\/
KeyCDN
Keyword Extractor
Keyword\ Density
Keywords Research
KickFire
KimonoLabs\/
Kml-Google
knows\.is
KOCMOHABT
kouio
kube-probe
kulturarw3
KumKie
L\.webis
Larbin
Lavf\/
LayeredExtractor
LeechFTP
LeechGet
letsencrypt
Lftp
LibVLC
LibWeb
Libwhisker
libwww
Licorne Image Snapshot
Liferea\/
Lightspeedsystems
Likse
link checker
Link Valet
link_thumbnailer
LinkAlarm\/
linkCheck
linkdex
LinkExaminer
linkfluence
linkpeek
LinkPreviewGenerator
LinkScan
LinksManager
LinkTiger
LinkWalker
Lipperhey
Litemage_walker
livedoor ScreenShot
LoadImpactRload
LongURL API
looksystems\.net
ltx71
lua-resty-http
lwp-request
lwp-trivial
LWP::Simple
lycos
LYT\.SR
mabontland
Mag-Net
MagpieRSS
Mail.Ru
MailChimp
Majestic12
makecontact\/
Mandrill
MapperCmd
marketinggrader
MarkMonitor
MarkWatch
Mass\ Downloader
masscan\/[0-9]
Mata\ Hari
Mediapartners-Google
mediawords
MegaIndex\.ru
Melvil Rawi\/
MergeFlow-PageReader
Metaspinner
MetaURI
MFC_Tear_Sample
Microsearch
Microsoft Office
Microsoft Outlook
Microsoft Windows Network Diagnostics
Microsoft-WebDAV-MiniRedir
Microsoft\ Data\ Access
MIDown\ tool
MIIxpc
Mindjet
Miniature.io\/
Miniflux
Mister\ PiX
mixdata dot com
mixed-content-scan
mixnode
Mnogosearch
mogimogi
Mojeek
Mojolicious \(Perl\)
monitis
Monitority\/[0-9]
montastic
MonTools
Moreover
Morfeus\ Fucking\ Scanner
Morning Paper
MovableType
mowser
Mrcgiguy
MS\ Web\ Services\ Client\ Protocol
MSFrontPage
mShots
MuckRack\/
muhstik-scan
MVAClient
MxToolbox\/
nagios
Najdi\.si\/
Name\ Intelligence
Nameprotect
Navroad
NearSite
Needle
Nessus
Net\ Vampire
NetAnts
NETCRAFT
NetLyzer
NetMechanic
Netpursual
netresearch
NetShelter ContentScan
Netsparker
NetTrack
Netvibes
NetZIP
Neustar WPM
NeutrinoAPI
NewRelicPinger\/1.0 \(\d+\)
NewsBlur .*Finder
NewsGator
newsme
newspaper\/
Nexgate Ruby Client
NG-Search
Nibbler
NICErsPRO
Nikto
nineconnections\.com
NLNZ_IAHarvester
Nmap Scripting Engine
node-superagent
node-urllib\/
node\.io
nominet\.org\.uk
Norton-Safeweb
Notifixious
notifyninja
nuhk
nutch
Nuzzel
nWormFeedFinder
Nymesis
NYU
Ocelli\/[0-9]
Octopus
oegp
Offline Explorer
Offline\ Navigator
okhttp
Omea Reader
omgili
OMSC
Online Domain Tools
OpenCalaisSemanticProxy
Openfind
OpenLinkProfiler
Openstat\/
OpenVAS
Optimizer
Orbiter
OrgProbe\/[0-9]
orion-semantics
Outlook-Express
ow\.ly
Owler
ownCloud News
OxfordCloudService\/[0-9]
Page Analyzer
Page Valet
page2rss
page\ scorer
page_verifier
PageAnalyzer
PageGrabber
PagePeeker
PageScorer
Pagespeed\/[0-9]
Panopta
panscient
Papa\ Foto
parsijoo
Pavuk
PayPal IPN
pcBrowser
Pcore-HTTP
PEAR HTTPRequest
Pearltrees
PECL::HTTP
peerindex
Peew
PeoplePal
Perlu -
PhantomJS Screenshoter
PhantomJS\/
Photon\/
phpcrawl
phpservermon
Pi-Monster
Picscout
Picsearch
PictureFinder
Pimonster
ping\.blo\.gs\/
Pingability
Pingdom
Pingoscope
PingSpot
pinterest\.com
Pixray
Pizilla
PleaseCrawl
Ploetz \+ Zeller
Plukkie
plumanalytics
PocketParser
Pockey
POE-Component-Client-HTTP
Pompos
Porkbun
Port Monitor
postano
PostmanRuntime\/
PostPost
postrank
PowerPoint\/
Priceonomics Analysis Engine
PrintFriendly\.com
PritTorrent\/[0-9]
Prlog
probethenet
Project 25499
Promotion_Tools_www.searchenginepromotionhelp.com
prospectb2b
Protopage
ProWebWalker
proximic
PRTG Network Monitor
pshtt, https scanning
PTST
PTST\/[0-9]+
Pulsepoint XT3 web scraper
Pump
Python-httplib2
python-requests
Python-urllib
Qirina Hurdler
QQDownload
QrafterPro
Qseero
Qualidator.com SiteAnalyzer
QueryN\ Metasearch
Quora Link Preview
Qwantify
Radian6
RankActive
RankFlex
RankSonicSiteAuditor
Readability
RealDownload
RealPlayer%20Downloader
RebelMouse
Recorder
RecurPost\/
redback\/
Redirect Checker Tool
ReederForMac
ReGet
RepoMonkey
request\.js
ResponseCodeTest\/[0-9]
RestSharp
Riddler
Rival IQ
Robosourcer
Robozilla\/[0-9]
ROI Hunter
RPT-HTTPClient
RSSOwl
safe-agent-scanner
SalesIntelligent
Saleslift
SauceNAO
SBIder
scalaj-http
scan\.lol
ScanAlert
Scoop
scooter
ScoutJet
ScoutURLMonitor
Scrapy
Screaming
ScreenShotService\/[0-9]
Scrubby
Search37\/
search\.thunderstone
Searchestate
SearchSight
Seeker
semanticdiscovery
semanticjuice
Semiocast HTTP client
Semrush
sentry\/
SEO Browser
Seo Servis
seo-nastroj.cz
Seobility
SEOCentro
SeoCheck
SEOkicks
Seomoz
SEOprofiler
SeopultContentAnalyzer
seoscanners
SEOstats
Server Density Service Monitoring
servernfo\.com
SetCronJob\/
sexsearcher
Seznam
Shelob
Shodan
Shoppimon Analyzer
ShoppimonAgent\/[0-9]
ShopWiki
ShortLinkTranslate
shrinktheweb
Sideqik
SilverReader
SimplePie
SimplyFast
Siphon
SISTRIX
Site-Shot\/
Site24x7
Site\ Sucker
SiteBar
Sitebeam
Sitebulb\/
SiteCondor
SiteExplorer
SiteGuardian
Siteimprove
SiteIndexed
Sitemap(s)? Generator
SiteMonitor
Siteshooter B0t
SiteSnagger
SiteSucker
SiteTruth
Sitevigil
sitexy\.com
SkypeUriPreview
Slack\/
slider\.com
slurp
SlySearch
SmartDownload
SMRF URL Expander
SMUrlExpander
Snake
Snappy
SniffRSS
sniptracker
Snoopy
SnowHaze Search
sogou web
SortSite
Sottopop
sovereign\.ai
SpaceBison
Spammen
Spanner
spaziodati
SPDYCheck
Specificfeeds
speedy
SPEng
Spinn3r
spray-can
Sprinklr
spyonweb
sqlmap
Sqlworm
Sqworm
SSL Labs
ssl-tools
StackRambler
Statastico\/
StatusCake
Steeler
Stratagems Kumo
Stroke.cz
StudioFACA
suchen
Sucuri
summify
Super Monitoring
SuperHTTP
Surphace Scout
Suzuran
SwiteScraper
Symfony BrowserKit
Symfony2 BrowserKit
SynHttpClient-Built
Sysomos
sysscan
Szukacz
T0PHackTeam
tAkeOut
Tarantula\/
Taringa UGC
Teleport
Telesoft
Telesphoreo
Telesphorep
Tenon\.io
teoma
terrainformatica\.com
Test Certificate Info
Tetrahedron\/[0-9]
The Drop Reaper
The Expert HTML Source Viewer
The Knowledge AI
The\ Intraformant
theinternetrules
TheNomad
theoldreader\.com
Thinklab
Thumbshots
ThumbSniper
TinEye
Tiny Tiny RSS
TLSProbe\/
Toata
topster
touche.com
Traackr.com
TrapitAgent
Trendiction
Trendsmap Resolver
trendspottr\.com
truwoGPS
TulipChain
Turingos
Turnitin
tweetedtimes\.com
Tweetminster
Tweezler\/
twibble
Twice
Twikle
Twingly
Twisted PageGetter
Typhoeus
ubermetrics-technologies
uclassify
uCrawlr\/
UdmSearch
UniversalFeedParser
Unshorten\.It\!\/[0-9]
Untiny
UnwindFetchor
updated
updown\.io daemon
Upflow
Uptimia
URL Verifier
URLChecker
URLitor.com
urlresolver
Urlstat
UrlTrends Ranking Updater
URLy\ Warning
URLy\.Warning
Vacuum
Vagabondo
VB\ Project
vBSEO
VCI
via ggpht\.com GoogleImageProxy
VidibleScraper
Virusdie
visionutils
vkShare
VoidEYE
Voil
voltron
voyager\/
VSAgent\/[0-9]
VSB-TUO\/[0-9]
Vulnbusters Meter
VYU2
w3af\.org
W3C-checklink
W3C-mobileOK
W3C_I18n-Checker
W3C_Unicorn
Wallpapers\/[0-9]+
WallpapersHD
wangling
Wappalyzer
WatchMouse
WbSrch\/
web-capture\.net
Web-Monitoring
Web-sniffer
Web\ Auto
Web\ Collage
Web\ Enhancer
Web\ Fetch
Web\ Fuck
Web\ Pix
Web\ Sauger
Web\ Sucker
Webalta
Webauskunft
WebAuto
WebCapture
WebClient\/
webcollage
WebCookies
WebCopier
WebCorp
WebDoc
WebEnhancer
WebFetch
WebFuck
WebGo\ IS
WebImageCollector
WebImages
WebIndex
webkit2png
WebLeacher
webmastercoffee
webmon 
WebPix
WebReaper
WebSauger
webscreenie
Webshag
Webshot
Website Analyzer\/
Website\ Quester
WebsiteExtractor
websitepulse agent
websitepulse[+ ]checker
WebsiteQuester
Websnapr\/
Webster
WebStripper
WebSucker
Webthumb\/[0-9]
WebThumbnail
WebWhacker
WebZIP
WeCrawlForThePeace
WeLikeLinks
WEPA
WeSEE
wf84
Wfuzz\/
wget
WhatsApp
WhatsMyIP
WhatWeb
WhereGoes\?
Whibse
WhoRunsCoinHive
Whynder Magnet
Windows-RSS-Platform
WinHttpRequest
wkhtmlto
wmtips
Woko
Word\/
WordPress\/
wotbox
WP Engine Install Performance API
wpif
wprecon\.com survey
WPScan
wscheck
Wtrace
WWW-Collector-E
WWW-Mechanize
WWW::Mechanize
www\.monitor\.us
WWWOFFLE
x09Mozilla
x22Mozilla
XaxisSemanticsClassifier
Xenu Link Sleuth
XING-contenttabreceiver\/[0-9]
XmlSitemapGenerator
xpymep([0-9]?)\.exe
Y!J-(ASR|BSC)
Yaanb
yacy
Yahoo Ad monitoring
Yahoo Link Preview
YahooCacheSystem
YahooYSMcm
YandeG
Yandex(?!Search)
yanga
yeti
Yo-yo
Yoleo Consumer
yoogliFetchAgent
YottaaMonitor
Your-Website-Sucks\/[0-9]
yourls\.org
Zade
Zao
Zauba
Zemanta Aggregator
Zend\\\\Http\\\\Client
Zend_Http_Client
Zermelo
Zeus
zgrab
ZnajdzFoto
Zombie\.js
ZyBorg
SpamExperts
[a-z0-9\-_]*(bot|crawler|archiver|transcoder|spider|uptime|validator|fetcher)
      ].strip.split(/\n+/).freeze
    end
  end
end
