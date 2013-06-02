module PagesHelper
  def years
    return [ ["2001", "2001"],
             ["2002", "2002"],
             ["2003", "2003"],
             ["2004", "2004"],
             ["2005", "2005"],
             ["2006", "2006"],
             ["2007", "2007"],
             ["2008", "2008"],
             ["2009", "2009"],
             ["2010", "2010"],
             ["2011", "2011"] ]
  end
  
  def key_codes
    return [ ["Gross Domestic Product (GDP)", "GDP_MP"],
             ["Real GDP", "RGDP_MP"],
             ["Per capita Real GDP", "PCRGDP_MP"],
             ["Total Personal Income", "TPI_MI"],
             ["Population", "POP_MI"],
             ["Per Capita personal income", "PCPI_MI"],
             ["Nonfarm personal income", "NFPI_MI"],
             ["Farm income", "FPI_MI"],
             ["Earnings by place of work", "EARN_MI"],
             ["Contributions for government social insurance", "CGSI_MI"],
             ["Net Earnings by place of residence", "NE_MI"],
             ["Dividends, interest, and rent", "DIR_MI"],
             ["Personal current  transfer receipts", "PCTR_MI"],
             ["Wage and salary disbursements", "WS_MI"],
             ["Supplements to wages and salaries", "SUPP_MI"],
             ["Proprietors Income", "PROP_MI"],
             ["Total Employment  (full and part time)", "EMP000_MI"],
             ["Wage and salary employment", "EMP100_MI"],
             ["Proprietors employment", "EMP200_MI"],
             ["Average earnings per job", "PJEARN_MI"],
             ["Average wage per job", "PJWS_MI"],
             ["Average compensation per job", "PJCOMP_MI"] ]
  end
    
  def msas
    return [ ["United States (Metropolitan Portion)", "00998"], 
             ["Abilene, TX (Metropolitan Statistical Area)", "10180"], 
             ["Akron, OH (Metropolitan Statistical Area)", "10420"], 
             ["Albany, GA (Metropolitan Statistical Area)", "10500"], 
             ["Albany-Schenectady-Troy, NY (Metropolitan Statistical Area)", "10580"], 
             ["Albuquerque, NM (Metropolitan Statistical Area)", "10740"], 
             ["Alexandria, LA (Metropolitan Statistical Area)", "10780"], 
             ["Allentown-Bethlehem-Easton, PA-NJ (Metropolitan Statistical Area)", "10900"], 
             ["Altoona, PA (Metropolitan Statistical Area)", "11020"], 
             ["Amarillo, TX (Metropolitan Statistical Area)", "11100"], 
             ["Ames, IA (Metropolitan Statistical Area)", "11180"], 
             ["Anchorage, AK (Metropolitan Statistical Area)", "11260"], 
             ["Anderson, IN (Metropolitan Statistical Area)", "11300"], 
             ["Anderson, SC (Metropolitan Statistical Area)", "11340"], 
             ["Ann Arbor, MI (Metropolitan Statistical Area)", "11460"], 
             ["Anniston-Oxford, AL (Metropolitan Statistical Area)", "11500"], 
             ["Appleton, WI (Metropolitan Statistical Area)", "11540"], 
             ["Asheville, NC (Metropolitan Statistical Area)", "11700"], 
             ["Athens-Clarke County, GA (Metropolitan Statistical Area)", "12020"], 
             ["Atlanta-Sandy Springs-Marietta, GA (Metropolitan Statistical Area)", "12060"], 
             ["Atlantic City-Hammonton, NJ (Metropolitan Statistical Area)", "12100"], 
             ["Auburn-Opelika, AL (Metropolitan Statistical Area)", "12220"], 
             ["Augusta-Richmond County, GA-SC (Metropolitan Statistical Area)", "12260"], 
             ["Austin-Round Rock-San Marcos, TX (Metropolitan Statistical Area)", "12420"], 
             ["Bakersfield-Delano, CA (Metropolitan Statistical Area)", "12540"], 
             ["Baltimore-Towson, MD (Metropolitan Statistical Area)", "12580"], 
             ["Bangor, ME (Metropolitan Statistical Area)", "12620"], 
             ["Barnstable Town, MA (Metropolitan Statistical Area)", "12700"], 
             ["Baton Rouge, LA (Metropolitan Statistical Area)", "12940"], 
             ["Battle Creek, MI (Metropolitan Statistical Area)", "12980"], 
             ["Bay City, MI (Metropolitan Statistical Area)", "13020"], 
             ["Beaumont-Port Arthur, TX (Metropolitan Statistical Area)", "13140"], 
             ["Bellingham, WA (Metropolitan Statistical Area)", "13380"], 
             ["Bend, OR (Metropolitan Statistical Area)", "13460"], 
             ["Billings, MT (Metropolitan Statistical Area)", "13740"], 
             ["Binghamton, NY (Metropolitan Statistical Area)", "13780"], 
             ["Birmingham-Hoover, AL (Metropolitan Statistical Area)", "13820"], 
             ["Bismarck, ND (Metropolitan Statistical Area)", "13900"], 
             ["Blacksburg-Christiansburg-Radford, VA (Metropolitan Statistical Area)", "13980"], 
             ["Bloomington, IN (Metropolitan Statistical Area)", "14020"], 
             ["Bloomington-Normal, IL (Metropolitan Statistical Area)", "14060"], 
             ["Boise City-Nampa, ID (Metropolitan Statistical Area)", "14260"], 
             ["Boston-Cambridge-Quincy, MA-NH (Metropolitan Statistical Area)", "14460"], 
             ["Boulder, CO (Metropolitan Statistical Area)", "14500"], 
             ["Bowling Green, KY (Metropolitan Statistical Area)", "14540"], 
             ["Bremerton-Silverdale, WA (Metropolitan Statistical Area)", "14740"], 
             ["Bridgeport-Stamford-Norwalk, CT (Metropolitan Statistical Area)", "14860"], 
             ["Brownsville-Harlingen, TX (Metropolitan Statistical Area)", "15180"], 
             ["Brunswick, GA (Metropolitan Statistical Area)", "15260"], 
             ["Buffalo-Niagara Falls, NY (Metropolitan Statistical Area)", "15380"], 
             ["Burlington, NC (Metropolitan Statistical Area)", "15500"], 
             ["Burlington-South Burlington, VT (Metropolitan Statistical Area)", "15540"], 
             ["Canton-Massillon, OH (Metropolitan Statistical Area)", "15940"], 
             ["Cape Coral-Fort Myers, FL (Metropolitan Statistical Area)", "15980"], 
             ["Cape Girardeau-Jackson, MO-IL (Metropolitan Statistical Area)", "16020"], 
             ["Carson City, NV (Metropolitan Statistical Area)", "16180"], 
             ["Casper, WY (Metropolitan Statistical Area)", "16220"], 
             ["Cedar Rapids, IA (Metropolitan Statistical Area)", "16300"], 
             ["Champaign-Urbana, IL (Metropolitan Statistical Area)", "16580"], 
             ["Charleston, WV (Metropolitan Statistical Area)", "16620"], 
             ["Charleston-North Charleston-Summerville, SC (Metropolitan Statistical Area)", "16700"], 
             ["Charlotte-Gastonia-Rock Hill, NC-SC (Metropolitan Statistical Area)", "16740"], 
             ["Charlottesville, VA (Metropolitan Statistical Area)", "16820"], 
             ["Chattanooga, TN-GA (Metropolitan Statistical Area)", "16860"], 
             ["Cheyenne, WY (Metropolitan Statistical Area)", "16940"], 
             ["Chicago-Joliet-Naperville, IL-IN-WI (Metropolitan Statistical Area)", "16980"], 
             ["Chico, CA (Metropolitan Statistical Area)", "17020"], 
             ["Cincinnati-Middletown, OH-KY-IN (Metropolitan Statistical Area)", "17140"], 
             ["Clarksville, TN-KY (Metropolitan Statistical Area)", "17300"], 
             ["Cleveland, TN (Metropolitan Statistical Area)", "17420"], 
             ["Cleveland-Elyria-Mentor, OH (Metropolitan Statistical Area)", "17460"], 
             ["Coeur d'Alene, ID (Metropolitan Statistical Area)", "17660"], 
             ["College Station-Bryan, TX (Metropolitan Statistical Area)", "17780"], 
             ["Colorado Springs, CO (Metropolitan Statistical Area)", "17820"], 
             ["Columbia, MO (Metropolitan Statistical Area)", "17860"], 
             ["Columbia, SC (Metropolitan Statistical Area)", "17900"], 
             ["Columbus, GA-AL (Metropolitan Statistical Area)", "17980"], 
             ["Columbus, IN (Metropolitan Statistical Area)", "18020"], 
             ["Columbus, OH (Metropolitan Statistical Area)", "18140"], 
             ["Corpus Christi, TX (Metropolitan Statistical Area)", "18580"], 
             ["Corvallis, OR (Metropolitan Statistical Area)", "18700"], 
             ["Crestview-Fort Walton Beach-Destin, FL (Metropolitan Statistical Area)", "18880"], 
             ["Cumberland, MD-WV (Metropolitan Statistical Area)", "19060"], 
             ["Dallas-Fort Worth-Arlington, TX (Metropolitan Statistical Area)", "19100"], 
             ["Dalton, GA (Metropolitan Statistical Area)", "19140"], 
             ["Danville, IL (Metropolitan Statistical Area)", "19180"], 
             ["Danville, VA (Metropolitan Statistical Area)", "19260"], 
             ["Davenport-Moline-Rock Island, IA-IL (Metropolitan Statistical Area)", "19340"], 
             ["Dayton, OH (Metropolitan Statistical Area)", "19380"], 
             ["Decatur, AL (Metropolitan Statistical Area)", "19460"], 
             ["Decatur, IL (Metropolitan Statistical Area)", "19500"], 
             ["Deltona-Daytona Beach-Ormond Beach, FL (Metropolitan Statistical Area)", "19660"], 
             ["Denver-Aurora-Broomfield, CO (Metropolitan Statistical Area)", "19740"], 
             ["Des Moines-West Des Moines, IA (Metropolitan Statistical Area)", "19780"], 
             ["Detroit-Warren-Livonia, MI (Metropolitan Statistical Area)", "19820"], 
             ["Dothan, AL (Metropolitan Statistical Area)", "20020"], 
             ["Dover, DE (Metropolitan Statistical Area)", "20100"], 
             ["Dubuque, IA (Metropolitan Statistical Area)", "20220"], 
             ["Duluth, MN-WI (Metropolitan Statistical Area)", "20260"], 
             ["Durham-Chapel Hill, NC (Metropolitan Statistical Area)", "20500"], 
             ["Eau Claire, WI (Metropolitan Statistical Area)", "20740"], 
             ["El Centro, CA (Metropolitan Statistical Area)", "20940"], 
             ["Elizabethtown, KY (Metropolitan Statistical Area)", "21060"], 
             ["Elkhart-Goshen, IN (Metropolitan Statistical Area)", "21140"], 
             ["Elmira, NY (Metropolitan Statistical Area)", "21300"], 
             ["El Paso, TX (Metropolitan Statistical Area)", "21340"], 
             ["Erie, PA (Metropolitan Statistical Area)", "21500"], 
             ["Eugene-Springfield, OR (Metropolitan Statistical Area)", "21660"], 
             ["Evansville, IN-KY (Metropolitan Statistical Area)", "21780"], 
             ["Fairbanks, AK (Metropolitan Statistical Area)", "21820"], 
             ["Fargo, ND-MN (Metropolitan Statistical Area)", "22020"], 
             ["Farmington, NM (Metropolitan Statistical Area)", "22140"], 
             ["Fayetteville, NC (Metropolitan Statistical Area)", "22180"], 
             ["Fayetteville-Springdale-Rogers, AR-MO (Metropolitan Statistical Area)", "22220"], 
             ["Flagstaff, AZ (Metropolitan Statistical Area)", "22380"], 
             ["Flint, MI (Metropolitan Statistical Area)", "22420"], 
             ["Florence, SC (Metropolitan Statistical Area)", "22500"], 
             ["Florence-Muscle Shoals, AL (Metropolitan Statistical Area)", "22520"], 
             ["Fond du Lac, WI (Metropolitan Statistical Area)", "22540"], 
             ["Fort Collins-Loveland, CO (Metropolitan Statistical Area)", "22660"], 
             ["Fort Smith, AR-OK (Metropolitan Statistical Area)", "22900"], 
             ["Fort Wayne, IN (Metropolitan Statistical Area)", "23060"], 
             ["Fresno, CA (Metropolitan Statistical Area)", "23420"], 
             ["Gadsden, AL (Metropolitan Statistical Area)", "23460"], 
             ["Gainesville, FL (Metropolitan Statistical Area)", "23540"], 
             ["Gainesville, GA (Metropolitan Statistical Area)", "23580"], 
             ["Glens Falls, NY (Metropolitan Statistical Area)", "24020"], 
             ["Goldsboro, NC (Metropolitan Statistical Area)", "24140"], 
             ["Grand Forks, ND-MN (Metropolitan Statistical Area)", "24220"], 
             ["Grand Junction, CO (Metropolitan Statistical Area)", "24300"], 
             ["Grand Rapids-Wyoming, MI (Metropolitan Statistical Area)", "24340"], 
             ["Great Falls, MT (Metropolitan Statistical Area)", "24500"], 
             ["Greeley, CO (Metropolitan Statistical Area)", "24540"], 
             ["Green Bay, WI (Metropolitan Statistical Area)", "24580"], 
             ["Greensboro-High Point, NC (Metropolitan Statistical Area)", "24660"], 
             ["Greenville, NC (Metropolitan Statistical Area)", "24780"], 
             ["Greenville-Mauldin-Easley, SC (Metropolitan Statistical Area)", "24860"], 
             ["Gulfport-Biloxi, MS (Metropolitan Statistical Area)", "25060"], 
             ["Hagerstown-Martinsburg, MD-WV (Metropolitan Statistical Area)", "25180"], 
             ["Hanford-Corcoran, CA (Metropolitan Statistical Area)", "25260"], 
             ["Harrisburg-Carlisle, PA (Metropolitan Statistical Area)", "25420"], 
             ["Harrisonburg, VA (Metropolitan Statistical Area)", "25500"], 
             ["Hartford-West Hartford-East Hartford, CT (Metropolitan Statistical Area)", "25540"], 
             ["Hattiesburg, MS (Metropolitan Statistical Area)", "25620"], 
             ["Hickory-Lenoir-Morganton, NC (Metropolitan Statistical Area)", "25860"], 
             ["Hinesville-Fort Stewart, GA (Metropolitan Statistical Area)", "25980"], 
             ["Holland-Grand Haven, MI (Metropolitan Statistical Area)", "26100"], 
             ["Honolulu, HI (Metropolitan Statistical Area)", "26180"], 
             ["Hot Springs, AR (Metropolitan Statistical Area)", "26300"], 
             ["Houma-Bayou Cane-Thibodaux, LA (Metropolitan Statistical Area)", "26380"], 
             ["Houston-Sugar Land-Baytown, TX (Metropolitan Statistical Area)", "26420"], 
             ["Huntington-Ashland, WV-KY-OH (Metropolitan Statistical Area)", "26580"], 
             ["Huntsville, AL (Metropolitan Statistical Area)", "26620"], 
             ["Idaho Falls, ID (Metropolitan Statistical Area)", "26820"], 
             ["Indianapolis-Carmel, IN (Metropolitan Statistical Area)", "26900"], 
             ["Iowa City, IA (Metropolitan Statistical Area)", "26980"], 
             ["Ithaca, NY (Metropolitan Statistical Area)", "27060"], 
             ["Jackson, MI (Metropolitan Statistical Area)", "27100"], 
             ["Jackson, MS (Metropolitan Statistical Area)", "27140"], 
             ["Jackson, TN (Metropolitan Statistical Area)", "27180"], 
             ["Jacksonville, FL (Metropolitan Statistical Area)", "27260"], 
             ["Jacksonville, NC (Metropolitan Statistical Area)", "27340"], 
             ["Janesville, WI (Metropolitan Statistical Area)", "27500"], 
             ["Jefferson City, MO (Metropolitan Statistical Area)", "27620"], 
             ["Johnson City, TN (Metropolitan Statistical Area)", "27740"], 
             ["Johnstown, PA (Metropolitan Statistical Area)", "27780"], 
             ["Jonesboro, AR (Metropolitan Statistical Area)", "27860"], 
             ["Joplin, MO (Metropolitan Statistical Area)", "27900"], 
             ["Kalamazoo-Portage, MI (Metropolitan Statistical Area)", "28020"], 
             ["Kankakee-Bradley, IL (Metropolitan Statistical Area)", "28100"], 
             ["Kansas City, MO-KS (Metropolitan Statistical Area)", "28140"], 
             ["Kennewick-Pasco-Richland, WA (Metropolitan Statistical Area)", "28420"], 
             ["Killeen-Temple-Fort Hood, TX (Metropolitan Statistical Area)", "28660"], 
             ["Kingsport-Bristol-Bristol, TN-VA (Metropolitan Statistical Area)", "28700"], 
             ["Kingston, NY (Metropolitan Statistical Area)", "28740"], 
             ["Knoxville, TN (Metropolitan Statistical Area)", "28940"], 
             ["Kokomo, IN (Metropolitan Statistical Area)", "29020"], 
             ["La Crosse, WI-MN (Metropolitan Statistical Area)", "29100"], 
             ["Lafayette, IN (Metropolitan Statistical Area)", "29140"], 
             ["Lafayette, LA (Metropolitan Statistical Area)", "29180"], 
             ["Lake Charles, LA (Metropolitan Statistical Area)", "29340"], 
             ["Lake Havasu City-Kingman, AZ (Metropolitan Statistical Area)", "29420"], 
             ["Lakeland-Winter Haven, FL (Metropolitan Statistical Area)", "29460"], 
             ["Lancaster, PA (Metropolitan Statistical Area)", "29540"], 
             ["Lansing-East Lansing, MI (Metropolitan Statistical Area)", "29620"], 
             ["Laredo, TX (Metropolitan Statistical Area)", "29700"], 
             ["Las Cruces, NM (Metropolitan Statistical Area)", "29740"], 
             ["Las Vegas-Paradise, NV (Metropolitan Statistical Area)", "29820"], 
             ["Lawrence, KS (Metropolitan Statistical Area)", "29940"], 
             ["Lawton, OK (Metropolitan Statistical Area)", "30020"], 
             ["Lebanon, PA (Metropolitan Statistical Area)", "30140"], 
             ["Lewiston, ID-WA (Metropolitan Statistical Area)", "30300"], 
             ["Lewiston-Auburn, ME (Metropolitan Statistical Area)", "30340"], 
             ["Lexington-Fayette, KY (Metropolitan Statistical Area)", "30460"], 
             ["Lima, OH (Metropolitan Statistical Area)", "30620"], 
             ["Lincoln, NE (Metropolitan Statistical Area)", "30700"], 
             ["Little Rock-North Little Rock-Conway, AR (Metropolitan Statistical Area)", "30780"], 
             ["Logan, UT-ID (Metropolitan Statistical Area)", "30860"], 
             ["Longview, TX (Metropolitan Statistical Area)", "30980"], 
             ["Longview, WA (Metropolitan Statistical Area)", "31020"], 
             ["Los Angeles-Long Beach-Santa Ana, CA (Metropolitan Statistical Area)", "31100"], 
             ["Louisville-Jefferson County, KY-IN (Metropolitan Statistical Area)", "31140"], 
             ["Lubbock, TX (Metropolitan Statistical Area)", "31180"], 
             ["Lynchburg, VA (Metropolitan Statistical Area)", "31340"], 
             ["Macon, GA (Metropolitan Statistical Area)", "31420"], 
             ["Madera-Chowchilla, CA (Metropolitan Statistical Area)", "31460"], 
             ["Madison, WI (Metropolitan Statistical Area)", "31540"], 
             ["Manchester-Nashua, NH (Metropolitan Statistical Area)", "31700"], 
             ["Manhattan, KS (Metropolitan Statistical Area)", "31740"], 
             ["Mankato-North Mankato, MN (Metropolitan Statistical Area)", "31860"], 
             ["Mansfield, OH (Metropolitan Statistical Area)", "31900"], 
             ["McAllen-Edinburg-Mission, TX (Metropolitan Statistical Area)", "32580"], 
             ["Medford, OR (Metropolitan Statistical Area)", "32780"], 
             ["Memphis, TN-MS-AR (Metropolitan Statistical Area)", "32820"], 
             ["Merced, CA (Metropolitan Statistical Area)", "32900"], 
             ["Miami-Fort Lauderdale-Pompano Beach, FL (Metropolitan Statistical Area)", "33100"], 
             ["Michigan City-La Porte, IN (Metropolitan Statistical Area)", "33140"], 
             ["Midland, TX (Metropolitan Statistical Area)", "33260"], 
             ["Milwaukee-Waukesha-West Allis, WI (Metropolitan Statistical Area)", "33340"], 
             ["Minneapolis-St. Paul-Bloomington, MN-WI (Metropolitan Statistical Area)", "33460"], 
             ["Missoula, MT (Metropolitan Statistical Area)", "33540"], 
             ["Mobile, AL (Metropolitan Statistical Area)", "33660"], 
             ["Modesto, CA (Metropolitan Statistical Area)", "33700"], 
             ["Monroe, LA (Metropolitan Statistical Area)", "33740"], 
             ["Monroe, MI (Metropolitan Statistical Area)", "33780"], 
             ["Montgomery, AL (Metropolitan Statistical Area)", "33860"], 
             ["Morgantown, WV (Metropolitan Statistical Area)", "34060"], 
             ["Morristown, TN (Metropolitan Statistical Area)", "34100"], 
             ["Mount Vernon-Anacortes, WA (Metropolitan Statistical Area)", "34580"], 
             ["Muncie, IN (Metropolitan Statistical Area)", "34620"], 
             ["Muskegon-Norton Shores, MI (Metropolitan Statistical Area)", "34740"], 
             ["Myrtle Beach-North Myrtle Beach-Conway, SC (Metropolitan Statistical Area)", "34820"], 
             ["Napa, CA (Metropolitan Statistical Area)", "34900"], 
             ["Naples-Marco Island, FL (Metropolitan Statistical Area)", "34940"], 
             ["Nashville-Davidson-Murfreesboro-Franklin, TN (Metropolitan Statistical Area)", "34980"], 
             ["New Haven-Milford, CT (Metropolitan Statistical Area)", "35300"], 
             ["New Orleans-Metairie-Kenner, LA (Metropolitan Statistical Area)", "35380"], 
             ["New York-Northern New Jersey-Long Island, NY-NJ-PA (Metropolitan Statistical Area)", "35620"], 
             ["Niles-Benton Harbor, MI (Metropolitan Statistical Area)", "35660"], 
             ["North Port-Bradenton-Sarasota, FL (Metropolitan Statistical Area)", "35840"], 
             ["Norwich-New London, CT (Metropolitan Statistical Area)", "35980"], 
             ["Ocala, FL (Metropolitan Statistical Area)", "36100"], 
             ["Ocean City, NJ (Metropolitan Statistical Area)", "36140"], 
             ["Odessa, TX (Metropolitan Statistical Area)", "36220"], 
             ["Ogden-Clearfield, UT (Metropolitan Statistical Area)", "36260"], 
             ["Oklahoma City, OK (Metropolitan Statistical Area)", "36420"], 
             ["Olympia, WA (Metropolitan Statistical Area)", "36500"], 
             ["Omaha-Council Bluffs, NE-IA (Metropolitan Statistical Area)", "36540"], 
             ["Orlando-Kissimmee-Sanford, FL (Metropolitan Statistical Area)", "36740"], 
             ["Oshkosh-Neenah, WI (Metropolitan Statistical Area)", "36780"], 
             ["Owensboro, KY (Metropolitan Statistical Area)", "36980"], 
             ["Oxnard-Thousand Oaks-Ventura, CA (Metropolitan Statistical Area)", "37100"], 
             ["Palm Bay-Melbourne-Titusville, FL (Metropolitan Statistical Area)", "37340"], 
             ["Palm Coast, FL (Metropolitan Statistical Area)", "37380"], 
             ["Panama City-Lynn Haven-Panama City Beach, FL (Metropolitan Statistical Area)", "37460"], 
             ["Parkersburg-Marietta-Vienna, WV-OH (Metropolitan Statistical Area)", "37620"], 
             ["Pascagoula, MS (Metropolitan Statistical Area)", "37700"], 
             ["Pensacola-Ferry Pass-Brent, FL (Metropolitan Statistical Area)", "37860"], 
             ["Peoria, IL (Metropolitan Statistical Area)", "37900"], 
             ["Philadelphia-Camden-Wilmington, PA-NJ-DE-MD (Metropolitan Statistical Area)", "37980"], 
             ["Phoenix-Mesa-Glendale, AZ (Metropolitan Statistical Area)", "38060"], 
             ["Pine Bluff, AR (Metropolitan Statistical Area)", "38220"], 
             ["Pittsburgh, PA (Metropolitan Statistical Area)", "38300"], 
             ["Pittsfield, MA (Metropolitan Statistical Area)", "38340"], 
             ["Pocatello, ID (Metropolitan Statistical Area)", "38540"], 
             ["Portland-South Portland-Biddeford, ME (Metropolitan Statistical Area)", "38860"], 
             ["Portland-Vancouver-Hillsboro, OR-WA (Metropolitan Statistical Area)", "38900"], 
             ["Port St. Lucie, FL (Metropolitan Statistical Area)", "38940"], 
             ["Poughkeepsie-Newburgh-Middletown, NY (Metropolitan Statistical Area)", "39100"], 
             ["Prescott, AZ (Metropolitan Statistical Area)", "39140"], 
             ["Providence-New Bedford-Fall River, RI-MA (Metropolitan Statistical Area)", "39300"], 
             ["Provo-Orem, UT (Metropolitan Statistical Area)", "39340"], 
             ["Pueblo, CO (Metropolitan Statistical Area)", "39380"], 
             ["Punta Gorda, FL (Metropolitan Statistical Area)", "39460"], 
             ["Racine, WI (Metropolitan Statistical Area)", "39540"], 
             ["Raleigh-Cary, NC (Metropolitan Statistical Area)", "39580"], 
             ["Rapid City, SD (Metropolitan Statistical Area)", "39660"], 
             ["Reading, PA (Metropolitan Statistical Area)", "39740"], 
             ["Redding, CA (Metropolitan Statistical Area)", "39820"], 
             ["Reno-Sparks, NV (Metropolitan Statistical Area)", "39900"], 
             ["Richmond, VA (Metropolitan Statistical Area)", "40060"], 
             ["Riverside-San Bernardino-Ontario, CA (Metropolitan Statistical Area)", "40140"], 
             ["Roanoke, VA (Metropolitan Statistical Area)", "40220"], 
             ["Rochester, MN (Metropolitan Statistical Area)", "40340"], 
             ["Rochester, NY (Metropolitan Statistical Area)", "40380"], 
             ["Rockford, IL (Metropolitan Statistical Area)", "40420"], 
             ["Rocky Mount, NC (Metropolitan Statistical Area)", "40580"], 
             ["Rome, GA (Metropolitan Statistical Area)", "40660"], 
             ["Sacramento-Arden-Arcade-Roseville, CA (Metropolitan Statistical Area)", "40900"], 
             ["Saginaw-Saginaw Township North, MI (Metropolitan Statistical Area)", "40980"], 
             ["St. Cloud, MN (Metropolitan Statistical Area)", "41060"], 
             ["St. George, UT (Metropolitan Statistical Area)", "41100"], 
             ["St. Joseph, MO-KS (Metropolitan Statistical Area)", "41140"], 
             ["St. Louis, MO-IL (Metropolitan Statistical Area)", "41180"], 
             ["Salem, OR (Metropolitan Statistical Area)", "41420"], 
             ["Salinas, CA (Metropolitan Statistical Area)", "41500"], 
             ["Salisbury, MD (Metropolitan Statistical Area)", "41540"], 
             ["Salt Lake City, UT (Metropolitan Statistical Area)", "41620"], 
             ["San Angelo, TX (Metropolitan Statistical Area)", "41660"], 
             ["San Antonio-New Braunfels, TX (Metropolitan Statistical Area)", "41700"], 
             ["San Diego-Carlsbad-San Marcos, CA (Metropolitan Statistical Area)", "41740"], 
             ["Sandusky, OH (Metropolitan Statistical Area)", "41780"], 
             ["San Francisco-Oakland-Fremont, CA (Metropolitan Statistical Area)", "41860"], 
             ["San Jose-Sunnyvale-Santa Clara, CA (Metropolitan Statistical Area)", "41940"], 
             ["San Luis Obispo-Paso Robles, CA (Metropolitan Statistical Area)", "42020"], 
             ["Santa Barbara-Santa Maria-Goleta, CA (Metropolitan Statistical Area)", "42060"], 
             ["Santa Cruz-Watsonville, CA (Metropolitan Statistical Area)", "42100"], 
             ["Santa Fe, NM (Metropolitan Statistical Area)", "42140"], 
             ["Santa Rosa-Petaluma, CA (Metropolitan Statistical Area)", "42220"], 
             ["Savannah, GA (Metropolitan Statistical Area)", "42340"], 
             ["Scranton-Wilkes-Barre, PA (Metropolitan Statistical Area)", "42540"], 
             ["Seattle-Tacoma-Bellevue, WA (Metropolitan Statistical Area)", "42660"], 
             ["Sebastian-Vero Beach, FL (Metropolitan Statistical Area)", "42680"], 
             ["Sheboygan, WI (Metropolitan Statistical Area)", "43100"], 
             ["Sherman-Denison, TX (Metropolitan Statistical Area)", "43300"], 
             ["Shreveport-Bossier City, LA (Metropolitan Statistical Area)", "43340"], 
             ["Sioux City, IA-NE-SD (Metropolitan Statistical Area)", "43580"], 
             ["Sioux Falls, SD (Metropolitan Statistical Area)", "43620"], 
             ["South Bend-Mishawaka, IN-MI (Metropolitan Statistical Area)", "43780"], 
             ["Spartanburg, SC (Metropolitan Statistical Area)", "43900"], 
             ["Spokane, WA (Metropolitan Statistical Area)", "44060"], 
             ["Springfield, IL (Metropolitan Statistical Area)", "44100"], 
             ["Springfield, MA (Metropolitan Statistical Area)", "44140"], 
             ["Springfield, MO (Metropolitan Statistical Area)", "44180"], 
             ["Springfield, OH (Metropolitan Statistical Area)", "44220"], 
             ["State College, PA (Metropolitan Statistical Area)", "44300"], 
             ["Steubenville-Weirton, OH-WV (Metropolitan Statistical Area)", "44600"], 
             ["Stockton, CA (Metropolitan Statistical Area)", "44700"], 
             ["Sumter, SC (Metropolitan Statistical Area)", "44940"], 
             ["Syracuse, NY (Metropolitan Statistical Area)", "45060"], 
             ["Tallahassee, FL (Metropolitan Statistical Area)", "45220"], 
             ["Tampa-St. Petersburg-Clearwater, FL (Metropolitan Statistical Area)", "45300"], 
             ["Terre Haute, IN (Metropolitan Statistical Area)", "45460"], 
             ["Texarkana, TX-Texarkana, AR (Metropolitan Statistical Area)", "45500"], 
             ["Toledo, OH (Metropolitan Statistical Area)", "45780"], 
             ["Topeka, KS (Metropolitan Statistical Area)", "45820"], 
             ["Trenton-Ewing, NJ (Metropolitan Statistical Area)", "45940"], 
             ["Tucson, AZ (Metropolitan Statistical Area)", "46060"], 
             ["Tulsa, OK (Metropolitan Statistical Area)", "46140"], 
             ["Tuscaloosa, AL (Metropolitan Statistical Area)", "46220"], 
             ["Tyler, TX (Metropolitan Statistical Area)", "46340"], 
             ["Utica-Rome, NY (Metropolitan Statistical Area)", "46540"], 
             ["Valdosta, GA (Metropolitan Statistical Area)", "46660"], 
             ["Vallejo-Fairfield, CA (Metropolitan Statistical Area)", "46700"], 
             ["Victoria, TX (Metropolitan Statistical Area)", "47020"], 
             ["Vineland-Millville-Bridgeton, NJ (Metropolitan Statistical Area)", "47220"], 
             ["Virginia Beach-Norfolk-Newport News, VA-NC (Metropolitan Statistical Area)", "47260"], 
             ["Visalia-Porterville, CA (Metropolitan Statistical Area)", "47300"], 
             ["Waco, TX (Metropolitan Statistical Area)", "47380"], 
             ["Warner Robins, GA (Metropolitan Statistical Area)", "47580"], 
             ["Washington-Arlington-Alexandria, DC-VA-MD-WV (Metropolitan Statistical Area)", "47900"], 
             ["Waterloo-Cedar Falls, IA (Metropolitan Statistical Area)", "47940"], 
             ["Wausau, WI (Metropolitan Statistical Area)", "48140"], 
             ["Wenatchee-East Wenatchee, WA (Metropolitan Statistical Area)", "48300"], 
             ["Wheeling, WV-OH (Metropolitan Statistical Area)", "48540"], 
             ["Wichita, KS (Metropolitan Statistical Area)", "48620"], 
             ["Wichita Falls, TX (Metropolitan Statistical Area)", "48660"], 
             ["Williamsport, PA (Metropolitan Statistical Area)", "48700"], 
             ["Wilmington, NC (Metropolitan Statistical Area)", "48900"], 
             ["Winchester, VA-WV (Metropolitan Statistical Area)", "49020"], 
             ["Winston-Salem, NC (Metropolitan Statistical Area)", "49180"], 
             ["Worcester, MA (Metropolitan Statistical Area)", "49340"], 
             ["Yakima, WA (Metropolitan Statistical Area)", "49420"], 
             ["York-Hanover, PA (Metropolitan Statistical Area)", "49620"], 
             ["Youngstown-Warren-Boardman, OH-PA (Metropolitan Statistical Area)", "49660"], 
             ["Yuba City, CA (Metropolitan Statistical Area)", "49700"], 
             ["Yuma, AZ (Metropolitan Statistical Area)", "49740"] ]
  end  
end