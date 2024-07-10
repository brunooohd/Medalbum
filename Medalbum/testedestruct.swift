// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let pageProps: PageProps
    let deviceType: Int
    let i18N: I18N
    let displayAsWebView, displayAsWebViewdark: Bool
    let lang: String
    let namespaces: Namespaces
    let nSsg: Bool

    enum CodingKeys: String, CodingKey {
        case pageProps
        case deviceType
        case i18N = "i18n"
        case displayAsWebView, displayAsWebViewdark
        case lang = "__lang"
        case namespaces = "__namespaces"
        case nSsg = "__N_SSG"
    }
}

// MARK: - I18N
struct I18N: Codable {
    let countryCode: String
    let hasURLLanguageCode: Bool
    let language: String
}

// MARK: - Namespaces
struct Namespaces: Codable {
    let oqs: Oqs
    let common: Common
    let events: NamespacesEvents
    let paris2024: Paris2024

    enum CodingKeys: String, CodingKey {
        case oqs, common, events
        case paris2024 = "paris-2024"
    }
}

// MARK: - Common
struct Common: Codable {
    let allCategories, relatedContentTitle, greetings, listenThis: String
    let live, relatedTopic, seasons, viewAll: String
    let pictureBy: String
    let daysOfTheWeek: [String]
    let july, august, sports, ceremonies: String
    let ceremony, regularEvent, medalEvent, seeAll: String
    let search, date, nowPlaying, more: String
    let multipleVenues, localTime, login, loginRegister: String
    let quickLinks, siteLanguage, currentLanguage, openMainMenu: String
    let manageMyProfile, logoAltText, favouritesSection, allSports: String
    let addToFavourites: String
    let monthsFull, monthsShort, daysOfTheWeekFull: [String]
    let allDays, learnMore, readMore, allMedia: String
    let articles, videos, allNews, liveblog: String
    let topStories, podcast, allGlobalContent, download: String
    let loadmore, events: String
    let calendar: Calendar
    let accordion: Accordion
    let disciplineList: CommonDisciplineList
    let documentList: DocumentList
    let documentCategoryList: DocumentCategoryList
    let membersList: MembersList
    let infoCard: InfoCard
    let faqSection, faqQnA: FAQ
    let faqList: FAQList
    let newsList: NewsList
    
    let algoliaSearch: AlgoliaSearch
    let eventDates: String
    let countryList: CountryList
    let age, job, publishedOn, stage: String
    let stageTorchbearers, followTorchRoute, discoverFullSchedule, next: String
    let previous, playNow: String
    let emotionalLead: EmotionalLead
    let add, favoritesSportsSectionTitle, favoritesTeamSectionTitle, loginButton: String
    let loginSectionText, myFavoritesTitle, popupTitle, orLabel: String
    let registerButton: String
    let carouselAdvanced: CarouselAdvanced
    let ad: Ad

    let dateDistance: DateDistance
}

// MARK: - Accordion
struct Accordion: Codable {
    let collapseAll, expandAll: String
}

// MARK: - Ad
struct Ad: Codable {
    let displaySponsorText: String
}

// MARK: - AlgoliaSearch
struct AlgoliaSearch: Codable {
    let all, ocsevents, athlete, vod: String
    let news, series, disciplines, originals: String
    let athletes, nocs, stories, clear: String
    let faq, search, genericPage, noResults: String
    let noResultsDisclaimer, more, loadMore, persons: String
    let iocdocument, federation, page, titleText: String
    let filtersLabel, trending, recentSearches, relevant: String
    let latest, externalLink, podcast, venue: String
    let members, iocdocuments, dateFrom, dateTo: String
    let counterTemplate, pressReleases, sort, teams: String
}

// MARK: - Calendar
struct Calendar: Codable {
    let timeLabelTemplate, addToCalendarLabel, yearFilterLabel, moreInfo: String
}

// MARK: - CarouselAdvanced
struct CarouselAdvanced: Codable {
    let liveLabel: String
}

// MARK: - CountryList
struct CountryList: Codable {
    let status: String
}

// MARK: - DateDistance
struct DateDistance: Codable {
    let lessThanXSeconds, xSeconds, lessThanXMinutes, xMinutes: String
    let aboutXHours, xHours, xDays: String
}

// MARK: - CommonDisciplineList
struct CommonDisciplineList: Codable {
    let title, seeSchedule, seeScheduleResults: String
}

