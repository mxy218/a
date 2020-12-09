.class final Lcom/android/server/timezone/PackageStatusStorage;
.super Ljava/lang/Object;
.source "PackageStatusStorage.java"


# static fields
.field private static final ATTRIBUTE_CHECK_STATUS:Ljava/lang/String; = "checkStatus"

.field private static final ATTRIBUTE_DATA_APP_VERSION:Ljava/lang/String; = "dataAppPackageVersion"

.field private static final ATTRIBUTE_OPTIMISTIC_LOCK_ID:Ljava/lang/String; = "optimisticLockId"

.field private static final ATTRIBUTE_UPDATE_APP_VERSION:Ljava/lang/String; = "updateAppPackageVersion"

.field private static final LOG_TAG:Ljava/lang/String; = "timezone.PackageStatusStorage"

.field private static final TAG_PACKAGE_STATUS:Ljava/lang/String; = "PackageStatus"

.field private static final UNKNOWN_PACKAGE_VERSION:J = -0x1L


# instance fields
.field private final mPackageStatusFile:Landroid/util/AtomicFile;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 139
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

.method constructor <init>(Ljava/io/File;)V
    .registers 5

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "package-status.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p1, "timezone-status"

    invoke-direct {v0, v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    .line 85
    return-void
.end method

.method private getCurrentOptimisticLockId()I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_21

    const/4 v1, 0x0

    .line 255
    :try_start_7
    invoke-static {v0}, Lcom/android/server/timezone/PackageStatusStorage;->parseToPackageStatusTag(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 256
    const-string/jumbo v3, "optimisticLockId"

    invoke-static {v2, v3}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_18

    .line 257
    if-eqz v0, :cond_17

    :try_start_14
    invoke-static {v1, v0}, Lcom/android/server/timezone/PackageStatusStorage;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_21

    .line 256
    :cond_17
    return v2

    .line 254
    :catchall_18
    move-exception v1

    :try_start_19
    throw v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    .line 257
    :catchall_1a
    move-exception v2

    if-eqz v0, :cond_20

    :try_start_1d
    invoke-static {v1, v0}, Lcom/android/server/timezone/PackageStatusStorage;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_20
    throw v2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_21

    :catch_21
    move-exception v0

    .line 258
    new-instance v1, Ljava/text/ParseException;

    const/4 v2, 0x0

    const-string v3, "Unable to read file"

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 259
    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 260
    throw v1
.end method

.method private static getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 379
    invoke-static {p0, p1}, Lcom/android/server/timezone/PackageStatusStorage;->getNullableIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 380
    if-eqz p0, :cond_b

    .line 383
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 381
    :cond_b
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing attribute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static getNullableIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 363
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 365
    const/4 v1, 0x0

    if-eqz p0, :cond_1a

    .line 367
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 368
    return-object v0

    .line 370
    :cond_f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 371
    :catch_18
    move-exception v0

    goto :goto_36

    .line 366
    :cond_1a
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " missing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_36} :catch_18

    .line 372
    :goto_36
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad integer for attributeName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_46

    .line 130
    :try_start_6
    invoke-static {v0}, Lcom/android/server/timezone/PackageStatusStorage;->parseToPackageStatusTag(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 131
    const-string v2, "checkStatus"

    invoke-static {v1, v2}, Lcom/android/server/timezone/PackageStatusStorage;->getNullableIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_3d

    .line 132
    const/4 v3, 0x0

    if-nez v2, :cond_1a

    .line 133
    nop

    .line 139
    if-eqz v0, :cond_19

    :try_start_16
    invoke-static {v3, v0}, Lcom/android/server/timezone/PackageStatusStorage;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_46

    .line 133
    :cond_19
    return-object v3

    .line 135
    :cond_1a
    :try_start_1a
    const-string/jumbo v4, "updateAppPackageVersion"

    invoke-static {v1, v4}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    .line 136
    const-string v5, "dataAppPackageVersion"

    invoke-static {v1, v5}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    .line 137
    new-instance v5, Lcom/android/server/timezone/PackageStatus;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v6, Lcom/android/server/timezone/PackageVersions;

    int-to-long v7, v4

    int-to-long v9, v1

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/server/timezone/PackageVersions;-><init>(JJ)V

    invoke-direct {v5, v2, v6}, Lcom/android/server/timezone/PackageStatus;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_3d

    .line 139
    if-eqz v0, :cond_3c

    :try_start_39
    invoke-static {v3, v0}, Lcom/android/server/timezone/PackageStatusStorage;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_46

    .line 137
    :cond_3c
    return-object v5

    .line 129
    :catchall_3d
    move-exception v1

    :try_start_3e
    throw v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3f

    .line 139
    :catchall_3f
    move-exception v2

    if-eqz v0, :cond_45

    :try_start_42
    invoke-static {v1, v0}, Lcom/android/server/timezone/PackageStatusStorage;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_45
    throw v2
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_46

    :catch_46
    move-exception v0

    .line 140
    new-instance v1, Ljava/text/ParseException;

    const/4 v2, 0x0

    const-string v3, "Error reading package status"

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 141
    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 142
    throw v1
.end method

.method private insertInitialPackageStatus()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 164
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V

    .line 166
    return v0
.end method

.method private static parseToPackageStatusTag(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 268
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 269
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 271
    :goto_e
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_26

    .line 272
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 273
    const/4 v3, 0x2

    if-ne p0, v3, :cond_25

    const-string p0, "PackageStatus"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 274
    return-object v1

    .line 276
    :cond_25
    goto :goto_e

    .line 277
    :cond_26
    new-instance p0, Ljava/text/ParseException;

    const-string v1, "Unable to find PackageStatus tag"

    invoke-direct {p0, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
    :try_end_2e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_2e} :catch_3a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2e} :catch_2e

    .line 280
    :catch_2e
    move-exception p0

    .line 281
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Error reading XML"

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 282
    invoke-virtual {p0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 283
    throw v1

    .line 278
    :catch_3a
    move-exception p0

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to configure parser"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private recoverFromBadData(Ljava/lang/Exception;)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 150
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->insertInitialPackageStatus()I

    move-result p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return p1

    .line 151
    :catch_a
    move-exception v0

    .line 152
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 153
    invoke-virtual {v1, p1}, Ljava/lang/IllegalStateException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 154
    throw v1
.end method

.method private writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    const-string v0, "PackageStatus"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_8

    move v3, v2

    goto :goto_9

    :cond_8
    move v3, v1

    :goto_9
    if-nez p3, :cond_c

    move v1, v2

    :cond_c
    if-ne v3, v1, :cond_87

    .line 315
    nop

    .line 317
    const/4 v1, 0x0

    :try_start_10
    iget-object v3, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_7d

    .line 318
    :try_start_16
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 319
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 320
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 321
    nop

    .line 322
    invoke-interface {v4, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    if-nez p1, :cond_34

    const-string v2, ""

    goto :goto_3c

    :cond_34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 324
    :goto_3c
    const-string v5, "checkStatus"

    invoke-interface {v4, v1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    const-string/jumbo v2, "optimisticLockId"

    .line 326
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 325
    invoke-interface {v4, v1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    const-wide/16 v5, -0x1

    if-nez p1, :cond_51

    .line 328
    move-wide v7, v5

    goto :goto_53

    :cond_51
    iget-wide v7, p3, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    .line 329
    :goto_53
    const-string/jumbo p2, "updateAppPackageVersion"

    .line 330
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-interface {v4, v1, p2, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    if-nez p1, :cond_60

    .line 332
    goto :goto_62

    :cond_60
    iget-wide v5, p3, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    .line 333
    :goto_62
    const-string p1, "dataAppPackageVersion"

    .line 334
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    .line 333
    invoke-interface {v4, v1, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    invoke-interface {v4, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 337
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 338
    iget-object p1, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_79} :catch_7b

    .line 344
    nop

    .line 346
    return-void

    .line 339
    :catch_7b
    move-exception p1

    goto :goto_7f

    :catch_7d
    move-exception p1

    move-object v3, v1

    .line 340
    :goto_7f
    if-eqz v3, :cond_86

    .line 341
    iget-object p2, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {p2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 343
    :cond_86
    throw p1

    .line 311
    :cond_87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Provide both status and packageVersions, or neither."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I

    move-result v1
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_5} :catch_e

    .line 295
    if-eq v1, p1, :cond_8

    .line 296
    return v0

    .line 301
    :cond_8
    nop

    .line 303
    invoke-direct {p0, p3, p2, p4}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V

    .line 304
    const/4 p1, 0x1

    return p1

    .line 298
    :catch_e
    move-exception p1

    .line 299
    invoke-direct {p0, p1}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I

    .line 300
    return v0
.end method


# virtual methods
.method deleteFileForTests()V
    .registers 2

    .line 99
    monitor-enter p0

    .line 100
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 101
    monitor-exit p0

    .line 102
    return-void

    .line 101
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatus()Lcom/android/server/timezone/PackageStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public forceCheckStateForTests(ILcom/android/server/timezone/PackageVersions;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    monitor-enter p0

    .line 353
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 354
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_12
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    .line 357
    nop

    .line 358
    :try_start_e
    monitor-exit p0

    .line 359
    return-void

    .line 358
    :catchall_10
    move-exception p1

    goto :goto_19

    .line 355
    :catch_12
    move-exception p1

    .line 356
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 358
    :goto_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_10

    throw p1
.end method

.method generateCheckToken(Lcom/android/server/timezone/PackageVersions;)Lcom/android/server/timezone/CheckToken;
    .registers 5

    .line 174
    if-eqz p1, :cond_3d

    .line 178
    monitor-enter p0

    .line 181
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I

    move-result v0
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_7} :catch_a
    .catchall {:try_start_3 .. :try_end_7} :catchall_8

    .line 187
    goto :goto_17

    .line 202
    :catchall_8
    move-exception p1

    goto :goto_3b

    .line 182
    :catch_a
    move-exception v0

    .line 183
    :try_start_b
    const-string/jumbo v1, "timezone.PackageStatusStorage"

    const-string v2, "Unable to find optimistic lock ID from package status"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0, v0}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I

    move-result v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_8

    .line 189
    :goto_17
    add-int/lit8 v1, v0, 0x1

    .line 191
    nop

    .line 192
    const/4 v2, 0x1

    :try_start_1b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 191
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result v0

    .line 194
    if-eqz v0, :cond_2c

    .line 198
    new-instance v0, Lcom/android/server/timezone/CheckToken;

    invoke-direct {v0, v1, p1}, Lcom/android/server/timezone/CheckToken;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2a} :catch_34
    .catchall {:try_start_1b .. :try_end_2a} :catchall_8

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_8

    return-object v0

    .line 195
    :cond_2c
    :try_start_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to update status to CHECK_STARTED. synchronization failure?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_34} :catch_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_8

    .line 199
    :catch_34
    move-exception p1

    .line 200
    :try_start_35
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 202
    :goto_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_8

    throw p1

    .line 175
    :cond_3d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "currentInstalledVersions == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getPackageStatus()Lcom/android/server/timezone/PackageStatus;
    .registers 4

    .line 109
    monitor-enter p0

    .line 111
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;

    move-result-object v0
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_5} :catch_9
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    :try_start_5
    monitor-exit p0

    return-object v0

    .line 124
    :catchall_7
    move-exception v0

    goto :goto_24

    .line 112
    :catch_9
    move-exception v0

    .line 114
    const-string/jumbo v1, "timezone.PackageStatusStorage"

    const-string v2, "Package status invalid, resetting and retrying"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    invoke-direct {p0, v0}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_7

    .line 119
    :try_start_15
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;

    move-result-object v0
    :try_end_19
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_19} :catch_1b
    .catchall {:try_start_15 .. :try_end_19} :catchall_7

    :try_start_19
    monitor-exit p0

    return-object v0

    .line 120
    :catch_1b
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Recovery from bad file failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 124
    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_7

    throw v0
.end method

.method initialize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    .line 94
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->insertInitialPackageStatus()I

    .line 96
    :cond_f
    return-void
.end method

.method markChecked(Lcom/android/server/timezone/CheckToken;Z)Z
    .registers 5

    .line 239
    monitor-enter p0

    .line 240
    :try_start_1
    iget v0, p1, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    .line 241
    add-int/lit8 v1, v0, 0x1

    .line 242
    if-eqz p2, :cond_9

    const/4 p2, 0x2

    goto :goto_a

    :cond_9
    const/4 p2, 0x3

    .line 244
    :goto_a
    nop

    .line 245
    :try_start_b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p1, p1, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    .line 244
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result p1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_17
    .catchall {:try_start_b .. :try_end_15} :catchall_1e

    :try_start_15
    monitor-exit p0

    return p1

    .line 246
    :catch_17
    move-exception p1

    .line 247
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 249
    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method resetCheckState()V
    .registers 5

    .line 209
    monitor-enter p0

    .line 212
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I

    move-result v0
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_5} :catch_8
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    .line 218
    goto :goto_16

    .line 230
    :catchall_6
    move-exception v0

    goto :goto_41

    .line 213
    :catch_8
    move-exception v0

    .line 214
    :try_start_9
    const-string/jumbo v1, "timezone.PackageStatusStorage"

    const-string/jumbo v2, "resetCheckState: Unable to find optimistic lock ID from package status"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0, v0}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I

    move-result v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_6

    .line 220
    :goto_16
    add-int/lit8 v1, v0, 0x1

    .line 222
    const/4 v2, 0x0

    :try_start_19
    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_3a
    .catchall {:try_start_19 .. :try_end_1d} :catchall_6

    if-eqz v0, :cond_22

    .line 229
    nop

    .line 230
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_6

    .line 231
    return-void

    .line 224
    :cond_22
    :try_start_22
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetCheckState: Unable to reset package status, newOptimisticLockId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_3a} :catch_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_6

    .line 227
    :catch_3a
    move-exception v0

    .line 228
    :try_start_3b
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 230
    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_6

    throw v0
.end method
