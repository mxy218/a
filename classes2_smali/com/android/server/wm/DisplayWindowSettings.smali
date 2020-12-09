.class Lcom/android/server/wm/DisplayWindowSettings;
.super Ljava/lang/Object;
.source "DisplayWindowSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;,
        Lcom/android/server/wm/DisplayWindowSettings$Entry;,
        Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;,
        Lcom/android/server/wm/DisplayWindowSettings$DisplayIdentifierType;
    }
.end annotation


# static fields
.field private static final DISPLAY_SETTINGS_FILE_NAME:Ljava/lang/String; = "display_settings.xml"

.field private static final IDENTIFIER_PORT:I = 0x1

.field private static final IDENTIFIER_UNIQUE_ID:I = 0x0

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "system"

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final VENDOR_DISPLAY_SETTINGS_PATH:Ljava/lang/String; = "etc/display_settings.xml"

.field private static final WM_DISPLAY_COMMIT_TAG:Ljava/lang/String; = "wm-displays"


# instance fields
.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/DisplayWindowSettings$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mIdentifier:I
    .annotation build Lcom/android/server/wm/DisplayWindowSettings$DisplayIdentifierType;
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 163
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;)V

    .line 164
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    .line 168
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 169
    iput-object p2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    .line 170
    invoke-direct {p0}, Lcom/android/server/wm/DisplayWindowSettings;->readSettings()V

    .line 171
    return-void
.end method

.method private getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 4

    .line 522
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .registers 5

    .line 527
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 528
    if-eqz p1, :cond_b

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_b} :catch_c

    :cond_b
    return p3

    .line 529
    :catch_c
    move-exception p1

    .line 530
    return p3
.end method

.method private getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .registers 4

    .line 174
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    if-eqz v0, :cond_f

    .line 178
    return-object v0

    .line 181
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    if-eqz v0, :cond_20

    .line 183
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->updateIdentifierForEntry(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object p1

    return-object p1

    .line 185
    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method private getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;
    .registers 4

    .line 684
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    if-eqz v0, :cond_29

    .line 686
    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    instance-of v0, v0, Landroid/view/DisplayAddress$Physical;

    if-eqz v0, :cond_29

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    check-cast p1, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {p1}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 690
    :cond_29
    iget-object p1, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    return-object p1
.end method

.method private getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 4

    .line 509
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5

    .line 514
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 515
    if-eqz p1, :cond_b

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_b} :catch_c

    :cond_b
    return p3

    .line 516
    :catch_c
    move-exception p1

    .line 517
    return p3
.end method

.method private getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .registers 4

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_7

    goto :goto_11

    :cond_7
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$1;)V

    :goto_11
    return-object v0
.end method

