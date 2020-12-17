.class final Lcom/android/server/display/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;,
        Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;,
        Lcom/android/server/display/PersistentDataStore$Injector;,
        Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;,
        Lcom/android/server/display/PersistentDataStore$StableDeviceValues;,
        Lcom/android/server/display/PersistentDataStore$DisplayState;
    }
.end annotation


# static fields
.field private static final ATTR_BRIGHTNESS_LEVEL:Ljava/lang/String; = "brightness_level"

.field private static final ATTR_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final ATTR_DEVICE_ADDRESS:Ljava/lang/String; = "deviceAddress"

.field private static final ATTR_DEVICE_ALIAS:Ljava/lang/String; = "deviceAlias"

.field private static final ATTR_DEVICE_NAME:Ljava/lang/String; = "deviceName"

.field private static final ATTR_LUX:Ljava/lang/String; = "lux"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field private static final ATTR_TIME_STAMP:Ljava/lang/String; = "timestamp"

.field private static final ATTR_UNIQUE_ID:Ljava/lang/String; = "unique-id"

.field private static final ATTR_USER_ADJUSTMENT:Ljava/lang/String; = "user_adjustment"

.field private static final ATTR_USER_BRIGHTNESS:Ljava/lang/String; = "user_brightness"

.field private static final ATTR_USER_LUX:Ljava/lang/String; = "user_lux"

.field private static final ATTR_USER_SERIAL:Ljava/lang/String; = "user-serial"

.field static final TAG:Ljava/lang/String; = "DisplayManager"

.field private static final TAG_BRIGHTNESS_CONFIGURATION:Ljava/lang/String; = "brightness-configuration"

.field private static final TAG_BRIGHTNESS_CONFIGURATIONS:Ljava/lang/String; = "brightness-configurations"

.field private static final TAG_BRIGHTNESS_CURVE:Ljava/lang/String; = "brightness-curve"

.field private static final TAG_BRIGHTNESS_POINT:Ljava/lang/String; = "brightness-point"

.field private static final TAG_COLOR_MODE:Ljava/lang/String; = "color-mode"

.field private static final TAG_DISPLAY:Ljava/lang/String; = "display"

.field private static final TAG_DISPLAY_MANAGER_STATE:Ljava/lang/String; = "display-manager-state"

.field private static final TAG_DISPLAY_STATES:Ljava/lang/String; = "display-states"

.field private static final TAG_REMEMBERED_WIFI_DISPLAYS:Ljava/lang/String; = "remembered-wifi-displays"

.field private static final TAG_STABLE_DEVICE_VALUES:Ljava/lang/String; = "stable-device-values"

.field private static final TAG_STABLE_DISPLAY_HEIGHT:Ljava/lang/String; = "stable-display-height"

.field private static final TAG_STABLE_DISPLAY_WIDTH:Ljava/lang/String; = "stable-display-width"

.field private static final TAG_USER_BRIGHTNESS_CONFIGURATION:Ljava/lang/String; = "user-brightness-configuration"

.field private static final TAG_WIFI_DISPLAY:Ljava/lang/String; = "wifi-display"


# instance fields
.field private mBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

.field private mDirty:Z

.field private final mDisplayStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/PersistentDataStore$DisplayState;",
            ">;"
        }
    .end annotation
.end field

.field private mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

.field private mLoaded:Z

.field private mRememberedWifiDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/WifiDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private final mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

.field private mUserBrightnessLevelConfigurations:Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 140
    new-instance v0, Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/display/PersistentDataStore;-><init>(Lcom/android/server/display/PersistentDataStore$Injector;)V

    .line 141
    return-void
.end method

.method constructor <init>(Lcom/android/server/display/PersistentDataStore$Injector;)V
    .registers 4
    .param p1, "injector"  # Lcom/android/server/display/PersistentDataStore$Injector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    .line 125
    new-instance v0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;-><init>(Lcom/android/server/display/PersistentDataStore$1;)V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    .line 128
    new-instance v0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 993
    new-instance v0, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;

    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mUserBrightnessLevelConfigurations:Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;

    .line 145
    iput-object p1, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    .line 146
    return-void