// MARK: - DocumentCategoryList
struct DocumentCategoryList: Codable {
    let counterLabelTemplate, documentsCounterLabel, categoriesCounterLabel: String
}

// MARK: - DocumentList
struct DocumentList: Codable {
    let pagesCountTemplate, view: String
}

// MARK: - EmotionalLead
struct EmotionalLead: Codable {
    let nextItemLabel, readMore, watch, watchLive: String
}

// MARK: - FAQList
struct FAQList: Codable {
    let buttonLabelTemplate: String
}

// MARK: - FAQ
struct FAQ: Codable {
    let backButtonLabel: String
}

// MARK: - InfoCard
struct InfoCard: Codable {
    let labels: Labels
}

// MARK: - Labels
struct Labels: Codable {
    let address, athleteProfile, born, email: String
    let entryYear, fax, flag, gamesParticipated: String
    let phone, president, recognitionYear, secretaryGeneral: String
    let title, website: String
}

// MARK: - MembersList
struct MembersList: Codable {
    let columnLabels: ColumnLabels
}

// MARK: - ColumnLabels
struct ColumnLabels: Codable {
    let noc, name, yearElected, gamesParticipation: String
}

// MARK: - NewsList
struct NewsList: Codable {
    let counterTextTemplate: String
}

// MARK: - Story
struct Story: Codable {
    let readMore: String
}

// MARK: - NamespacesEvents
struct NamespacesEvents: Codable {
    let topHeader: TopHeader
    let broadcastSchedule, news: BroadcastSchedule
    let overview: Overview
    let replays: BroadcastSchedule
}

// MARK: - BroadcastSchedule
struct BroadcastSchedule: Codable {
    let noResults, title: String
}

// MARK: - Overview
struct Overview: Codable {
    let association, features, latestNews: String
    let live: Live
    let replays, seeAll, seeMore, trendingNow: String
    let upNext: String
}

// MARK: - Live
struct Live: Codable {
    let moreLiveNow, viewMore, live: String
}

// MARK: - TopHeader
struct TopHeader: Codable {
    let date: String
}

// MARK: - Oqs
struct Oqs: Codable {
    let competitionTitle, resultsTitle, reportsTitle: String
    let competitionEvent: CompetitionEvent
    let banner: Banner
    let discipline: OqsDiscipline
    let messages: Messages
    let resultsSubmenu: ResultsSubmenu
    let status: Status
    let phasesTable: PhasesTable
    let eventunit: Eventunit
    let reports: [String: String]
    let unitDetails: UnitDetails
    let globalStandings: GlobalStandings
    let reportsTable: ReportsTable
}

// MARK: - Banner
struct Banner: Codable {
    let phase: Phase
    let timezone: String
}

// MARK: - Phase
struct Phase: Codable {
    let bkgmindividGp, bkgmindividQfnl, bkgmindividQual, bkgmindividR32: String
    let bkgmindividSfnl, bkgwindividGp, bkgwindividQfnl, bkgwindividQual: String
    let bkgwindividR32, bkgwindividSfnl, bmfmindvfrstQual, bmfwindvfrstQual: String
    let clbmblcombQual000100, clbmblcombQual000200, clbmblcombSfnl000100, clbmblcombSfnl000200: String
    let clbmspeedQual, clbwblcombQual000100, clbwblcombQual000200, clbwblcombSfnl000100: String
    let clbwblcombSfnl000200, clbwspeedQual, skbmparkQual, skbmparkSfnl: String
    let skbmstreetQual, skbmstreetSfnl, skbwparkQual, skbwparkSfnl: String
    let skbwstreetQual, skbwstreetSfnl: String

