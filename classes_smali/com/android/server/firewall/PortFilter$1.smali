.class Lcom/android/server/firewall/PortFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "PortFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/PortFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 60
    nop

    .line 61
    nop

    .line 63
    const/4 v0, 0x0

    const-string v1, "equals"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    const/4 v2, -0x1

    if-eqz v1, :cond_2c

    .line 67
    :try_start_c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_10} :catch_14

    .line 71
    nop

    .line 72
    nop

    .line 73
    move v3, v2

    goto :goto_2d

    .line 68
    :catch_14
    move-exception v2

    .line 69
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid port value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 64
    :cond_2c
    move v3, v2

    .line 76
    :goto_2d
    const-string v4, "min"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    const-string v5, "max"

    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    if-nez v4, :cond_3d

    if-eqz v5, :cond_7d

    .line 79
    :cond_3d
    if-nez v1, :cond_83

    .line 85
    if-eqz v4, :cond_5e

    .line 87
    :try_start_41
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_45} :catch_46

    .line 92
    goto :goto_5e

    .line 88
    :catch_46
    move-exception v1

    .line 89
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid minimum port value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 95
    :cond_5e
    :goto_5e
    if-eqz v5, :cond_7d

    .line 97
    :try_start_60
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_64} :catch_65

    .line 102
    goto :goto_7d

    .line 98
    :catch_65
    move-exception v1

    .line 99
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid maximum port value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 107
    :cond_7d
    :goto_7d
    new-instance p1, Lcom/android/server/firewall/PortFilter;

    invoke-direct {p1, v2, v3, v0}, Lcom/android/server/firewall/PortFilter;-><init>(IILcom/android/server/firewall/PortFilter$1;)V

    return-object p1

    .line 80
    :cond_83
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Port filter cannot use both equals and range filtering"

    invoke-direct {v1, v2, p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method