.end method

.method private clearState()V
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 315
    return-void
.end method

.method private findRememberedWifiDisplay(Ljava/lang/String;)I
    .registers 5
    .param p1, "deviceAddress"  # Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 234
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 235
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 236
    return v1

    .line 234
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 239
    .end local v1  # "i":I
    :cond_1f
    const/4 v1, -0x1

    return v1
.end method

.method private getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;
    .registers 6
    .param p1, "uniqueId"  # Ljava/lang/String;
    .param p2, "createIfAbsent"  # Z

    .line 292
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 293
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 294
    .local v0, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    if-nez v0, :cond_1e

    if-eqz p2, :cond_1e

    .line 295
    new-instance v1, Lcom/android/server/display/PersistentDataStore$DisplayState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/PersistentDataStore$DisplayState;-><init>(Lcom/android/server/display/PersistentDataStore$1;)V

    move-object v0, v1

    .line 296
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 299
    :cond_1e
    return-object v0
.end method

.method private load()V
    .registers 7

    .line 318
    const-string v0, "Failed to load display manager persistent store data."

    const-string v1, "DisplayManager"

    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->clearState()V

    .line 322
    :try_start_7
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore$Injector;->openRead()Ljava/io/InputStream;

    move-result-object v2
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_d} :catch_44

    .line 325
    .local v2, "is":Ljava/io/InputStream;
    nop

    .line 329
    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 330
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 331
    invoke-direct {p0, v3}, Lcom/android/server/display/PersistentDataStore;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_23} :catch_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_23} :catch_29
    .catchall {:try_start_e .. :try_end_23} :catchall_27

    .line 339
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 340
    goto :goto_3f

    .line 339
    .end local v3  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_27
    move-exception v0

    goto :goto_40

    .line 335
    :catch_29
    move-exception v3

    .line 336
    .local v3, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2a
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->clearState()V
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_27

    .line 339
    .end local v3  # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 340
    goto :goto_3f

    .line 332
    :catch_34
    move-exception v3

    .line 333
    .local v3, "ex":Ljava/io/IOException;
    :try_start_35
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->clearState()V
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_27

    .line 339
    .end local v3  # "ex":Ljava/io/IOException;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 340
    nop

    .line 341
    :goto_3f
    return-void

    .line 339
    :goto_40
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 323
    .end local v2  # "is":Ljava/io/InputStream;
    :catch_44
    move-exception v0

    .line 324
    .local v0, "ex":Ljava/io/FileNotFoundException;
    return-void
.end method

.method private loadDisplaysFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 411
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 412
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 413
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 414
    const/4 v1, 0x0

    const-string/jumbo v2, "unique-id"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "uniqueId":Ljava/lang/String;
    if-eqz v2, :cond_3f

    .line 419
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 423
    new-instance v3, Lcom/android/server/display/PersistentDataStore$DisplayState;

    invoke-direct {v3, v1}, Lcom/android/server/display/PersistentDataStore$DisplayState;-><init>(Lcom/android/server/display/PersistentDataStore$1;)V

    move-object v1, v3

    .line 424
    .local v1, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore$DisplayState;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 425
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .end local v1  # "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    .end local v2  # "uniqueId":Ljava/lang/String;
    goto :goto_4

    .line 420
    .restart local v2  # "uniqueId":Ljava/lang/String;
    :cond_37
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Found duplicate display."

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_3f
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Missing unique-id attribute on display."

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    .end local v2  # "uniqueId":Ljava/lang/String;
    :cond_47
    return-void
.end method

.method private loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 364
    const-string v0, "display-manager-state"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 365
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 366
    .local v0, "outerDepth":I
    :cond_9
    :goto_9
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 367
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "remembered-wifi-displays"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 368
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->loadRememberedWifiDisplaysFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 370
    :cond_1f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "display-states"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 371
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->loadDisplaysFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 373
    :cond_2e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stable-device-values"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 374
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 376
    :cond_40
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "brightness-configurations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 377
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 379
    :cond_51
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "user-brightness-configuration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 380
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mUserBrightnessLevelConfigurations:Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 383
    :cond_64
    return-void
