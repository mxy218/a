.class final Lcom/android/server/om/OverlayManagerSettings$Serializer;
.super Ljava/lang/Object;
.source "OverlayManagerSettings.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Serializer"
.end annotation


# static fields
.field private static final ATTR_BASE_CODE_PATH:Ljava/lang/String; = "baseCodePath"

.field private static final ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTR_IS_ENABLED:Ljava/lang/String; = "isEnabled"

.field private static final ATTR_IS_STATIC:Ljava/lang/String; = "isStatic"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATTR_STATE:Ljava/lang/String; = "state"

.field private static final ATTR_TARGET_OVERLAYABLE_NAME:Ljava/lang/String; = "targetOverlayableName"

.field private static final ATTR_TARGET_PACKAGE_NAME:Ljava/lang/String; = "targetPackageName"

.field private static final ATTR_USER_ID:Ljava/lang/String; = "userId"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field static final CURRENT_VERSION:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_OVERLAYS:Ljava/lang/String; = "overlays"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static persist(Ljava/util/ArrayList;Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 454
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 455
    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 456
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 457
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 458
    const-string/jumbo p1, "overlays"

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 459
    const-string/jumbo v1, "version"

    const/4 v3, 0x3

    invoke-static {v0, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 461
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 462
    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v1, :cond_39

    .line 463
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 464
    invoke-static {v0, v4}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->persistRow(Lcom/android/internal/util/FastXmlSerializer;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    .line 462
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 466
    :cond_39
    invoke-virtual {v0, v2, p1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 467
    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 468
    return-void
.end method

.method private static persistRow(Lcom/android/internal/util/FastXmlSerializer;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    const-string v0, "item"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 473
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "packageName"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 474
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v2

    const-string/jumbo v3, "userId"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 475
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1700(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "targetPackageName"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 476
    nop

    .line 477
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1800(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v2

    .line 476
    const-string/jumbo v3, "targetOverlayableName"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 478
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "baseCodePath"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 479
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$2000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v2

    const-string/jumbo v3, "state"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 480
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$2100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v2

    const-string v3, "isEnabled"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 481
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v2

    const-string v3, "isStatic"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 482
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v2

    const-string/jumbo v3, "priority"

    invoke-static {p0, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 483
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1500(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "category"

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 485
    return-void
.end method

.method public static restore(Ljava/util/ArrayList;Ljava/io/InputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 399
    :try_start_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 400
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    .line 401
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 402
    const-string/jumbo v1, "overlays"

    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 403
    const-string/jumbo v1, "version"

    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    .line 404
    const/4 v2, 0x3

    if-eq v1, v2, :cond_22

    .line 405
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->upgrade(I)V

    .line 407
    :cond_22
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 409
    :goto_26
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 410
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x317b13

    if-eq v4, v5, :cond_3b

    :cond_3a
    goto :goto_44

    :cond_3b
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v3, 0x0

    :goto_44
    if-eqz v3, :cond_47

    goto :goto_50

    .line 412
    :cond_47
    add-int/lit8 v2, v1, 0x1

    invoke-static {p1, v2}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->restoreRow(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-result-object v2

    .line 413
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_55

    .line 414
    :goto_50
    goto :goto_26

    .line 417
    :cond_51
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 418
    return-void

    .line 398
    :catchall_55
    move-exception p0

    :try_start_56
    throw p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    .line 417
    :catchall_57
    move-exception p1

    :try_start_58
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_60
    throw p1
.end method

.method private static restoreRow(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    const-string/jumbo p1, "packageName"

    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 436
    const-string/jumbo p1, "userId"

    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    .line 437
    const-string/jumbo p1, "targetPackageName"

    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 439
    const-string/jumbo p1, "targetOverlayableName"

    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 441
    const-string p1, "baseCodePath"

    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 442
    const-string/jumbo p1, "state"

    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 443
    const-string p1, "isEnabled"

    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    .line 444
    const-string p1, "isStatic"

    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    .line 445
    const-string/jumbo p1, "priority"

    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    .line 446
    const-string p1, "category"

    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 448
    new-instance p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZILjava/lang/String;)V

    return-object p0
.end method

.method private static upgrade(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 421
    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    .line 429
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unrecognized version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_20
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "old version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; ignoring"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