    enum CodingKeys: String, CodingKey {
        case bkgmindividGp = "BKGMINDIVID-----------GP----------"
        case bkgmindividQfnl = "BKGMINDIVID-----------QFNL--------"
        case bkgmindividQual = "BKGMINDIVID-----------QUAL--------"
        case bkgmindividR32 = "BKGMINDIVID-----------R32---------"
        case bkgmindividSfnl = "BKGMINDIVID-----------SFNL--------"
        case bkgwindividGp = "BKGWINDIVID-----------GP----------"
        case bkgwindividQfnl = "BKGWINDIVID-----------QFNL--------"
        case bkgwindividQual = "BKGWINDIVID-----------QUAL--------"
        case bkgwindividR32 = "BKGWINDIVID-----------R32---------"
        case bkgwindividSfnl = "BKGWINDIVID-----------SFNL--------"
        case bmfmindvfrstQual = "BMFMINDVFRST----------QUAL--------"
        case bmfwindvfrstQual = "BMFWINDVFRST----------QUAL--------"
        case clbmblcombQual000100 = "CLBMBLCOMB------------QUAL000100--"
        case clbmblcombQual000200 = "CLBMBLCOMB------------QUAL000200--"
        case clbmblcombSfnl000100 = "CLBMBLCOMB------------SFNL000100--"
        case clbmblcombSfnl000200 = "CLBMBLCOMB------------SFNL000200--"
        case clbmspeedQual = "CLBMSPEED-------------QUAL--------"
        case clbwblcombQual000100 = "CLBWBLCOMB------------QUAL000100--"
        case clbwblcombQual000200 = "CLBWBLCOMB------------QUAL000200--"
        case clbwblcombSfnl000100 = "CLBWBLCOMB------------SFNL000100--"
        case clbwblcombSfnl000200 = "CLBWBLCOMB------------SFNL000200--"
        case clbwspeedQual = "CLBWSPEED-------------QUAL--------"
        case skbmparkQual = "SKBMPARK--------------QUAL--------"
        case skbmparkSfnl = "SKBMPARK--------------SFNL--------"
        case skbmstreetQual = "SKBMSTREET------------QUAL--------"
        case skbmstreetSfnl = "SKBMSTREET------------SFNL--------"
        case skbwparkQual = "SKBWPARK--------------QUAL--------"
        case skbwparkSfnl = "SKBWPARK--------------SFNL--------"
        case skbwstreetQual = "SKBWSTREET------------QUAL--------"
        case skbwstreetSfnl = "SKBWSTREET------------SFNL--------"
    }
}

// MARK: - CompetitionEvent
struct CompetitionEvent: Codable {
    let empty, bkg, bkgm, bkgmindivid: String
    let bkgw, bkgwindivid, bmf, bmfm: String
    let bmfmindvfrst, bmfw, bmfwindvfrst, clb: String
    let clbm, clbmblcomb, clbmspeed, clbw: String
    let clbwblcomb, clbwspeed, skb, skbm: String
    let skbmpark, skbmstreet, skbw, skbwpark: String
    let skbwstreet: String

    enum CodingKeys: String, CodingKey {
        case empty = "-"
        case bkg = "BKG-------------------------------"
        case bkgm = "BKGM------------------------------"
        case bkgmindivid = "BKGMINDIVID-----------------------"
        case bkgw = "BKGW------------------------------"
        case bkgwindivid = "BKGWINDIVID-----------------------"
        case bmf = "BMF-------------------------------"
        case bmfm = "BMFM------------------------------"
        case bmfmindvfrst = "BMFMINDVFRST----------------------"
        case bmfw = "BMFW------------------------------"
        case bmfwindvfrst = "BMFWINDVFRST----------------------"
        case clb = "CLB-------------------------------"
        case clbm = "CLBM------------------------------"
        case clbmblcomb = "CLBMBLCOMB------------------------"
        case clbmspeed = "CLBMSPEED-------------------------"
        case clbw = "CLBW------------------------------"
        case clbwblcomb = "CLBWBLCOMB------------------------"
        case clbwspeed = "CLBWSPEED-------------------------"
        case skb = "SKB-------------------------------"
        case skbm = "SKBM------------------------------"
        case skbmpark = "SKBMPARK--------------------------"
        case skbmstreet = "SKBMSTREET------------------------"
        case skbw = "SKBW------------------------------"
        case skbwpark = "SKBWPARK--------------------------"
        case skbwstreet = "SKBWSTREET------------------------"
    }
}

// MARK: - OqsDiscipline
struct OqsDiscipline: Codable {
    let bkg, bmf, clb, skb: String

    enum CodingKeys: String, CodingKey {
        case bkg = "BKG"
        case bmf = "BMF"
        case clb = "CLB"
        case skb = "SKB"
    }
}

// MARK: - Eventunit
struct Eventunit: Codable {
    let long, short, exception: [String: String]
}

// MARK: - GlobalStandings
struct GlobalStandings: Codable {
    let resultsTable: ResultsTable
    let title: String
}

// MARK: - ResultsTable
struct ResultsTable: Codable {
    let legend, name, noc, owSkbRanking: String
    let q, rank, total: String
}