.end method

.method private loadRememberedWifiDisplaysFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 387
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 388
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 389
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wifi-display"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 390
    const/4 v1, 0x0

    const-string v2, "deviceAddress"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "deviceAddress":Ljava/lang/String;
    const-string v3, "deviceName"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 392
    .local v10, "deviceName":Ljava/lang/String;
    const-string v3, "deviceAlias"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "deviceAlias":Ljava/lang/String;
    if-eqz v2, :cond_4e

    if-eqz v10, :cond_4e

    .line 397
    invoke-direct {p0, v2}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_46

    .line 402
    iget-object v11, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    new-instance v12, Landroid/hardware/display/WifiDisplay;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v12

    move-object v4, v2

    move-object v5, v10

    move-object v6, v1

    invoke-direct/range {v3 .. v9}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    .end local v1  # "deviceAlias":Ljava/lang/String;
    .end local v2  # "deviceAddress":Ljava/lang/String;
    .end local v10  # "deviceName":Ljava/lang/String;
    goto :goto_4

    .line 398
    .restart local v1  # "deviceAlias":Ljava/lang/String;
    .restart local v2  # "deviceAddress":Ljava/lang/String;
    .restart local v10  # "deviceName":Ljava/lang/String;
    :cond_46
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Found duplicate wifi display device address."

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 394
    :cond_4e
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Missing deviceAddress or deviceName attribute on wifi-display."

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 407
    .end local v1  # "deviceAlias":Ljava/lang/String;
    .end local v2  # "deviceAddress":Ljava/lang/String;
    .end local v10  # "deviceName":Ljava/lang/String;
    :cond_56
    return-void
.end method

.method private save()V
    .registers 6

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore$Injector;->startWrite()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_2f

    .line 347
    .local v0, "os":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 349
    .local v1, "success":Z
    :try_start_7
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 350
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 351
    invoke-direct {p0, v2}, Lcom/android/server/display/PersistentDataStore;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 352
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_28

    .line 353
    const/4 v1, 0x1

    .line 355
    .end local v2  # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_21
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/PersistentDataStore$Injector;->finishWrite(Ljava/io/OutputStream;Z)V

    .line 356
    nop

    .line 359
    .end local v1  # "success":Z
    goto :goto_37

    .line 355
    .restart local v1  # "success":Z
    :catchall_28
    move-exception v2

    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/display/PersistentDataStore$Injector;->finishWrite(Ljava/io/OutputStream;Z)V

    .end local p0  # "this":Lcom/android/server/display/PersistentDataStore;
    throw v2
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2f} :catch_2f

    .line 357
    .end local v0  # "os":Ljava/io/OutputStream;
    .end local v1  # "success":Z
    .restart local p0  # "this":Lcom/android/server/display/PersistentDataStore;
    :catch_2f
    move-exception v0

    .line 358
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed to save display manager persistent store data."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    .end local v0  # "ex":Ljava/io/IOException;
    :goto_37
    return-void
.end method

