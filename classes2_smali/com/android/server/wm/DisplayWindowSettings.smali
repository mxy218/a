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
.field private static final IDENTIFIER_PORT:I = 0x1

.field private static final IDENTIFIER_UNIQUE_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WindowManager"


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
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;

    .line 157
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayWindowSettings$AtomicFileStorage;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;)V

    .line 158
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;)V
    .registers 4
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "storageImpl"  # Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    .line 162
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 163
    iput-object p2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    .line 164
    invoke-direct {p0}, Lcom/android/server/wm/DisplayWindowSettings;->readSettings()V

    .line 165
    return-void
.end method

.method private getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .registers 4
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"  # Ljava/lang/String;

    .line 516
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "defaultValue"  # Z

    .line 521
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_c

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_b} :catch_e

    goto :goto_d

    :cond_c
    move v1, p3

    :goto_d
    return v1

    .line 523
    .end local v0  # "str":Ljava/lang/String;
    :catch_e
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p3
.end method

.method private getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .registers 6
    .param p1, "displayInfo"  # Landroid/view/DisplayInfo;

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "identifier":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-object v2, v1

    .local v2, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    if-eqz v1, :cond_10

    .line 172
    return-object v2

    .line 175
    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-object v2, v1

    if-eqz v1, :cond_22

    .line 177
    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/DisplayWindowSettings;->updateIdentifierForEntry(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    return-object v1

    .line 179
    :cond_22
    const/4 v1, 0x0

    return-object v1
.end method

.method private getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;
    .registers 4
    .param p1, "displayInfo"  # Landroid/view/DisplayInfo;

    .line 678
    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    if-eqz v0, :cond_29

    .line 680
    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    instance-of v0, v0, Landroid/view/DisplayAddress$Physical;

    if-eqz v0, :cond_29

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    check-cast v1, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {v1}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 684
    :cond_29
    iget-object v0, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method private getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 4
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"  # Ljava/lang/String;

    .line 503
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 6
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "defaultValue"  # I

    .line 508
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_c

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_b} :catch_e

    goto :goto_d

    :cond_c
    move v1, p3

    :goto_d
    return v1

    .line 510
    .end local v0  # "str":Ljava/lang/String;
    :catch_e
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p3
.end method

.method private getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .registers 6
    .param p1, "displayInfo"  # Landroid/view/DisplayInfo;

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v0

    .line 184
    .local v0, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_12

    :cond_8
    new-instance v1, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$1;)V

    :goto_12
    return-object v1
.end method

