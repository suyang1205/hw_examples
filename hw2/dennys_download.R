# Load Required packages
source("check_packages.R")
check_packages(c("httr"))

dir.create("dennys/", showWarnings = FALSE)

# Maybe add another location?

dc_url = "http://hosted.where2getit.com/dennys/ajax?&xml_request=%3Crequest%3E%3Cappkey%3E8D6F0428-F3A9-11DD-8BF2-659237ABAA09%3C%2Fappkey%3E%3Cformdata+id%3D%22locatorsearch%22%3E%3Cdataview%3Estore_default%3C%2Fdataview%3E%3Climit%3E3000%3C%2Flimit%3E%3Cgeolocs%3E%3Cgeoloc%3E%3Caddressline%3EWashington,%20DC%3C%2Faddressline%3E%3Clongitude%3E%3C%2Flongitude%3E%3Clatitude%3E%3C%2Flatitude%3E%3C%2Fgeoloc%3E%3C%2Fgeolocs%3E%3Csearchradius%3E3000|10000%3C%2Fsearchradius%3E%3C%2Fformdata%3E%3C%2Frequest%3E"
slc_url= "http://hosted.where2getit.com/dennys/ajax?&xml_request=%3Crequest%3E%3Cappkey%3E8D6F0428-F3A9-11DD-8BF2-659237ABAA09%3C%2Fappkey%3E%3Cformdata+id%3D%22locatorsearch%22%3E%3Cdataview%3Estore_default%3C%2Fdataview%3E%3Climit%3E3000%3C%2Flimit%3E%3Cgeolocs%3E%3Cgeoloc%3E%3Caddressline%3ESalt%20Lake%20City,%20UT%3C%2Faddressline%3E%3Clongitude%3E%3C%2Flongitude%3E%3Clatitude%3E%3C%2Flatitude%3E%3C%2Fgeoloc%3E%3C%2Fgeolocs%3E%3Csearchradius%3E3000|10000%3C%2Fsearchradius%3E%3C%2Fformdata%3E%3C%2Frequest%3E"

dc = content(GET(dc_url), as="text")
slc= content(GET(slc_url), as="text")

write(dc, file="dennys/dc.html")
write(slc, file="dennys/slc.html")