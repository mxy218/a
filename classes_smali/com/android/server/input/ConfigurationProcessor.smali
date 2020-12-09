.class Lcom/android/server/input/ConfigurationProcessor;
.super Ljava/lang/Object;
.source "ConfigurationProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigurationProcessor"


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 54
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static processExcludedDeviceNames(Ljava/io/InputStream;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 41
    :try_start_a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    .line 42
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 43
    const-string v2, "devices"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 45
    :goto_16
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 46
    const-string v2, "device"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_38

    const/4 v3, 0x0

    if-nez v2, :cond_2b

    .line 47
    nop

    .line 54
    invoke-static {v3, v1}, Lcom/android/server/input/ConfigurationProcessor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 55
    return-object v0

    .line 49
    :cond_2b
    :try_start_2b
    const-string/jumbo v2, "name"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    if-eqz v2, :cond_37

    .line 51
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_38

    .line 53
    :cond_37
    goto :goto_16

    .line 40
    :catchall_38
    move-exception p0

    :try_start_39
    throw p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    .line 54
    :catchall_3a
    move-exception v0

    invoke-static {p0, v1}, Lcom/android/server/input/ConfigurationProcessor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method static processInputPortAssociations(Ljava/io/InputStream;)Ljava/util/List;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 93
    :try_start_a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    .line 94
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 95
    const-string/jumbo v2, "ports"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 98
    :goto_17
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 99
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 100
    const-string/jumbo v3, "port"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_62

    const/4 v3, 0x0

    if-nez v2, :cond_2d

    .line 101
    nop

    .line 118
    invoke-static {v3, v1}, Lcom/android/server/input/ConfigurationProcessor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 119
    return-object v0

    .line 103
    :cond_2d
    :try_start_2d
    const-string v2, "input"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    const-string v4, "display"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_62

    const-string v5, "ConfigurationProcessor"

    if-nez v4, :cond_5c

    :try_start_41
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_62

    if-eqz v4, :cond_48

    goto :goto_5c

    .line 111
    :cond_48
    :try_start_48
    invoke-static {v3}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_4b} :catch_55
    .catchall {:try_start_48 .. :try_end_4b} :catchall_62

    .line 115
    nop

    .line 116
    :try_start_4c
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    goto :goto_17

    .line 112
    :catch_55
    move-exception v2

    .line 113
    const-string v2, "Display port should be an integer"

    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    goto :goto_17

    .line 107
    :cond_5c
    :goto_5c
    const-string v2, "Ignoring incomplete entry"

    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_4c .. :try_end_61} :catchall_62

    .line 108
    goto :goto_17

    .line 92
    :catchall_62
    move-exception p0

    :try_start_63
    throw p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    .line 118
    :catchall_64
    move-exception v0

    invoke-static {p0, v1}, Lcom/android/server/input/ConfigurationProcessor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
.end method