.method private getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .registers 8
    .param p1, "entry"  # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p2, "displayId"  # I

    .line 267
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-static {p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v1

    goto :goto_9

    .line 268
    :cond_8
    move v1, v0

    :goto_9
    nop

    .line 271
    .local v1, "windowingMode":I
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v1, v2, :cond_15

    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSupportsFreeformWindowManagement:Z

    if-nez v4, :cond_15

    .line 273
    return v3

    .line 276
    :cond_15
    if-nez v1, :cond_31

    .line 277
    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-eqz v4, :cond_20

    if-eqz p2, :cond_20

    move v0, v3

    .line 280
    .local v0, "forceDesktopMode":Z
    :cond_20
    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v4, :cond_2f

    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    if-nez v4, :cond_2e

    if-eqz v0, :cond_2f

    .line 281
    :cond_2e
    goto :goto_30

    .line 282
    :cond_2f
    move v2, v3

    :goto_30
    move v1, v2

    .line 284
    .end local v0  # "forceDesktopMode":Z
    :cond_31
    return v1
.end method

.method private readConfig(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 562
    const-string v0, "identifier"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    .line 563
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 564
    return-void
.end method

.method private readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    const/4 v0, 0x0

    const-string v1, "name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_a5

    .line 532
    new-instance v2, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$1;)V

    move-object v0, v2

    .line 533
    .local v0, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    const-string v2, "overscanLeft"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 534
    const-string v2, "overscanTop"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 535
    const-string v2, "overscanRight"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 536
    const-string v2, "overscanBottom"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$602(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 537
    const/4 v2, 0x0

    const-string v3, "windowingMode"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 539
    const-string v3, "userRotationMode"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$702(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 541
    const-string v3, "userRotation"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$802(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 543
    const-string v3, "forcedWidth"

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$902(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 544
    const-string v3, "forcedHeight"

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1002(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 545
    const-string v3, "forcedDensity"

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1102(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 546
    const-string v3, "forcedScalingMode"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1202(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 548
    const-string v3, "removeContentMode"

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 550
    const-string v2, "shouldShowWithInsecureKeyguard"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1602(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 552
    const-string v2, "shouldShowSystemDecors"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1702(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 553
    const-string v2, "shouldShowIme"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1802(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 554
    const-string v2, "fixedToUserRotation"

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 555
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    .end local v0  # "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    :cond_a5
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 558
    return-void
.end method

.method private readSettings()V
    .registers 12

    .line 441
    const-string v0, "Failed parsing "

    const-string v1, "WindowManager"

    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    invoke-interface {v2}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->openRead()Ljava/io/InputStream;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_15f

    .line 445
    .local v2, "stream":Ljava/io/InputStream;
    nop

    .line 446
    const/4 v3, 0x0

    .line 448
    .local v3, "success":Z
    :try_start_c
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 449
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 451
    :goto_19
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v5, v8, :cond_25

    if-eq v6, v7, :cond_25

    goto :goto_19

    .line 456
    :cond_25
    if-ne v6, v8, :cond_89

    .line 460
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 461
    .local v5, "outerDepth":I
    :cond_2b
    :goto_2b
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v6, v8

    if-eq v8, v7, :cond_79

    const/4 v8, 0x3

    if-ne v6, v8, :cond_3b

    .line 462
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v5, :cond_79

    .line 463
    :cond_3b
    if-eq v6, v8, :cond_2b

    const/4 v8, 0x4

    if-ne v6, v8, :cond_41

    .line 464
    goto :goto_2b

    .line 467
    :cond_41
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 468
    .local v8, "tagName":Ljava/lang/String;
    const-string v9, "display"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_51

    .line 469
    invoke-direct {p0, v4}, Lcom/android/server/wm/DisplayWindowSettings;->readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_78

    .line 470
    :cond_51
    const-string v9, "config"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 471
    invoke-direct {p0, v4}, Lcom/android/server/wm/DisplayWindowSettings;->readConfig(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_78

    .line 473
    :cond_5d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <display-settings>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 473
    invoke-static {v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_78
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_78} :catch_131
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_78} :catch_111
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_78} :catch_f1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_78} :catch_d2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_78} :catch_b3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_78} :catch_94
    .catchall {:try_start_c .. :try_end_78} :catchall_91

    .line 477
    .end local v8  # "tagName":Ljava/lang/String;
    :goto_78
    goto :goto_2b

    .line 478
    :cond_79
    const/4 v3, 0x1

    .line 492
    .end local v4  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5  # "outerDepth":I
    .end local v6  # "type":I
    if-nez v3, :cond_81

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 496
    :cond_81
    :try_start_81
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_86

    .line 498
    :goto_84
    goto/16 :goto_151

    .line 497
    :catch_86
    move-exception v0

    .line 499
    goto/16 :goto_151

    .line 457
    .restart local v4  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6  # "type":I
    :cond_89
    :try_start_89
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v7, "no start tag found"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2  # "stream":Ljava/io/InputStream;
    .end local v3  # "success":Z
    .end local p0  # "this":Lcom/android/server/wm/DisplayWindowSettings;
    throw v5
    :try_end_91
    .catch Ljava/lang/IllegalStateException; {:try_start_89 .. :try_end_91} :catch_131
    .catch Ljava/lang/NullPointerException; {:try_start_89 .. :try_end_91} :catch_111
    .catch Ljava/lang/NumberFormatException; {:try_start_89 .. :try_end_91} :catch_f1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_89 .. :try_end_91} :catch_d2
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_91} :catch_b3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_89 .. :try_end_91} :catch_94
    .catchall {:try_start_89 .. :try_end_91} :catchall_91

    .line 492
    .end local v4  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6  # "type":I
    .restart local v2  # "stream":Ljava/io/InputStream;
    .restart local v3  # "success":Z
    .restart local p0  # "this":Lcom/android/server/wm/DisplayWindowSettings;
    :catchall_91
    move-exception v0

    goto/16 :goto_152

    .line 489
    :catch_94
    move-exception v4

    .line 490
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_95 .. :try_end_a7} :catchall_91

    .line 492
    nop

    .end local v4  # "e":Ljava/lang/IndexOutOfBoundsException;
    if-nez v3, :cond_af

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 496
    :cond_af
    :try_start_af
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_86

    goto :goto_84

    .line 487
    :catch_b3
    move-exception v4

    .line 488
    .local v4, "e":Ljava/io/IOException;
    :try_start_b4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_b4 .. :try_end_c6} :catchall_91

    .line 492
    nop

    .end local v4  # "e":Ljava/io/IOException;
    if-nez v3, :cond_ce

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 496
    :cond_ce
    :try_start_ce
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_86

    goto :goto_84

    .line 485
    :catch_d2
    move-exception v4

    .line 486
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_d3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catchall {:try_start_d3 .. :try_end_e5} :catchall_91

    .line 492
    nop

    .end local v4  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez v3, :cond_ed

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 496
    :cond_ed
    :try_start_ed
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_86

    goto :goto_84

    .line 483
    :catch_f1
    move-exception v4

    .line 484
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_f2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_104
    .catchall {:try_start_f2 .. :try_end_104} :catchall_91

    .line 492
    nop

    .end local v4  # "e":Ljava/lang/NumberFormatException;
    if-nez v3, :cond_10c

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 496
    :cond_10c
    :try_start_10c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_10f} :catch_86

    goto/16 :goto_84

    .line 481
    :catch_111
    move-exception v4

    .line 482
    .local v4, "e":Ljava/lang/NullPointerException;
    :try_start_112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catchall {:try_start_112 .. :try_end_124} :catchall_91

    .line 492
    nop

    .end local v4  # "e":Ljava/lang/NullPointerException;
    if-nez v3, :cond_12c

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 496
    :cond_12c
    :try_start_12c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_12f} :catch_86

    goto/16 :goto_84

    .line 479
    :catch_131
    move-exception v4

    .line 480
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_144
    .catchall {:try_start_132 .. :try_end_144} :catchall_91

    .line 492
    nop

    .end local v4  # "e":Ljava/lang/IllegalStateException;
    if-nez v3, :cond_14c

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 496
    :cond_14c
    :try_start_14c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_86

    goto/16 :goto_84

    .line 500
    :goto_151
    return-void

    .line 492
    :goto_152
    if-nez v3, :cond_159

    .line 493
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 496
    :cond_159
    :try_start_159
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_15c
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_15c} :catch_15d

    .line 498
    goto :goto_15e

    .line 497
    :catch_15d
    move-exception v1

    .line 498
    :goto_15e
    throw v0

    .line 442
    .end local v2  # "stream":Ljava/io/InputStream;
    .end local v3  # "success":Z
    :catch_15f
    move-exception v0

    .line 443
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "No existing display settings, starting empty"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void
.end method