.method private saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 11
    .param p1, "serializer"  # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 432
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 433
    const-string v0, "display-manager-state"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    const-string/jumbo v1, "remembered-wifi-displays"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 435
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/WifiDisplay;

    .line 436
    .local v4, "display":Landroid/hardware/display/WifiDisplay;
    const-string/jumbo v5, "wifi-display"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 437
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v6

    const-string v7, "deviceAddress"

    invoke-interface {p1, v2, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 438
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "deviceName"

    invoke-interface {p1, v2, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_52

    .line 440
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v6

    const-string v7, "deviceAlias"

    invoke-interface {p1, v2, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    :cond_52
    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 443
    .end local v4  # "display":Landroid/hardware/display/WifiDisplay;
    goto :goto_1f

    .line 444
    :cond_56
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 445
    const-string v1, "display-states"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 446
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 447
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/PersistentDataStore$DisplayState;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 448
    .local v5, "uniqueId":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 449
    .local v6, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    const-string v7, "display"

    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    const-string/jumbo v8, "unique-id"

    invoke-interface {p1, v2, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 451
    invoke-virtual {v6, p1}, Lcom/android/server/display/PersistentDataStore$DisplayState;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 452
    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 453
    .end local v4  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/PersistentDataStore$DisplayState;>;"
    .end local v5  # "uniqueId":Ljava/lang/String;
    .end local v6  # "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    goto :goto_68

    .line 454
    :cond_92
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 455
    const-string/jumbo v1, "stable-device-values"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 456
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-virtual {v3, p1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 457
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 458
    const-string v1, "brightness-configurations"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 459
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {v3, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 460
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 461
    const-string/jumbo v1, "user-brightness-configuration"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 463
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mUserBrightnessLevelConfigurations:Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;

    invoke-virtual {v3, p1}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 464
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 465
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 467
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 468
    return-void
.end method

.method private setDirty()V
    .registers 2

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 311
    return-void
.end method


# virtual methods
.method public applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;
    .registers 12
    .param p1, "display"  # Landroid/hardware/display/WifiDisplay;

    .line 170
    if-eqz p1, :cond_42

    .line 171
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v1

    .line 175
    .local v1, "index":I
    if-ltz v1, :cond_1c

    .line 176
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_1c
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 179
    new-instance v9, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v7

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v8

    move-object v2, v9

    move-object v5, v0

    invoke-direct/range {v2 .. v8}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 179
    return-object v9

    .line 183
    .end local v0  # "alias":Ljava/lang/String;
    .end local v1  # "index":I
    :cond_42
    return-object p1
.end method

.method public applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;
    .registers 7
    .param p1, "displays"  # [Landroid/hardware/display/WifiDisplay;

    .line 187
    move-object v0, p1

    .line 188
    .local v0, "results":[Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_1e

    .line 189
    array-length v1, p1

    .line 190
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_1e

    .line 191
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v3

    .line 192
    .local v3, "result":Landroid/hardware/display/WifiDisplay;
    aget-object v4, p1, v2

    if-eq v3, v4, :cond_1b

    .line 193
    if-ne v0, p1, :cond_19

    .line 194
    new-array v0, v1, [Landroid/hardware/display/WifiDisplay;

    .line 195
    const/4 v4, 0x0

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    :cond_19
    aput-object v3, v0, v2

    .line 190
    .end local v3  # "result":Landroid/hardware/display/WifiDisplay;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 201
    .end local v1  # "count":I
    .end local v2  # "i":I
    :cond_1e
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 471
    const-string v0, "PersistentDataStore"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDirty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    const-string v0, "  RememberedWifiDisplays:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ": "

    const-string v4, "    "

    if-eqz v2, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/WifiDisplay;

    .line 477
    .local v2, "display":Landroid/hardware/display/WifiDisplay;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x1

    .end local v0  # "i":I
    .local v4, "i":I
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    .end local v2  # "display":Landroid/hardware/display/WifiDisplay;
    move v0, v4

    goto :goto_3d

    .line 479
    .end local v4  # "i":I
    .restart local v0  # "i":I
    :cond_69
    const-string v1, "  DisplayStates:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    const/4 v0, 0x0

    .line 481
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_79
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v5, "      "

    if-eqz v2, :cond_b2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 482
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/PersistentDataStore$DisplayState;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v0, 0x1

    .end local v0  # "i":I
    .local v7, "i":I
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/PersistentDataStore$DisplayState;

    invoke-virtual {v0, p1, v5}, Lcom/android/server/display/PersistentDataStore$DisplayState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 484
    .end local v2  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/PersistentDataStore$DisplayState;>;"
    move v0, v7

    goto :goto_79

    .line 485
    .end local v7  # "i":I
    .restart local v0  # "i":I
    :cond_b2
    const-string v1, "  StableDeviceValues:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-virtual {v1, p1, v5}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 487
    const-string v1, "  BrightnessConfigurations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {v1, p1, v5}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 490
    const-string v1, "  UserBrightnessLevelConfigurations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mUserBrightnessLevelConfigurations:Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;

    invoke-virtual {v1, p1, v5}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)Z
    .registers 4
    .param p1, "deviceAddress"  # Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v0

    .line 224
    .local v0, "index":I
    if-ltz v0, :cond_13

    .line 225
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 226
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 227
    const/4 v1, 0x1

    return v1

    .line 229
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 3
    .param p1, "userSerial"  # I

    .line 287
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 288
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getColorMode(Lcom/android/server/display/DisplayDevice;)I
    .registers 5
    .param p1, "device"  # Lcom/android/server/display/DisplayDevice;

    .line 243
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 244
    return v1

    .line 246
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v0

    .line 247
    .local v0, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    if-nez v0, :cond_14

    .line 248
    return v1

    .line 250
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore$DisplayState;->getColorMode()I

    move-result v1

    return v1
.end method

.method public getRememberedWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .registers 4
    .param p1, "deviceAddress"  # Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, "index":I
    if-ltz v0, :cond_12

    .line 159
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/WifiDisplay;

    return-object v1

    .line 161
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRememberedWifiDisplays()[Landroid/hardware/display/WifiDisplay;
    .registers 3

    .line 165
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 166
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method public getStableDisplaySize()Landroid/graphics/Point;
    .registers 2

    .line 266
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 267
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-static {v0}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->access$100(Lcom/android/server/display/PersistentDataStore$StableDeviceValues;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getUserBrightnessLevelConfiguration(I)Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;
    .registers 3
    .param p1, "userSerial"  # I

    .line 979
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 980
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mUserBrightnessLevelConfigurations:Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->getBrightnessConfiguration(I)Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public loadIfNeeded()V
    .registers 2

    .line 303
    iget-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    if-nez v0, :cond_a

    .line 304
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->load()V

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    .line 307
    :cond_a
    return-void
.end method

.method public rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z
    .registers 5
    .param p1, "display"  # Landroid/hardware/display/WifiDisplay;

    .line 205
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 207
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v0

    .line 208
    .local v0, "index":I
    if-ltz v0, :cond_23

    .line 209
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/WifiDisplay;

    .line 210
    .local v1, "other":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 211
    const/4 v2, 0x0

    return v2

    .line 213
    :cond_1d
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v1  # "other":Landroid/hardware/display/WifiDisplay;
    goto :goto_28

    .line 215
    :cond_23
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :goto_28
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 218
    const/4 v1, 0x1

    return v1
.end method

.method public saveIfNeeded()V
    .registers 2

    .line 149
    iget-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    if-eqz v0, :cond_a

    .line 150
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->save()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 153
    :cond_a
    return-void
.end method

.method public setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .registers 5
    .param p1, "c"  # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userSerial"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 279
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 280
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->access$200(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 282
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 284
    :cond_e
    return-void
.end method

.method public setColorMode(Lcom/android/server/display/DisplayDevice;I)Z
    .registers 7
    .param p1, "device"  # Lcom/android/server/display/DisplayDevice;
    .param p2, "colorMode"  # I

    .line 254
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 255
    return v1

    .line 257
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v0

    .line 258
    .local v0, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    invoke-virtual {v0, p2}, Lcom/android/server/display/PersistentDataStore$DisplayState;->setColorMode(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 259
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 260
    return v2

    .line 262
    :cond_1b
    return v1
.end method

.method public setStableDisplaySize(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "size"  # Landroid/graphics/Point;

    .line 271
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 272
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->setDisplaySize(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 273
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 275
    :cond_e
    return-void
.end method

.method public setUserBrightnessLevelConfigurationForUser(Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;I)V
    .registers 4
    .param p1, "c"  # Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;
    .param p2, "userSerial"  # I

    .line 971
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 972
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mUserBrightnessLevelConfigurations:Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;->access$400(Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfigurations;Lcom/android/server/display/PersistentDataStore$UserBrightnessLevelConfiguration;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 974
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 976
    :cond_e
    return-void
.end method
