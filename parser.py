#!/usr/bin/env python3

from sanic import Sanic
from sanic.response import html

#https://stackoverflow.com/a/16699042/263449
import lxml.etree as ET

BASE_XML = "test.xml"
BASE_XSLT = "test.xslt"

app = Sanic()

@app.route("/")
async def test(request):
    # return json({"hello": "world"})
    # Render https://www.w3schools.com/xml/xsl_intro.asp
    if "xml" in request.args:
        xml_file = request.args['xml']
    else:
        xml_file = BASE_XML

    if "xslt" in request.args:
        xslt_file = request.args['xslt']
    else:
        xslt_file = BASE_XSLT

    dom = ET.parse(xml_file)
    xslt = ET.parse(xslt_file)
    transform = ET.XSLT(xslt)
    newdom = transform(dom)
    return html(newdom)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)