// MARK: - Messages
struct Messages: Codable {
    let noData: String
}

// MARK: - PhasesTable
struct PhasesTable: Codable {
    let attemps, average, awardedPoints, best: String
    let bestAverage, bestScore, bestTime, bibNumber: String
    let boulder, boulderPoints, currentCompetitors, fastestTime: String
    let group, groupRank, heat, highZone: String
    let lane, laneA, laneB, leadPoints: String
    let lowZone, name, noc, oqsPoints: String
    let phase, points, q, rank: String
    let rankNumber, record, result: String
    let records: Records
    let rounds, run, run1, run2: String
    let startOrder, score, scoreNeededFor, seed: String
    let summary, time, top, total: String
    let totalBattles, totalPoints, totalRounds, totalVotes: String
    let trick, votes, tooltip, vs: String
    let short: Short
}

// MARK: - Records
struct Records: Codable {
    let olympic, world: String
}

// MARK: - Short
struct Short: Codable {
    let average, awardedPoints, boulderPoints, leadPoints: String
    let points, rank, rankNumber, startOrder: String
    let totalPoints: String
    let records: Records
}

// MARK: - ReportsTable
struct ReportsTable: Codable {
    let docType, documentName, event, eventOrUnit: String
    let phase, publishedDate, reportType, unit: String
}

// MARK: - ResultsSubmenu
struct ResultsSubmenu: Codable {
    let battles, eventRanking, events, reports: String
    let results, schedule, standings, unit: String
    let units: Units
}

// MARK: - Units
struct Units: Codable {
    let bkg, clb: String

    enum CodingKeys: String, CodingKey {
        case bkg = "BKG"
        case clb = "CLB"
    }
}

// MARK: - Status
struct Status: Codable {
    let cancelled, delayed, finished, gettingReady: String
    let interrupted, postponed, rescheduled, running: String
    let scheduled, startsAt, unscheduled: String

    enum CodingKeys: String, CodingKey {
        case cancelled = "CANCELLED"
        case delayed = "DELAYED"
        case finished = "FINISHED"
        case gettingReady = "GETTING_READY"
        case interrupted = "INTERRUPTED"
        case postponed = "POSTPONED"
        case rescheduled = "RESCHEDULED"
        case running = "RUNNING"
        case scheduled = "SCHEDULED"
        case startsAt = "STARTS_AT"
        case unscheduled = "UNSCHEDULED"
    }
}

// MARK: - UnitDetails
struct UnitDetails: Codable {
    let blueCard, blueCards, goBackLabel, judges: String
    let officials, redCard, redCards, round: String
    let roundWinner: String
    let staff: Staff
    let votes: String
}

// MARK: - Staff
struct Staff: Codable {
    let chair, djOne, djOther, headJudge: String
    let hostOne, hostOther, ifDelegate, j1: String
    let j2, j3, j4, j5: String
    let j6, j7, j8, j9: String

    enum CodingKeys: String, CodingKey {
        case chair
        case djOne = "dj_one"
        case djOther = "dj_other"
        case headJudge
        case hostOne = "host_one"
        case hostOther = "host_other"
        case ifDelegate, j1, j2, j3, j4, j5, j6, j7, j8, j9
    }
}

// MARK: - Paris2024
struct Paris2024: Codable {
    let parisTime, timezoneExplanation, tentativeDay: String
    let disciplineList: Paris2024_DisciplineList
    let inAssociationWith, linkToAssociation: String
    let otrMap: OtrMap
    let header: Header
    let gamesMap: GamesMap
    let footer: Footer
    let parisTimeCET, addFavoritesLoggedInTitle, addFavoritesLoggedInDescription, allianzWallTitle: String
    let allianzTriviaTitle, triviaPlayMore: String
    let medalsTally: MedalsTally
    let eventMedalTracker: EventMedalTracker
    let liveBlog: LiveBlog
}

// MARK: - Paris2024_DisciplineList
struct Paris2024_DisciplineList: Codable {
    let subtitle, registration, sportsTitle, sportsTitlePara: String
    let removeFavourite: String
}

// MARK: - EventMedalTracker
struct EventMedalTracker: Codable {
    let events: EventMedalTrackerEvents
    let medals: Medals
    let favorites: Favorites
}

// MARK: - EventMedalTrackerEvents
struct EventMedalTrackerEvents: Codable {
    let live: Medals
    let next: Next
}

// MARK: - Medals
struct Medals: Codable {
    let time: String
    let label: MedalsLabel
}

