# Santoku Geo PDF

PDF georeferencing data extraction for Lua.

**Note:** this is experimental and not production-ready.**

## Module Reference

### `santoku.geo.pdf`

Extracts georeferencing information from PDF files.

| Function | Arguments | Returns | Description |
|----------|-----------|---------|-------------|
| `extract_pdf_georefs` | `data` | `table/nil, error` | Extracts georeferencing data from PDF content |

#### Return Value Structure

On success, returns a table containing:
- `width`: Page width in inches
- `height`: Page height in inches
- `boxes`: Array of bounding boxes with geographic coordinates

Each box in the `boxes` array contains 4 points with:
- `x`, `y`: PDF coordinates
- `lat`, `lon`: Geographic coordinates (latitude/longitude)

#### Error Conditions

Returns `nil` and an error message for:
- Multiple pages found (multi-page PDFs not supported)
- No page found
- Missing MediaBox
- Missing viewport (VP)
- No bounding boxes found
- Missing measure references
- Missing or invalid FlateDecode streams
- Missing GPTS coordinate data

## Known Limitations

- Only handles single-page PDFs
- Does not account for map projections
- Cannot handle bounds and LPTS less than BBox maximum
- Relies on specific object encoding (direct vs indirect)
- No caching of deflated streams
- Requires specific PDF structure with Type/Page, MediaBox, VP, BBox, Measure, and GPTS

## License

MIT License

Copyright 2025 Matthew Brooks

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