.method private getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 7

    .line 273
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-static {p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result p1

    goto :goto_9

    .line 274
    :cond_8
    move p1, v0

    .line 277
    :goto_9
    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne p1, v1, :cond_14

    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mSupportsFreeformWindowManagement:Z

    if-nez v3, :cond_14

    .line 279
    return v2

    .line 282
    :cond_14
    if-nez p1, :cond_30

    .line 283
    iget-object p1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    move v0, v2

    .line 286
    :cond_1f
    iget-object p1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    if-nez p1, :cond_2d

    if-eqz v0, :cond_2f

    .line 287
    :cond_2d
    move p1, v1

    goto :goto_30

    .line 288
    :cond_2f
    move p1, v2

    .line 290
    :cond_30
    :goto_30
    return p1
.end method

.method private readConfig(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    const-string v0, "identifier"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    .line 569
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 570
    return-void
.end method

.method private readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    const/4 v0, 0x0

    const-string v1, "name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 537
    if-eqz v1, :cond_a4

    .line 538
    new-instance v2, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$1;)V

    .line 539
    const-string v0, "overscanLeft"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 540
    const-string v0, "overscanTop"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 541
    const-string v0, "overscanRight"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 542
    const-string v0, "overscanBottom"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$602(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 543
    const/4 v0, 0x0

    const-string v3, "windowingMode"

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 545
    const-string v3, "userRotationMode"

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$702(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 547
    const-string v3, "userRotation"

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$802(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 549
    const-string v3, "forcedWidth"

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$902(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 550
    const-string v3, "forcedHeight"

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1002(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 551
    const-string v3, "forcedDensity"

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1102(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 552
    const-string v3, "forcedScalingMode"

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1202(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 554
    const-string v3, "removeContentMode"

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 556
    const-string v0, "shouldShowWithInsecureKeyguard"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1602(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 558
    const-string v0, "shouldShowSystemDecors"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1702(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 559
    const-string v0, "shouldShowIme"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1802(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 560
    const-string v0, "fixedToUserRotation"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 561
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    :cond_a4
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 564
    return-void
.end method

.method private readSettings()V
    .registers 10

    .line 447
    const-string v0, "Failed parsing "

    const-string v1, "WindowManager"

    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    invoke-interface {v2}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->openRead()Ljava/io/InputStream;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_146

    .line 451
    nop

    .line 452
    nop

    .line 454
    :try_start_c
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 455
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 457
    :goto_19
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_24

    if-eq v4, v5, :cond_24

    goto :goto_19

    .line 462
    :cond_24
    if-ne v4, v6, :cond_7e

    .line 466
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 467
    :cond_2a
    :goto_2a
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_77

    const/4 v7, 0x3

    if-ne v6, v7, :cond_39

    .line 468
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v4, :cond_77

    .line 469
    :cond_39
    if-eq v6, v7, :cond_2a

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3f

    .line 470
    goto :goto_2a

    .line 473
    :cond_3f
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 474
    const-string v7, "display"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 475
    invoke-direct {p0, v3}, Lcom/android/server/wm/DisplayWindowSettings;->readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_76

    .line 476
    :cond_4f
    const-string v7, "config"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 477
    invoke-direct {p0, v3}, Lcom/android/server/wm/DisplayWindowSettings;->readConfig(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_76

    .line 479
    :cond_5b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <display-settings>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 479
    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_76
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_76} :catch_11b
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_76} :catch_fe
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_76} :catch_e1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_76} :catch_c4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_76} :catch_a7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_76} :catch_89
    .catchall {:try_start_c .. :try_end_76} :catchall_86

    .line 483
    :goto_76
    goto :goto_2a

    .line 484
    :cond_77
    nop

    .line 498
    nop

    .line 502
    :try_start_79
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_138

    goto/16 :goto_137

    .line 463
    :cond_7e
    :try_start_7e
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "no start tag found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_86
    .catch Ljava/lang/IllegalStateException; {:try_start_7e .. :try_end_86} :catch_11b
    .catch Ljava/lang/NullPointerException; {:try_start_7e .. :try_end_86} :catch_fe
    .catch Ljava/lang/NumberFormatException; {:try_start_7e .. :try_end_86} :catch_e1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7e .. :try_end_86} :catch_c4
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_86} :catch_a7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7e .. :try_end_86} :catch_89
    .catchall {:try_start_7e .. :try_end_86} :catchall_86

    .line 498
    :catchall_86
    move-exception v0

    goto/16 :goto_13b

    .line 495
    :catch_89
    move-exception v3

    .line 496
    :try_start_8a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_8a .. :try_end_9c} :catchall_86

    .line 498
    nop

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 502
    :try_start_a2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_138

    goto/16 :goto_137

    .line 493
    :catch_a7
    move-exception v3

    .line 494
    :try_start_a8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_a8 .. :try_end_ba} :catchall_86

    .line 498
    nop

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 502
    :try_start_c0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_138

    goto :goto_137

    .line 491
    :catch_c4
    move-exception v3

    .line 492
    :try_start_c5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_c5 .. :try_end_d7} :catchall_86

    .line 498
    nop

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 502
    :try_start_dd
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_138

    goto :goto_137

    .line 489
    :catch_e1
    move-exception v3

    .line 490
    :try_start_e2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catchall {:try_start_e2 .. :try_end_f4} :catchall_86

    .line 498
    nop

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 502
    :try_start_fa
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_138

    goto :goto_137

    .line 487
    :catch_fe
    move-exception v3

    .line 488
    :try_start_ff
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_ff .. :try_end_111} :catchall_86

    .line 498
    nop

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 502
    :try_start_117
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_138

    goto :goto_137

    .line 485
    :catch_11b
    move-exception v3

    .line 486
    :try_start_11c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12e
    .catchall {:try_start_11c .. :try_end_12e} :catchall_86

    .line 498
    nop

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 502
    :try_start_134
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_137} :catch_138

    .line 504
    :goto_137
    goto :goto_13a

    .line 503
    :catch_138
    move-exception v0

    .line 505
    nop

    .line 506
    :goto_13a
    return-void

    .line 499
    :goto_13b
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 502
    :try_start_140
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_143} :catch_144

    .line 504
    goto :goto_145

    .line 503
    :catch_144
    move-exception v1

    .line 504
    :goto_145
    throw v0

    .line 448
    :catch_146
    move-exception v0

    .line 449
    const-string v0, "No existing display settings, starting empty"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return-void