// MARK: - MedalsLabel
struct MedalsLabel: Codable {
    let singular, plural: String
}

// MARK: - Next
struct Next: Codable {
    let time: String
    let label: NextLabel
}

// MARK: - NextLabel
struct NextLabel: Codable {
    let singular: String
}

// MARK: - Favorites
struct Favorites: Codable {
    let label, edit, add, progress: String
}

// MARK: - Footer
struct Footer: Codable {
    let copyright: String
    let socialLink: SocialLink
    let appsLink: AppsLink
}

// MARK: - AppsLink
struct AppsLink: Codable {
    let download: String
}

// MARK: - SocialLink
struct SocialLink: Codable {
    let followUsOn: String
}

// MARK: - GamesMap
struct GamesMap: Codable {
    let filters: Filters
    let welcomePageData: WelcomePageData
    let listView: ListView
    let eventDetail: EventDetail
    let refresh: String
    let noDataTorchTracker: NoDataTorchTracker
}

// MARK: - EventDetail
struct EventDetail: Codable {
    let supportedBy, moreInfo, from, to: String
    let openingTimes, location, price, reservation: String
    let accessibility, organizedBy, artisticDirection, additionalInfo: String
}

// MARK: - Filters
struct Filters: Codable {
    let resetFilter, filters, applyFilters: String
    let time: Time
    let locations: Locations
    let categories: Categories
}

// MARK: - Categories
struct Categories: Codable {
    let label, selectAll, deselectAll: String
}

// MARK: - Locations
struct Locations: Codable {
    let placeholder, mapCenter, myPosition, noResults: String
    let typeMoreCharactersToSearch: String
}

// MARK: - Time
struct Time: Codable {
    let label: String
    let timePeriods: TimePeriods
    let dateFrom, dateTo: String
}

// MARK: - TimePeriods
struct TimePeriods: Codable {
    let fromToday, tomorrowOnward, nextMonth, custom: String

    enum CodingKeys: String, CodingKey {
        case fromToday = "FromToday"
        case tomorrowOnward = "TomorrowOnward"
        case nextMonth = "NextMonth"
        case custom = "Custom"
    }
}

// MARK: - ListView
struct ListView: Codable {
    let title, result, support: String
    let empty: NoDataTorchTracker
    let buttonSearch: String
}

// MARK: - NoDataTorchTracker
struct NoDataTorchTracker: Codable {
    let title, text, buttonText: String
}

// MARK: - WelcomePageData
struct WelcomePageData: Codable {
    let buttonText: String
    let insideTerritories, outsideTerritories: SideTerritories
}

// MARK: - SideTerritories
struct SideTerritories: Codable {
    let mobile, web: Mobile
}

// MARK: - Mobile
struct Mobile: Codable {
    let title, subTitle: String
    let currentPosition, torchRelay, zoom: MobileShare
}

// MARK: - MobileShare
struct MobileShare: Codable {
    let title, text: String
}

// MARK: - Header
struct Header: Codable {
    let logoAltText, loginRegister, quickLinks, siteLanguage: String
    let currentLanguage, openMainMenu, manageMyProfile, closeMainMenu: String
    let mainNavigation, secondaryNavigation, loginButton, backButton: String
    let userSettings, myProfile, favourites, signOut: String
    let skipToMainContent, skipToLanguageSelection, skipToLoginProfile, skipToSearch: String
}

// MARK: - LiveBlog
struct LiveBlog: Codable {
    let live: String
    let layout: Layout
    let tags: Tags
    let story: Story
    let socialShare: SocialShare
    let geoBlocking: GeoBlocking
    let hero: Hero
    let photo: Photo
}

// MARK: - GeoBlocking
struct GeoBlocking: Codable {
    let contentNotAvailable, viewLatestUpdates: String
}

// MARK: - Hero
struct Hero: Codable {
    let update: String
}

// MARK: - Layout
struct Layout: Codable {
    let updateButton, scrollToTop: String
}

// MARK: - Photo
struct Photo: Codable {
    let copyright: Copyright
}

// MARK: - Copyright
struct Copyright: Codable {
    let copyrightPrefix: String

    enum CodingKeys: String, CodingKey {
        case copyrightPrefix = "prefix"
    }
}

// MARK: - SocialShare
struct SocialShare: Codable {
    let linkCopiedLabel: String
    let mobileShare: MobileShare
}