.method private removeEntry(Landroid/view/DisplayInfo;)Z
    .registers 7
    .param p1, "displayInfo"  # Landroid/view/DisplayInfo;

    .line 669
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

    .line 671
    .local v0, "removed":Z
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

    .line 672
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    or-int/2addr v0, v1

    .line 673
    return v0
.end method

.method private updateIdentifierForEntry(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .registers 6
    .param p1, "entry"  # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p2, "displayInfo"  # Landroid/view/DisplayInfo;

    .line 193
    new-instance v0, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$Entry;Lcom/android/server/wm/DisplayWindowSettings$1;)V

    .line 194
    .local v0, "newEntry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->removeEntry(Landroid/view/DisplayInfo;)Z

    .line 195
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-object v0
.end method

.method private writeSettings()V
    .registers 12

    .line 579
    const-string v0, "display"

    const-string v1, "config"

    const-string v2, "display-settings"

    const-string v3, "WindowManager"

    :try_start_8
    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    invoke-interface {v4}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->startWrite()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_1ab

    .line 583
    .local v4, "stream":Ljava/io/OutputStream;
    nop

    .line 586
    :try_start_f
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 587
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 588
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 590
    invoke-interface {v5, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 592
    invoke-interface {v5, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 593
    const-string v7, "identifier"

    iget v9, p0, Lcom/android/server/wm/DisplayWindowSettings;->mIdentifier:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 594
    invoke-interface {v5, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 596
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_192

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayWindowSettings$Entry;

    .line 597
    .local v7, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-interface {v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 598
    const-string v9, "name"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 599
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_6f

    .line 600
    const-string v9, "overscanLeft"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 602
    :cond_6f
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_82

    .line 603
    const-string v9, "overscanTop"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 605
    :cond_82
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_95

    .line 606
    const-string v9, "overscanRight"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 608
    :cond_95
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_a8

    .line 609
    const-string v9, "overscanBottom"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 611
    :cond_a8
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_bb

    .line 612
    const-string v9, "windowingMode"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 614
    :cond_bb
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_ce

    .line 615
    const-string v9, "userRotationMode"

    .line 616
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 615
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 618
    :cond_ce
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_e1

    .line 619
    const-string v9, "userRotation"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 621
    :cond_e1
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_107

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_107

    .line 622
    const-string v9, "forcedWidth"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 623
    const-string v9, "forcedHeight"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 625
    :cond_107
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_11a

    .line 626
    const-string v9, "forcedDensity"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 628
    :cond_11a
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_12d

    .line 629
    const-string v9, "forcedScalingMode"

    .line 630
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 629
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 632
    :cond_12d
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_140

    .line 633
    const-string v9, "removeContentMode"

    .line 634
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 633
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 636
    :cond_140
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v9

    if-eqz v9, :cond_153

    .line 637
    const-string v9, "shouldShowWithInsecureKeyguard"

    .line 638
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    .line 637
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 640
    :cond_153
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v9

    if-eqz v9, :cond_166

    .line 641
    const-string v9, "shouldShowSystemDecors"

    .line 642
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    .line 641
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 644
    :cond_166
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v9

    if-eqz v9, :cond_179

    .line 645
    const-string v9, "shouldShowIme"

    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 647
    :cond_179
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v9

    if-eqz v9, :cond_18c

    .line 648
    const-string v9, "fixedToUserRotation"

    .line 649
    invoke-static {v7}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 648
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 651
    :cond_18c
    invoke-interface {v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 652
    nop

    .end local v7  # "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    goto/16 :goto_44

    .line 654
    :cond_192
    invoke-interface {v5, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 655
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 656
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    invoke-interface {v0, v4, v6}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->finishWrite(Ljava/io/OutputStream;Z)V
    :try_end_19d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19d} :catch_19e

    .line 660
    .end local v5  # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_1aa

    .line 657
    :catch_19e
    move-exception v0

    .line 658
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Failed to write display window settings."

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 659
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mStorage:Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Lcom/android/server/wm/DisplayWindowSettings$SettingPersister;->finishWrite(Ljava/io/OutputStream;Z)V

    .line 661
    .end local v0  # "e":Ljava/io/IOException;
    :goto_1aa
    return-void

    .line 580
    .end local v4  # "stream":Ljava/io/OutputStream;
    :catch_1ab
    move-exception v0

    .line 581
    .restart local v0  # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write display settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void
.end method

.method private writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V
    .registers 5
    .param p1, "changedEntry"  # Lcom/android/server/wm/DisplayWindowSettings$Entry;
    .param p2, "displayInfo"  # Landroid/view/DisplayInfo;

    .line 567
    invoke-static {p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->removeEntry(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 569
    return-void

    .line 572
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mEntries:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayWindowSettings;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    invoke-direct {p0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettings()V

    .line 574
    return-void
.end method


# virtual methods
.method applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 8
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 396
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 397
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 400
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 402
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    iput v2, v0, Landroid/view/DisplayInfo;->overscanLeft:I

    .line 403
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    iput v2, v0, Landroid/view/DisplayInfo;->overscanTop:I

    .line 404
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    iput v2, v0, Landroid/view/DisplayInfo;->overscanRight:I

    .line 405
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    iput v2, v0, Landroid/view/DisplayInfo;->overscanBottom:I

    .line 407
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v3

    .line 408
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v4

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v5

    .line 407
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/DisplayRotation;->restoreSettings(III)V

    .line 410
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    if-eqz v2, :cond_4a

    .line 411
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    iput v2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 413
    :cond_4a
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    if-eqz v2, :cond_63

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    if-eqz v2, :cond_63

    .line 414
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v3

    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 417
    :cond_63
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v3, 0x0

    :goto_6c
    iput-boolean v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 418
    return-void
.end method

.method getRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;)I
    .registers 5
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 302
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 303
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 304
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    if-eqz v1, :cond_16

    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    if-nez v2, :cond_11

    goto :goto_16

    .line 312
    :cond_11
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I

    move-result v2

    return v2

    .line 305
    :cond_16
    :goto_16
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 307
    const/4 v2, 0x2

    return v2

    .line 310
    :cond_1e
    const/4 v2, 0x1

    return v2
.end method

.method getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I
    .registers 5
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 288
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 289
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 290
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    move-result v2

    return v2
.end method

.method setFixedToUserRotation(Lcom/android/server/wm/DisplayContent;I)V
    .registers 5
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "fixedToUserRotation"  # I

    .line 260
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 261
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 262
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 263
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 264
    return-void
.end method

.method setForcedDensity(Lcom/android/server/wm/DisplayContent;II)V
    .registers 7
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "density"  # I
    .param p3, "userId"  # I

    .line 232
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_1b

    .line 233
    if-nez p2, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "densityString":Ljava/lang/String;
    :goto_d
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_density_forced"

    invoke-static {v1, v2, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 236
    return-void

    .line 239
    .end local v0  # "densityString":Ljava/lang/String;
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 240
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 241
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1102(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 242
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 243
    return-void
.end method

.method setForcedScalingMode(Lcom/android/server/wm/DisplayContent;I)V
    .registers 5
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "mode"  # I

    .line 246
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_12

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_scaling_force"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    return-void

    .line 252
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 253
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 254
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1202(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 255
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 256
    return-void
.end method

.method setForcedSize(Lcom/android/server/wm/DisplayContent;II)V
    .registers 7
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "width"  # I
    .param p3, "height"  # I

    .line 217
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_2e

    .line 218
    if-eqz p2, :cond_1e

    if-nez p3, :cond_9

    goto :goto_1e

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1e
    :goto_1e
    const-string v0, ""

    .line 219
    .local v0, "sizeString":Ljava/lang/String;
    :goto_20
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_size_forced"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 221
    return-void

    .line 224
    .end local v0  # "sizeString":Ljava/lang/String;
    :cond_2e
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 225
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 226
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$902(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 227
    invoke-static {v1, p3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1002(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 228
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 229
    return-void
.end method

.method setOverscanLocked(Landroid/view/DisplayInfo;IIII)V
    .registers 7
    .param p1, "displayInfo"  # Landroid/view/DisplayInfo;
    .param p2, "left"  # I
    .param p3, "top"  # I
    .param p4, "right"  # I
    .param p5, "bottom"  # I

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v0

    .line 201
    .local v0, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 202
    invoke-static {v0, p3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 203
    invoke-static {v0, p4}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 204
    invoke-static {v0, p5}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$602(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 205
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 206
    return-void
.end method

.method setRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;I)V
    .registers 5
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "mode"  # I

    .line 316
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 317
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 318
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 319
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 320
    return-void
.end method

.method setShouldShowImeLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 5
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "shouldShow"  # Z

    .line 384
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_10

    if-nez p2, :cond_10

    .line 385
    const-string v0, "WindowManager"

    const-string v1, "Default display should show IME"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void

    .line 389
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 390
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 391
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1802(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 392
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 393
    return-void
.end method

.method setShouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 5
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "shouldShow"  # Z

    .line 358
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_10

    if-nez p2, :cond_10

    .line 359
    const-string v0, "WindowManager"

    const-string v1, "Default display should show system decors"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void

    .line 363
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 364
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 365
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1702(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 366
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 367
    return-void
.end method

.method setShouldShowWithInsecureKeyguardLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 5
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "shouldShow"  # Z

    .line 332
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_10

    if-eqz p2, :cond_10

    .line 333
    const-string v0, "WindowManager"

    const-string v1, "Public display can\'t be allowed to show content when locked"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void

    .line 337
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 338
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 339
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1602(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z

    .line 340
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 341
    return-void
.end method

.method setUserRotation(Lcom/android/server/wm/DisplayContent;II)V
    .registers 6
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "rotationMode"  # I
    .param p3, "rotation"  # I

    .line 209
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 210
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 211
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$702(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 212
    invoke-static {v1, p3}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$802(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 213
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 214
    return-void
.end method

.method setWindowingModeLocked(Lcom/android/server/wm/DisplayContent;I)V
    .registers 5
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "mode"  # I

    .line 294
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 295
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getOrCreateEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 296
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    invoke-static {v1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I

    .line 297
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 298
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->writeSettingsIfNeeded(Lcom/android/server/wm/DisplayWindowSettings$Entry;Landroid/view/DisplayInfo;)V

    .line 299
    return-void
.end method

.method shouldShowImeLocked(Lcom/android/server/wm/DisplayContent;)Z
    .registers 5
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 370
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_8

    .line 372
    const/4 v0, 0x1

    return v0

    .line 375
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 376
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 377
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    if-nez v1, :cond_14

    .line 378
    const/4 v2, 0x0

    return v2

    .line 380
    :cond_14
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v2

    return v2
.end method

.method shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z
    .registers 5
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 344
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_8

    .line 346
    const/4 v0, 0x1

    return v0

    .line 349
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 350
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 351
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    if-nez v1, :cond_14

    .line 352
    const/4 v2, 0x0

    return v2

    .line 354
    :cond_14
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v2

    return v2
.end method

.method shouldShowWithInsecureKeyguardLocked(Lcom/android/server/wm/DisplayContent;)Z
    .registers 5
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 323
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 324
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->getEntry(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$Entry;

    move-result-object v1

    .line 325
    .local v1, "entry":Lcom/android/server/wm/DisplayWindowSettings$Entry;
    if-nez v1, :cond_c

    .line 326
    const/4 v2, 0x0

    return v2

    .line 328
    :cond_c
    invoke-static {v1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->access$1600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z

    move-result v2

    return v2
.end method

.method updateSettingsForDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .registers 4
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 429
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 433
    const/4 v0, 0x1

    return v0

    .line 435
    :cond_13
    const/4 v0, 0x0

    return v0
.end method
