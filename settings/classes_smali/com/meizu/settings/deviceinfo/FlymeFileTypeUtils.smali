.class public Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;
.super Ljava/lang/Object;
.source "FlymeFileTypeUtils.java"


# static fields
.field private static mFileHeadTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mFileTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileTypeMap:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileHeadTypeMap:Ljava/util/Map;

    const/4 v0, 0x0

    const-string v1, "MP3"

    .line 191
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "MP2"

    .line 192
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "MPA"

    .line 193
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "M4A"

    .line 194
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "WAV"

    .line 195
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "AMR"

    .line 196
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "AWB"

    .line 197
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "WMA"

    .line 198
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "RA"

    .line 199
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "RAM"

    .line 200
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "OGG"

    .line 201
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "AAC"

    .line 202
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "MKA"

    .line 203
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "APE"

    .line 204
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "FLAC"

    .line 205
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "FLA"

    .line 206
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "CUS"

    .line 207
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "DTS"

    .line 208
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "AC3"

    .line 209
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "MID"

    .line 210
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "MIDI"

    .line 211
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "XMF"

    .line 212
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "RTTTL"

    .line 213
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "SMF"

    .line 214
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "IMY"

    .line 215
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "OTA"

    .line 216
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "MXMF"

    .line 217
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "M3U"

    .line 218
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "PLS"

    .line 219
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "M3U8"

    .line 220
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "CUE"

    .line 221
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const/4 v0, 0x1

    const-string v1, "MPEG"

    .line 223
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "MPG"

    .line 224
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "MP4"

    .line 225
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "M4V"

    .line 226
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "MOV"

    .line 227
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "3GP"

    .line 228
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "3GPP"

    .line 229
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "3G2"

    .line 230
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "3GPP2"

    .line 231
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "MKV"

    .line 232
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "WEBM"

    .line 233
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "TS"

    .line 234
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "VOB"

    .line 235
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "AVI"

    .line 236
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "WMV"

    .line 237
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "ASF"

    .line 238
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "RM"

    .line 239
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "RMVB"

    .line 240
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "RV"

    .line 241
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "FLV"

    .line 242
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v1, "F4V"

    .line 243
    invoke-static {v1, v0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const/4 v1, 0x2

    .line 245
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "JPG"

    invoke-static {v3, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v3, "JPEG"

    .line 246
    invoke-static {v3, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v3, "GIF"

    .line 247
    invoke-static {v3, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v3, "PNG"

    .line 248
    invoke-static {v3, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v3, "BMP"

    .line 249
    invoke-static {v3, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v3, "WBMP"

    .line 250
    invoke-static {v3, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v3, "WEBP"

    .line 251
    invoke-static {v3, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v3, "TIF"

    .line 252
    invoke-static {v3, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v3, "TIFF"

    .line 253
    invoke-static {v3, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const/4 v1, 0x3

    const-string v3, "FL"

    .line 255
    invoke-static {v3, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v3, "APK"

    .line 256
    invoke-static {v3, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "ODB"

    .line 257
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "ODF"

    .line 258
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "ODG"

    .line 259
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "OTG"

    .line 260
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "ODI"

    .line 261
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "ODS"

    .line 262
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "OTS"

    .line 263
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "ODT"

    .line 264
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "ODM"

    .line 265
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "OTT"

    .line 266
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "OTH"

    .line 267
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "WPL"

    .line 268
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const/4 v1, 0x4

    const-string v4, "TXT"

    .line 270
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "HTM"

    .line 271
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "HTML"

    .line 272
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "PDF"

    .line 273
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "DOC"

    .line 274
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "PAGES"

    .line 275
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "WPS"

    .line 276
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "XMIND"

    .line 277
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "XLS"

    .line 278
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "PPT"

    .line 279
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "DOT"

    .line 280
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "DOCX"

    .line 281
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "DOTX"

    .line 282
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "XLT"

    .line 283
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "XLSX"

    .line 284
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "XLTX"

    .line 285
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "POT"

    .line 286
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "PPS"

    .line 287
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "PPTX"

    .line 288
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "POTX"

    .line 289
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "PPSX"

    .line 290
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "ICS"

    .line 291
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "ICZ"

    .line 292
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "CSV"

    .line 293
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "CSS"

    .line 294
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "ULS"

    .line 295
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "MML"

    .line 296
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "ASC"

    .line 297
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "TEXT"

    .line 298
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "DIFF"

    .line 299
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "PO"

    .line 300
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "RTX"

    .line 301
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "RTF"

    .line 302
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "PHPS"

    .line 303
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "TSV"

    .line 304
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "XML"

    .line 305
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "BIB"

    .line 306
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "BOO"

    .line 307
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "H++"

    .line 308
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "HPP"

    .line 309
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "HXX"

    .line 310
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "HH"

    .line 311
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "C++"

    .line 312
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "CPP"

    .line 313
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "CXX"

    .line 314
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "H"

    .line 315
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "HTC"

    .line 316
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "CSH"

    .line 317
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "C"

    .line 318
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "D"

    .line 319
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "HS"

    .line 320
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "JAVA"

    .line 321
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "LHS"

    .line 322
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "MOC"

    .line 323
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "P"

    .line 324
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "PAS"

    .line 325
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "GCD"

    .line 326
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "ETX"

    .line 327
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "TCL"

    .line 328
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "TEX"

    .line 329
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "LTX"

    .line 330
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "STY"

    .line 331
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "CLS"

    .line 332
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "VCS"

    .line 333
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "VCF"

    .line 334
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v4, "XHTML"

    .line 335
    invoke-static {v4, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const/4 v1, 0x5

    .line 337
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "RAR"

    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "ZIP"

    .line 338
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "7Z"

    .line 339
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "JAR"

    .line 340
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "ARJ"

    .line 341
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "GZ"

    .line 342
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "Z"

    .line 343
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "ACE"

    .line 344
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "CAB"

    .line 345
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "AR"

    .line 346
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "TAR"

    .line 347
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "CBR"

    .line 348
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "CBZ"

    .line 349
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "BZ2"

    .line 350
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "LZMA"

    .line 351
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "XZ"

    .line 352
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "ISO"

    .line 353
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "LZH"

    .line 354
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "GZIP"

    .line 355
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const-string v5, "UUE"

    .line 356
    invoke-static {v5, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    const/4 v1, 0x6

    .line 358
    invoke-static {v3, v1}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->addFileType(Ljava/lang/String;I)V

    .line 363
    sget-object v1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileHeadTypeMap:Ljava/util/Map;

    const-string v3, "ffd800000000000000000000"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileHeadTypeMap:Ljava/util/Map;

    const-string v3, "ffd900000000000000000000"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileHeadTypeMap:Ljava/util/Map;

    const-string v3, "89504e470d0a1a0a00000000"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileHeadTypeMap:Ljava/util/Map;

    const-string v3, "474946000000000000000000"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileHeadTypeMap:Ljava/util/Map;

    const-string v3, "424d00000000000000000000"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileHeadTypeMap:Ljava/util/Map;

    const-string v3, "4d4d00000000000000000000"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileHeadTypeMap:Ljava/util/Map;

    const-string v3, "494900000000000000000000"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileHeadTypeMap:Ljava/util/Map;

    const-string v3, "000001000100202000000000"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileHeadTypeMap:Ljava/util/Map;

    const-string v3, "000002000100202000000000"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileHeadTypeMap:Ljava/util/Map;

    const-string v3, "464f524d"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileHeadTypeMap:Ljava/util/Map;

    const-string v3, "524946460000000000000000"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileHeadTypeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "00000000667479706d703432"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileHeadTypeMap:Ljava/util/Map;

    const-string v1, "504b03040000000000000000"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileHeadTypeMap:Ljava/util/Map;

    const-string v1, "526172210000000000000000"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileHeadTypeMap:Ljava/util/Map;

    const-string v1, "377abcaf271c000000000000"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static addFileType(Ljava/lang/String;I)V
    .registers 3

    .line 29
    sget-object v0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileTypeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getFileSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const/16 v1, 0x2e

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v2, 0x2f

    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-le v2, v1, :cond_14

    const/4 v1, 0x0

    :cond_14
    if-lez v1, :cond_1d

    add-int/lit8 v1, v1, 0x1

    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    return-object v0
.end method

.method public static getFileTypeBySuffix(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x3

    if-nez p0, :cond_4

    return v0

    .line 49
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 50
    sget-object v1, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileTypeMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 51
    sget-object v0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeUtils;->mFileTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_21
    return v0
.end method