// MARK: - Tags
struct Tags: Codable {
    let pinned: String
}

// MARK: - MedalsTally
struct MedalsTally: Codable {
    let tableHeader: TableHeader
}

// MARK: - TableHeader
struct TableHeader: Codable {
    let rank, teamsNOC, goldLetter, silverLetter: String
    let bronzeLetter: String

    enum CodingKeys: String, CodingKey {
        case rank
        case teamsNOC = "teamsNoc"
        case goldLetter, silverLetter, bronzeLetter
    }
}

// MARK: - OtrMap
struct OtrMap: Codable {
    let stage, currentStage, closeStageDetails, stageList: String
    let stageDetailsGoTo: String
}

// MARK: - PageProps
struct PageProps: Codable {
    //let hostname, dateTime: String
    let page: Page
  //  let headerData, footerData, templateData: JSONNull?
  //  let debugErrors: Bool
  //  let appAnalyticsData: AppAnalyticsData
   // let imagesLazyLoadingDisabled, enableRefactoredPlayer, displayAsWebView, useDarkMode: Bool
   // let traceID: JSONNull?

    enum CodingKeys: String, CodingKey {
      //  case hostname, dateTime
        case page
        //case headerData, footerData, templateData, debugErrors, appAnalyticsData, imagesLazyLoadingDisabled, enableRefactoredPlayer, displayAsWebView, useDarkMode
        //case traceID = "traceId"
    }
}

// MARK: - AppAnalyticsData
struct AppAnalyticsData: Codable {
    let analyticsSectionLevel1: String
    let analyticsSectionLevel2, analyticsSectionLevel3: JSONNull?
}

// MARK: - Page
struct Page: Codable {
    let template: Template
    let items: [PageItem]
    let variables: [Variable]
    let useDarkMode: Bool
    let version: String
}

// MARK: - PageItem
struct PageItem: Codable {
    let type, name, slot: String
    let data: DataClass?
}

// MARK: - DataClass
struct DataClass: Codable {
    let thumbnail: String?
    let title, description, entityID, contentDate: String?
    let hrefLangData: [HrefLangDatum]?
    let pageID: PageID?
    let adUnit, adSizeTemplate: String?
    let customKeyPairs: [JSONAny]?
    let disableBanner: Bool?
    let targetValue, languageVersion, environment: String?
    let tags: [JSONAny]?
    let id, language, day: String?
    let days: [String]?
    let disciplines: [DisciplineElement]?
    let schedules: [Schedule]?
    let scheduleType, dailyScheduleBaseURL, sportScheduleBaseURL, disclaimerText: String?
    let linkBehavior, linkTarget, partnersAppearance: String?
    let isScreenReaderOnly: Bool?
    let trackingModule: String?
    let hideInWebviews: Bool?
    let items: [DataItem]?
    let htmlContent: [String]?
    let width: String?

    enum CodingKeys: String, CodingKey {
        case thumbnail, title, description
        case entityID = "entityId"
        case contentDate, hrefLangData
        case pageID = "pageId"
        case adUnit, adSizeTemplate, customKeyPairs, disableBanner, targetValue, languageVersion, environment, tags, id, language, day, days, disciplines, schedules, scheduleType
        case dailyScheduleBaseURL = "dailyScheduleBaseUrl"
        case sportScheduleBaseURL = "sportScheduleBaseUrl"
        case disclaimerText, linkBehavior, linkTarget, partnersAppearance, isScreenReaderOnly, trackingModule, hideInWebviews, items, htmlContent, width
    }
}

// MARK: - DisciplineElement
struct DisciplineElement: Codable {
    let order: Int
    let disciplineCode, disciplineSlug, description: String
    let sortOrder: Int
}

// MARK: - HrefLangDatum
struct HrefLangDatum: Codable {
    let culture, url: String
    let current: Bool?
}

// MARK: - DataItem
struct DataItem: Codable {
    let sponsorName: String
    let secondaryLink: String
    let logo: Logo
    let primaryLink: String?
}

// MARK: - Logo
struct Logo: Codable {
    let alt, title, urlTemplate: String
}

// MARK: - PageID
struct PageID: Codable {
    let id, path: String
}

// MARK: - Schedule
struct Schedule: Codable {
//    let units: [Unit]
    let discipline: ScheduleDiscipline
    let venue: Venue?
}

// MARK: - ScheduleDiscipline
struct ScheduleDiscipline: Codable {
    let disciplineCode, description: String
}