.end method

.method private removeEntry(Landroid/view/DisplayInfo;)Z
    .registers 7

    .line 675
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    .line 677
    :goto_11
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1d

    move v3, v1

    goto :goto_1e

    :cond_1d
    move v3, v2

    :goto_1e
    or-int/2addr v0, v3

    .line 678
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    iget-object p1, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    or-int p1, v0, v1

    .line 679
    return p1
.end method

.method private updateIdentifierForEntry(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .registers 6

    .line 199
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$Entry;Lcom/android/server/wm/DisplayWindowSettings$1;)V

    .line 200
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->removeEntry(Landroid/view/DisplayInfo;)Z

    .line 201
    iget-object p1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-object v0
.end method

.method private writeSettings()V
    .registers 12

    .line 585
    const-string v0, "display"

    const-string v1, "config"

    const-string v2, "display-settings"

    const-string v3, "WindowManager"

    :try_start_8
    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    invoke-interface {v4}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->startWrite()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_1aa

    .line 589
    nop

    .line 592
    :try_start_f
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 593
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 594
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 596
    invoke-interface {v5, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 598
    invoke-interface {v5, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 599
    const-string v7, "identifier"

    iget v9, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 600
    invoke-interface {v5, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 602
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_191

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 603
    invoke-interface {v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 604
    const-string v9, "name"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 605
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_6f

    .line 606
    const-string v9, "overscanLeft"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 608
    :cond_6f
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_82

    .line 609
    const-string v9, "overscanTop"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 611
    :cond_82
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_95

    .line 612
    const-string v9, "overscanRight"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 614
    :cond_95
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_a8

    .line 615
    const-string v9, "overscanBottom"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 617
    :cond_a8
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_bb

    .line 618
    const-string v9, "windowingMode"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 620
    :cond_bb
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_ce

    .line 621
    const-string v9, "userRotationMode"

    .line 622
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 621
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 624
    :cond_ce
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_e1

    .line 625
    const-string v9, "userRotation"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 627
    :cond_e1
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_107

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_107

    .line 628
    const-string v9, "forcedWidth"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 629
    const-string v9, "forcedHeight"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 631
    :cond_107
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_11a

    .line 632
    const-string v9, "forcedDensity"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 634
    :cond_11a
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_12d

    .line 635
    const-string v9, "forcedScalingMode"

    .line 636
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 635
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 638
    :cond_12d
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_140

    .line 639
    const-string v9, "removeContentMode"

    .line 640
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 639
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 642
    :cond_140
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v9

    if-eqz v9, :cond_153

    .line 643
    const-string v9, "shouldShowWithInsecureKeyguard"

    .line 644
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    .line 643
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 646
    :cond_153
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v9

    if-eqz v9, :cond_166

    .line 647
    const-string v9, "shouldShowSystemDecors"

    .line 648
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    .line 647
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 650
    :cond_166
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v9

    if-eqz v9, :cond_179

    .line 651
    const-string v9, "shouldShowIme"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 653
    :cond_179
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_18c

    .line 654
    const-string v9, "fixedToUserRotation"

    .line 655
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 654
    invoke-interface {v5, v8, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 657
    :cond_18c
    invoke-interface {v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 658
    goto/16 :goto_44

    .line 660
    :cond_191
    invoke-interface {v5, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 661
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 662
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    invoke-interface {v0, v4, v6}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->finishWrite(Ljava/io/OutputStream;Z)V
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19c} :catch_19d

    .line 666
    goto :goto_1a9

    .line 663
    :catch_19d
    move-exception v0

    .line 664
    const-string v1, "Failed to write display window settings."

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->finishWrite(Ljava/io/OutputStream;Z)V

    .line 667
    :goto_1a9
    return-void

    .line 586
    :catch_1aa
    move-exception v0

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write display settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-void
.end method

.method private writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V
    .registers 4

    .line 573
    invoke-static {p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->removeEntry(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 575
    return-void

    .line 578
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-direct {p0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettings()V

    .line 580
    return-void
.end method


# virtual methods
.method applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 7

    .line 402
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 403
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 406
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 408
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    iput v2, v0, Landroid/view/DisplayInfo;->overscanLeft:I

    .line 409
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    iput v2, v0, Landroid/view/DisplayInfo;->overscanTop:I

    .line 410
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    iput v2, v0, Landroid/view/DisplayInfo;->overscanRight:I

    .line 411
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    iput v2, v0, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 413
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    .line 414
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v3

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v4

    .line 413
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/DisplayRotation;->restoreSettings(III)V

    .line 416
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v0

    if-eqz v0, :cond_4a

    .line 417
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v0

    iput v0, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 419
    :cond_4a
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v0

    if-eqz v0, :cond_63

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v0

    if-eqz v0, :cond_63

    .line 420
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v0

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 423
    :cond_63
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v1, 0x0

    :goto_6c
    iput-boolean v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 424
    return-void
.end method

.method getRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;)I
    .registers 4

    .line 308
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 309
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_16

    invoke-static {v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_16

    .line 318
    :cond_11
    invoke-static {v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result p1

    return p1

    .line 311
    :cond_16
    :goto_16
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 313
    const/4 p1, 0x2

    return p1

    .line 316
    :cond_1e
    const/4 p1, 0x1

    return p1
.end method

.method getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I
    .registers 3

    .line 294
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 295
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v0

    .line 296
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    move-result p1

    return p1
.end method

.method setFixedToUserRotation(Lcom/android/server/wm/DisplayContent;I)V
    .registers 4

    .line 266
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 267
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v0

    .line 268
    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 269
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 270
    return-void
.end method

.method setForcedDensity(Lcom/android/server/wm/DisplayContent;II)V
    .registers 5

    .line 238
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_1b

    .line 239
    if-nez p2, :cond_9

    const-string p1, ""

    goto :goto_d

    :cond_9
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 240
    :goto_d
    iget-object p2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "display_density_forced"

    invoke-static {p2, v0, p1, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 242
    return-void

    .line 245
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 246
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object p3

    .line 247
    invoke-static {p3, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1102(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 248
    invoke-direct {p0, p3, p1}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 249
    return-void
.end method

.method setForcedScalingMode(Lcom/android/server/wm/DisplayContent;I)V
    .registers 4

    .line 252
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_12

    .line 253
    iget-object p1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "display_scaling_force"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    return-void

    .line 258
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 259
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v0

    .line 260
    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1202(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 261
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 262
    return-void
.end method

.method setForcedSize(Lcom/android/server/wm/DisplayContent;II)V
    .registers 5

    .line 223
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_2e

    .line 224
    if-eqz p2, :cond_1e

    if-nez p3, :cond_9

    goto :goto_1e

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    :cond_1e
    :goto_1e
    const-string p1, ""

    .line 225
    :goto_20
    iget-object p2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "display_size_forced"

    invoke-static {p2, p3, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    return-void

    .line 230
    :cond_2e
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 231
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v0

    .line 232
    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$902(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 233
    invoke-static {v0, p3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1002(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 234
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 235
    return-void
.end method

.method setOverscanLocked(Landroid/view/DisplayInfo;IIII)V
    .registers 7

    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v0

    .line 207
    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 208
    invoke-static {v0, p3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 209
    invoke-static {v0, p4}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 210
    invoke-static {v0, p5}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$602(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 211
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 212
    return-void
.end method

.method setRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;I)V
    .registers 4

    .line 322
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 323
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v0

    .line 324
    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 325
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 326
    return-void
.end method

.method setShouldShowImeLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 4

    .line 390
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_10

    if-nez p2, :cond_10

    .line 391
    const-string p1, "WindowManager"

    const-string p2, "Default display should show IME"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void

    .line 395
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 396
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v0

    .line 397
    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1802(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 398
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 399
    return-void
.end method

.method setShouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 4

    .line 364
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_10

    if-nez p2, :cond_10

    .line 365
    const-string p1, "WindowManager"

    const-string p2, "Default display should show system decors"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-void

    .line 369
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 370
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v0

    .line 371
    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1702(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 372
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 373
    return-void
.end method

.method setShouldShowWithInsecureKeyguardLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 4

    .line 338
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz p2, :cond_10

    .line 339
    const-string p1, "WindowManager"

    const-string p2, "Public display can\'t be allowed to show content when locked"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void

    .line 343
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 344
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v0

    .line 345
    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1602(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 346
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 347
    return-void
.end method

.method setUserRotation(Lcom/android/server/wm/DisplayContent;II)V
    .registers 5

    .line 215
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v0

    .line 217
    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$702(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 218
    invoke-static {v0, p3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$802(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 219
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 220
    return-void
.end method

.method setWindowingModeLocked(Lcom/android/server/wm/DisplayContent;I)V
    .registers 5

    .line 300
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 301
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 302
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 303
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 304
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 305
    return-void
.end method

.method shouldShowImeLocked(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3

    .line 376
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_8

    .line 378
    const/4 p1, 0x1

    return p1

    .line 381
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 382
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object p1

    .line 383
    if-nez p1, :cond_14

    .line 384
    const/4 p1, 0x0

    return p1

    .line 386
    :cond_14
    invoke-static {p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result p1

    return p1
.end method

.method shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3

    .line 350
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_8

    .line 352
    const/4 p1, 0x1

    return p1

    .line 355
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 356
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object p1

    .line 357
    if-nez p1, :cond_14

    .line 358
    const/4 p1, 0x0

    return p1

    .line 360
    :cond_14
    invoke-static {p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result p1

    return p1
.end method

.method shouldShowWithInsecureKeyguardLocked(Lcom/android/server/wm/DisplayContent;)Z
    .registers 2

    .line 329
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 330
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object p1

    .line 331
    if-nez p1, :cond_c

    .line 332
    const/4 p1, 0x0

    return p1

    .line 334
    :cond_c
    invoke-static {p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result p1

    return p1
.end method

.method updateSettingsForDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .registers 4

    .line 435
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 439
    const/4 p1, 0x1

    return p1

    .line 441
    :cond_13
    const/4 p1, 0x0

    return p1
.end method
