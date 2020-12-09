.class public Lcom/android/server/webkit/SystemImpl;
.super Ljava/lang/Object;
.source "SystemImpl.java"

# interfaces
.implements Lcom/android/server/webkit/SystemInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/SystemImpl$LazyHolder;
    }
.end annotation


# static fields
.field private static final PACKAGE_FLAGS:I = 0x104004c0

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_AVAILABILITY:Ljava/lang/String; = "availableByDefault"

.field private static final TAG_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final TAG_FALLBACK:Ljava/lang/String; = "isFallback"

.field private static final TAG_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final TAG_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final TAG_START:Ljava/lang/String; = "webviewproviders"

.field private static final TAG_WEBVIEW_PROVIDER:Ljava/lang/String; = "webviewprovider"


# instance fields
.field private final mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const-class v0, Lcom/android/server/webkit/SystemImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 14

    .line 73
    const-string/jumbo v0, "true"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    nop

    .line 75
    nop

    .line 76
    nop

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    const/4 v2, 0x0

    :try_start_f
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1170006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_1e} :catch_ce
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1e} :catch_ce
    .catchall {:try_start_f .. :try_end_1e} :catchall_cb

    .line 81
    :try_start_1e
    const-string/jumbo v4, "webviewproviders"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 v4, 0x0

    move v5, v4

    .line 83
    :goto_26
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 84
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_2d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_2d} :catch_c8
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2d} :catch_c8
    .catchall {:try_start_1e .. :try_end_2d} :catchall_c6

    .line 85
    if-nez v6, :cond_4d

    .line 86
    nop

    .line 129
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 131
    if-eqz v4, :cond_45

    .line 135
    nop

    .line 136
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/webkit/WebViewProviderInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebViewProviderInfo;

    iput-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    .line 137
    return-void

    .line 132
    :cond_45
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "There must be at least one WebView package that is available by default"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_4d
    :try_start_4d
    const-string/jumbo v7, "webviewprovider"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 89
    const-string/jumbo v6, "packageName"

    invoke-interface {v3, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 90
    if-eqz v8, :cond_b5

    .line 94
    const-string v6, "description"

    invoke-interface {v3, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 95
    if-eqz v9, :cond_ad

    .line 99
    const-string v6, "availableByDefault"

    .line 100
    invoke-interface {v3, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 99
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 101
    const-string v6, "isFallback"

    .line 102
    invoke-interface {v3, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 103
    new-instance v6, Landroid/webkit/WebViewProviderInfo;

    .line 105
    invoke-static {v3}, Lcom/android/server/webkit/SystemImpl;->readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;

    move-result-object v12

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Landroid/webkit/WebViewProviderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V

    .line 106
    iget-boolean v7, v6, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-eqz v7, :cond_a3

    .line 107
    add-int/lit8 v5, v5, 0x1

    .line 108
    iget-boolean v7, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v7, :cond_9b

    .line 112
    const/4 v7, 0x1

    if-gt v5, v7, :cond_93

    goto :goto_a3

    .line 113
    :cond_93
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "There can be at most one WebView fallback package."

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_9b
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Each WebView fallback package must be available by default."

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_a3
    :goto_a3
    iget-boolean v7, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v7, :cond_a9

    .line 118
    add-int/lit8 v4, v4, 0x1

    .line 120
    :cond_a9
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    goto :goto_c4

    .line 96
    :cond_ad
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "WebView provider in framework resources missing description"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_b5
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "WebView provider in framework resources missing package name"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_bd
    sget-object v6, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    const-string v7, "Found an element that is not a WebView provider"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4d .. :try_end_c4} :catch_c8
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_c4} :catch_c8
    .catchall {:try_start_4d .. :try_end_c4} :catchall_c6

    .line 125
    :goto_c4
    goto/16 :goto_26

    .line 129
    :catchall_c6
    move-exception v0

    goto :goto_e6

    .line 126
    :catch_c8
    move-exception v0

    move-object v2, v3

    goto :goto_cf

    .line 129
    :catchall_cb
    move-exception v0

    move-object v3, v2

    goto :goto_e6

    .line 126
    :catch_ce
    move-exception v0

    .line 127
    :goto_cf
    :try_start_cf
    new-instance v1, Landroid/util/AndroidRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when parsing WebView config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e6
    .catchall {:try_start_cf .. :try_end_e6} :catchall_cb

    .line 129
    :goto_e6
    if-eqz v3, :cond_eb

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_eb
    throw v0
.end method

.method synthetic constructor <init>(Lcom/android/server/webkit/SystemImpl$1;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Lcom/android/server/webkit/SystemImpl;-><init>()V

    return-void
.end method

.method private enablePackageForUser(Ljava/lang/String;ZI)V
    .registers 10

    .line 222
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 224
    if-eqz p2, :cond_9

    const/4 v1, 0x0

    move v2, v1

    goto :goto_b

    .line 225
    :cond_9
    const/4 v1, 0x3

    move v2, v1

    :goto_b
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 222
    move-object v1, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_12} :catch_13

    .line 230
    goto :goto_44

    .line 227
    :catch_13
    move-exception v0

    .line 228
    sget-object v1, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_25

    const-string p2, "enable "

    goto :goto_27

    :cond_25
    const-string p2, "disable "

    :goto_27
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_44
    return-void
.end method

.method public static getInstance()Lcom/android/server/webkit/SystemImpl;
    .registers 1

    .line 70
    invoke-static {}, Lcom/android/server/webkit/SystemImpl$LazyHolder;->access$100()Lcom/android/server/webkit/SystemImpl;

    move-result-object v0

    return-object v0
.end method

.method private static readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 160
    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 161
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "signature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 163
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    goto :goto_9

    .line 166
    :cond_24
    sget-object v2, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    const-string v3, "Found an element in a webview provider that is not a signature"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 169
    :cond_2c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public enableFallbackLogic(Z)V
    .registers 4

    .line 208
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 209
    nop

    .line 208
    const-string/jumbo v1, "webview_fallback_logic_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    return-void
.end method

.method public enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    .line 214
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 215
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 216
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/webkit/SystemImpl;->enablePackageForUser(Ljava/lang/String;ZI)V

    .line 217
    goto :goto_11

    .line 218
    :cond_23
    return-void
.end method

.method public ensureZygoteStarted()V
    .registers 1

    .line 270
    invoke-static {}, Landroid/webkit/WebViewZygote;->getProcess()Landroid/os/ZygoteProcess;

    .line 271
    return-void
.end method

.method public getFactoryPackageVersion(Ljava/lang/String;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 148
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 149
    const/high16 v1, 0x200000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    .line 149
    return-wide v0
.end method

.method public getMultiProcessSetting(Landroid/content/Context;)I
    .registers 4

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "webview_multiprocess"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 241
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 242
    iget-object p1, p1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const v1, 0x104004c0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebViewProviderInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/webkit/UserPackage;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object p2, p2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const v0, 0x104004c0

    invoke-static {p1, p2, v0}, Landroid/webkit/UserPackage;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "webview_provider"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    return-object v0
.end method

.method public isFallbackLogicEnabled()Z
    .registers 4

    .line 202
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "webview_fallback_logic_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public isMultiProcessDefaultEnabled()Z
    .registers 2

    .line 278
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-gtz v0, :cond_e

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method public killPackageDependents(Ljava/lang/String;)V
    .registers 4

    .line 193
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->killPackageDependents(Ljava/lang/String;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 196
    goto :goto_a

    .line 195
    :catch_9
    move-exception p1

    .line 197
    :goto_a
    return-void
.end method

.method public notifyZygote(Z)V
    .registers 2

    .line 265
    invoke-static {p1}, Landroid/webkit/WebViewZygote;->setMultiprocessEnabled(Z)V

    .line 266
    return-void
.end method

.method public onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I
    .registers 2

    .line 174
    invoke-static {p1}, Landroid/webkit/WebViewFactory;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result p1

    return p1
.end method

.method public setMultiProcessSetting(Landroid/content/Context;I)V
    .registers 4

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "webview_multiprocess"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    return-void
.end method

.method public systemIsDebuggable()Z
    .registers 2

    .line 235
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 187
    if-nez p2, :cond_8

    const-string p2, ""

    .line 185
    :cond_8
    const-string/jumbo v0, "webview_provider"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 188
    return-void
.end method