// MARK: - Match
struct Match: Codable {
    let team1, team2: Team?
}

// MARK: - Team
struct Team: Codable {
    let teamCode, description: String
}

// MARK: - Venue
struct Venue: Codable {
    let venueCode, description: String
}

// MARK: - Template
struct Template: Codable {
    let id: String
    let properties: Properties
}

// MARK: - Properties
struct Properties: Codable {
    let headerType, emblem, title, titleTag: String
    let roofline: String
    let rooflineInH1: Bool
    let submenuID, themeRotation, searchTopics, culture: String
    let footerData: FooterData
    let headerData: HeaderData
    let language: String
    let searchResultsCtaConfiguration: SearchResultsCtaConfiguration

    enum CodingKeys: String, CodingKey {
        case headerType, emblem, title, titleTag, roofline, rooflineInH1
        case submenuID = "submenuId"
        case themeRotation, searchTopics, culture, footerData, headerData, language, searchResultsCtaConfiguration
    }
}

// MARK: - FooterData
struct FooterData: Codable {
    let appsLinks, mainLinks: [AppsLinkElement]
    let legalLinks: [Link]
    let sitemapLinks: [SitemapLink]
    let socialLinks: [Link]
}

// MARK: - AppsLinkElement
struct AppsLinkElement: Codable {
    let isEnabled: Bool
    let text: String
    let link: String?
    let imageTemplateURL, id: String?
    let customProperties: [String]?
    let navLinks: [AppsLinkElement]?
    let target: Target?

    enum CodingKeys: String, CodingKey {
        case isEnabled, text, link
        case imageTemplateURL = "imageTemplateUrl"
        case id, customProperties, navLinks, target
    }
}

enum Target: String, Codable {
    case blank = "_blank"
}

// MARK: - Link
struct Link: Codable {
    let isEnabled: Bool
    let text: String
    let link: String
    let target: Target?
    let id: String
    let customProperties: [String]?
}

// MARK: - SitemapLink
struct SitemapLink: Codable {
    let isEnabled: Bool
    let text: String
    let navLinks: [Link]
}

// MARK: - HeaderData
struct HeaderData: Codable {
    let menuLinks, quickLinks, submenuLinks, languageList: [AppsLinkElement]
    let secondaryLinks, switchButton: [AppsLinkElement]
}

// MARK: - SearchResultsCtaConfiguration
struct SearchResultsCtaConfiguration: Codable {
    let defaultCta: DefaultCta
    let ctaResultOffset: Int
    let matchingWords: [String]
}

// MARK: - DefaultCta
struct DefaultCta: Codable {
    let title, description: String
    let meta: Meta
    let imageURLTemplate, contentID, translationID: String
    let extraData: ExtraData

    enum CodingKeys: String, CodingKey {
        case title, description, meta
        case imageURLTemplate = "imageUrlTemplate"
        case contentID = "contentId"
        case translationID = "translationId"
        case extraData
    }
}

// MARK: - ExtraData
struct ExtraData: Codable {
    let button: Button
}

// MARK: - Button
struct Button: Codable {
    let text: String
    let link: String
    let openLinkInNewTab: Bool
}

// MARK: - Meta
struct Meta: Codable {
    let slug: String
}

// MARK: - Variable
struct Variable: Codable {
    let type: TypeEnum
    let key: String
    let value: Value
}

enum TypeEnum: String, Codable {
    case keyValue = "keyValue"
    case uri = "uri"
}

