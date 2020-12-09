.class public Lcom/android/server/usage/UsageStatsXml;
.super Ljava/lang/Object;
.source "UsageStatsXml.java"


# static fields
.field static final CHECKED_IN_SUFFIX:Ljava/lang/String; = "-c"

.field private static final CURRENT_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UsageStatsXml"

.field private static final USAGESTATS_TAG:Ljava/lang/String; = "usagestats"

.field private static final VERSION_ATTR:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    const-string v0, "Unrecognized version "

    const-string v1, "UsageStatsXml"

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 42
    :try_start_8
    const-string/jumbo v3, "utf-8"

    invoke-interface {v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 43
    const-string/jumbo p0, "usagestats"

    invoke-static {v2, p0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 44
    const/4 p0, 0x0

    const-string/jumbo v3, "version"

    invoke-interface {v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_1c} :catch_5d

    .line 46
    :try_start_1c
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2a

    .line 48
    invoke-static {v2, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    .line 49
    nop

    .line 58
    nop

    .line 62
    nop

    .line 63
    return-void

    .line 52
    :cond_2a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance p1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_51} :catch_51
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_51} :catch_5d

    .line 55
    :catch_51
    move-exception p0

    .line 56
    :try_start_52
    const-string p1, "Bad version"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_5d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_5d} :catch_5d

    .line 59
    :catch_5d
    move-exception p0

    .line 60
    const-string p1, "Failed to parse Xml"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 67
    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 68
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 69
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 70
    const-string/jumbo v1, "usagestats"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "version"

    invoke-virtual {v0, v2, v3, p0}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->write(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;)V

    .line 75
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 77
    return-void
.end method