enum Value: Codable {
    case bool(Bool)
    case integer(Int)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Bool.self) {
            self = .bool(x)
            return
        }
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        throw DecodingError.typeMismatch(Value.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for Value"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .bool(let x):
            try container.encode(x)
        case .integer(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
            return true
    }

    public var hashValue: Int {
            return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if !container.decodeNil() {
                    throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
            }
    }

    public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
            return nil
    }

    required init?(stringValue: String) {
            key = stringValue
    }

    var intValue: Int? {
            return nil
    }

    var stringValue: String {
            return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
            let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
            return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
            let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
            return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
            if let value = try? container.decode(Bool.self) {
                    return value
            }
            if let value = try? container.decode(Int64.self) {
                    return value
            }
            if let value = try? container.decode(Double.self) {
                    return value
            }
            if let value = try? container.decode(String.self) {
                    return value
            }
            if container.decodeNil() {
                    return JSONNull()
            }
            throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
            if let value = try? container.decode(Bool.self) {
                    return value
            }
            if let value = try? container.decode(Int64.self) {
                    return value
            }
            if let value = try? container.decode(Double.self) {
                    return value
            }
            if let value = try? container.decode(String.self) {
                    return value
            }
            if let value = try? container.decodeNil() {
                    if value {
                            return JSONNull()
                    }
            }
            if var container = try? container.nestedUnkeyedContainer() {
                    return try decodeArray(from: &container)
            }
            if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
                    return try decodeDictionary(from: &container)
            }
            throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
            if let value = try? container.decode(Bool.self, forKey: key) {
                    return value
            }
            if let value = try? container.decode(Int64.self, forKey: key) {
                    return value
            }
            if let value = try? container.decode(Double.self, forKey: key) {
                    return value
            }
            if let value = try? container.decode(String.self, forKey: key) {
                    return value
            }
            if let value = try? container.decodeNil(forKey: key) {
                    if value {
                            return JSONNull()
                    }
            }
            if var container = try? container.nestedUnkeyedContainer(forKey: key) {
                    return try decodeArray(from: &container)
            }
            if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
                    return try decodeDictionary(from: &container)
            }
            throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
            var arr: [Any] = []
            while !container.isAtEnd {
                    let value = try decode(from: &container)
                    arr.append(value)
            }
            return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
            var dict = [String: Any]()
            for key in container.allKeys {
                    let value = try decode(from: &container, forKey: key)
                    dict[key.stringValue] = value
            }
            return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
            for value in array {
                    if let value = value as? Bool {
                            try container.encode(value)
                    } else if let value = value as? Int64 {
                            try container.encode(value)
                    } else if let value = value as? Double {
                            try container.encode(value)
                    } else if let value = value as? String {
                            try container.encode(value)
                    } else if value is JSONNull {
                            try container.encodeNil()
                    } else if let value = value as? [Any] {
                            var container = container.nestedUnkeyedContainer()
                            try encode(to: &container, array: value)
                    } else if let value = value as? [String: Any] {
                            var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                            try encode(to: &container, dictionary: value)
                    } else {
                            throw encodingError(forValue: value, codingPath: container.codingPath)
                    }
            }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
            for (key, value) in dictionary {
                    let key = JSONCodingKey(stringValue: key)!
                    if let value = value as? Bool {
                            try container.encode(value, forKey: key)
                    } else if let value = value as? Int64 {
                            try container.encode(value, forKey: key)
                    } else if let value = value as? Double {
                            try container.encode(value, forKey: key)
                    } else if let value = value as? String {
                            try container.encode(value, forKey: key)
                    } else if value is JSONNull {
                            try container.encodeNil(forKey: key)
                    } else if let value = value as? [Any] {
                            var container = container.nestedUnkeyedContainer(forKey: key)
                            try encode(to: &container, array: value)
                    } else if let value = value as? [String: Any] {
                            var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                            try encode(to: &container, dictionary: value)
                    } else {
                            throw encodingError(forValue: value, codingPath: container.codingPath)
                    }
            }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
            if let value = value as? Bool {
                    try container.encode(value)
            } else if let value = value as? Int64 {
                    try container.encode(value)
            } else if let value = value as? Double {
                    try container.encode(value)
            } else if let value = value as? String {
                    try container.encode(value)
            } else if value is JSONNull {
                    try container.encodeNil()
            } else {
                    throw encodingError(forValue: value, codingPath: container.codingPath)
            }
    }

    public required init(from decoder: Decoder) throws {
            if var arrayContainer = try? decoder.unkeyedContainer() {
                    self.value = try JSONAny.decodeArray(from: &arrayContainer)
            } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
                    self.value = try JSONAny.decodeDictionary(from: &container)
            } else {
                    let container = try decoder.singleValueContainer()
                    self.value = try JSONAny.decode(from: container)
            }
    }

    public func encode(to encoder: Encoder) throws {
            if let arr = self.value as? [Any] {
                    var container = encoder.unkeyedContainer()
                    try JSONAny.encode(to: &container, array: arr)
            } else if let dict = self.value as? [String: Any] {
                    var container = encoder.container(keyedBy: JSONCodingKey.self)
                    try JSONAny.encode(to: &container, dictionary: dict)
            } else {
                    var container = encoder.singleValueContainer()
                    try JSONAny.encode(to: &container, value: self.value)
            }
    }
}
