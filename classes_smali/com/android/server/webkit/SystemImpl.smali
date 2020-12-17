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
    .registers 16

    .line 73
    const-string/jumbo v0, "true"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, "numFallbackPackages":I
    const/4 v2, 0x0

    .line 76
    .local v2, "numAvailableByDefaultPackages":I
    const/4 v3, 0x0

    .line 77
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v4, "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    :try_start_e
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1170006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v3, v5

    .line 81
    const-string/jumbo v5, "webviewproviders"

    invoke-static {v3, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 83
    :goto_24
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 84
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_2b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_2b} :catch_cc
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2b} :catch_cc
    .catchall {:try_start_e .. :try_end_2b} :catchall_ca

    .line 85
    .local v5, "element":Ljava/lang/String;
    if-nez v5, :cond_4b

    .line 86
    nop

    .line 129
    .end local v5  # "element":Ljava/lang/String;
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 131
    if-eqz v2, :cond_43

    .line 135
    nop

    .line 136
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/webkit/WebViewProviderInfo;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/WebViewProviderInfo;

    iput-object v0, p0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    .line 137
    return-void

    .line 132
    :cond_43
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v5, "There must be at least one WebView package that is available by default"

    invoke-direct {v0, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    .restart local v5  # "element":Ljava/lang/String;
    :cond_4b
    :try_start_4b
    const-string/jumbo v6, "webviewprovider"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c1

    .line 89
    const-string/jumbo v6, "packageName"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_b9

    .line 94
    const-string v8, "description"

    invoke-interface {v3, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    .line 95
    .local v14, "description":Ljava/lang/String;
    if-eqz v14, :cond_b1

    .line 99
    const-string v8, "availableByDefault"

    .line 100
    invoke-interface {v3, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 99
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 101
    .local v11, "availableByDefault":Z
    const-string/jumbo v8, "isFallback"

    .line 102
    invoke-interface {v3, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 103
    .local v12, "isFallback":Z
    new-instance v7, Landroid/webkit/WebViewProviderInfo;

    .line 105
    invoke-static {v3}, Lcom/android/server/webkit/SystemImpl;->readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;

    move-result-object v13

    move-object v8, v7

    move-object v9, v6

    move-object v10, v14

    invoke-direct/range {v8 .. v13}, Landroid/webkit/WebViewProviderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V

    .line 106
    .local v7, "currentProvider":Landroid/webkit/WebViewProviderInfo;
    iget-boolean v8, v7, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-eqz v8, :cond_a6

    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 108
    iget-boolean v8, v7, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v8, :cond_9e

    .line 112
    const/4 v8, 0x1

    if-gt v1, v8, :cond_96

    goto :goto_a6

    .line 113
    :cond_96
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v8, "There can be at most one WebView fallback package."

    invoke-direct {v0, v8}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1  # "numFallbackPackages":I
    .end local v2  # "numAvailableByDefaultPackages":I
    .end local v3  # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4  # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .end local p0  # "this":Lcom/android/server/webkit/SystemImpl;
    throw v0

    .line 109
    .restart local v1  # "numFallbackPackages":I
    .restart local v2  # "numAvailableByDefaultPackages":I
    .restart local v3  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4  # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .restart local p0  # "this":Lcom/android/server/webkit/SystemImpl;
    :cond_9e
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v8, "Each WebView fallback package must be available by default."

    invoke-direct {v0, v8}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1  # "numFallbackPackages":I
    .end local v2  # "numAvailableByDefaultPackages":I
    .end local v3  # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4  # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .end local p0  # "this":Lcom/android/server/webkit/SystemImpl;
    throw v0

    .line 117
    .restart local v1  # "numFallbackPackages":I
    .restart local v2  # "numAvailableByDefaultPackages":I
    .restart local v3  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4  # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .restart local p0  # "this":Lcom/android/server/webkit/SystemImpl;
    :cond_a6
    :goto_a6
    iget-boolean v8, v7, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v8, :cond_ac

    .line 118
    add-int/lit8 v2, v2, 0x1

    .line 120
    :cond_ac
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    nop

    .end local v6  # "packageName":Ljava/lang/String;
    .end local v7  # "currentProvider":Landroid/webkit/WebViewProviderInfo;
    .end local v11  # "availableByDefault":Z
    .end local v12  # "isFallback":Z
    .end local v14  # "description":Ljava/lang/String;
    goto :goto_c8

    .line 96
    .restart local v6  # "packageName":Ljava/lang/String;
    .restart local v14  # "description":Ljava/lang/String;
    :cond_b1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v7, "WebView provider in framework resources missing description"

    invoke-direct {v0, v7}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1  # "numFallbackPackages":I
    .end local v2  # "numAvailableByDefaultPackages":I
    .end local v3  # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4  # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .end local p0  # "this":Lcom/android/server/webkit/SystemImpl;
    throw v0

    .line 91
    .end local v14  # "description":Ljava/lang/String;
    .restart local v1  # "numFallbackPackages":I
    .restart local v2  # "numAvailableByDefaultPackages":I
    .restart local v3  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4  # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .restart local p0  # "this":Lcom/android/server/webkit/SystemImpl;
    :cond_b9
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v7, "WebView provider in framework resources missing package name"

    invoke-direct {v0, v7}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1  # "numFallbackPackages":I
    .end local v2  # "numAvailableByDefaultPackages":I
    .end local v3  # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4  # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .end local p0  # "this":Lcom/android/server/webkit/SystemImpl;
    throw v0

    .line 123
    .end local v6  # "packageName":Ljava/lang/String;
    .restart local v1  # "numFallbackPackages":I
    .restart local v2  # "numAvailableByDefaultPackages":I
    .restart local v3  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4  # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .restart local p0  # "this":Lcom/android/server/webkit/SystemImpl;
    :cond_c1
    sget-object v6, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    const-string v7, "Found an element that is not a WebView provider"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4b .. :try_end_c8} :catch_cc
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_c8} :catch_cc
    .catchall {:try_start_4b .. :try_end_c8} :catchall_ca

    .line 125
    .end local v5  # "element":Ljava/lang/String;
    :goto_c8
    goto/16 :goto_24

    .line 129
    :catchall_ca
    move-exception v0

    goto :goto_e4

    .line 126
    :catch_cc
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    :try_start_cd
    new-instance v5, Landroid/util/AndroidRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error when parsing WebView config "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1  # "numFallbackPackages":I
    .end local v2  # "numAvailableByDefaultPackages":I
    .end local v3  # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4  # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .end local p0  # "this":Lcom/android/server/webkit/SystemImpl;
    throw v5
    :try_end_e4
    .catchall {:try_start_cd .. :try_end_e4} :catchall_ca

    .line 129
    .end local v0  # "e":Ljava/lang/Exception;
    .restart local v1  # "numFallbackPackages":I
    .restart local v2  # "numAvailableByDefaultPackages":I
    .restart local v3  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4  # "webViewProviders":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/WebViewProviderInfo;>;"
    .restart local p0  # "this":Lcom/android/server/webkit/SystemImpl;
    :goto_e4
    if-eqz v3, :cond_e9

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_e9
    throw v0
.end method

.method synthetic constructor <init>(Lcom/android/server/webkit/SystemImpl$1;)V
    .registers 2
    .param p1, "x0"  # Lcom/android/server/webkit/SystemImpl$1;

    .line 51
    invoke-direct {p0}, Lcom/android/server/webkit/SystemImpl;-><init>()V

    return-void
.end method

.method private enablePackageForUser(Ljava/lang/String;ZI)V
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "enable"  # Z
    .param p3, "userId"  # I

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
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/webkit/SystemImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_25

    const-string v3, "enable "

    goto :goto_27

    :cond_25
    const-string v3, "disable "

    :goto_27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v0  # "e":Ljava/lang/Exception;
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
    .param p0, "parser"  # Landroid/content/res/XmlResourceParser;
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
    .local v0, "signatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 160
    .local v1, "outerDepth":I
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
    .local v2, "signature":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v2  # "signature":Ljava/lang/String;
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

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method


# virtual methods
.method public enableFallbackLogic(Z)V
    .registers 4
    .param p1, "enable"  # Z

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
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "enable"  # Z

    .line 214
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 215
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 216
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p2, p3, v3}, Lcom/android/server/webkit/SystemImpl;->enablePackageForUser(Ljava/lang/String;ZI)V

    .line 217
    .end local v2  # "userInfo":Landroid/content/pm/UserInfo;
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
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
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
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/high16 v1, 0x200000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    .line 149
    return-wide v1
.end method

.method public getMultiProcessSetting(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "webview_multiprocess"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p1, "configInfo"  # Landroid/webkit/WebViewProviderInfo;
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
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const v2, 0x104004c0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1
.end method

.method public getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "configInfo"  # Landroid/webkit/WebViewProviderInfo;
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
    iget-object v0, p2, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const v1, 0x104004c0

    invoke-static {p1, v0, v1}, Landroid/webkit/UserPackage;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "webview_provider"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .param p1, "packageName"  # Ljava/lang/String;

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
    move-exception v0

    .line 197
    :goto_a
    return-void
.end method

.method public notifyZygote(Z)V
    .registers 2
    .param p1, "enableMultiProcess"  # Z

    .line 265
    invoke-static {p1}, Landroid/webkit/WebViewZygote;->setMultiprocessEnabled(Z)V

    .line 266
    return-void
.end method

.method public onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I
    .registers 3
    .param p1, "packageInfo"  # Landroid/content/pm/PackageInfo;

    .line 174
    invoke-static {p1}, Landroid/webkit/WebViewFactory;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result v0

    return v0
.end method

.method public setMultiProcessSetting(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "value"  # I

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "webview_multiprocess"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    return-void
.end method

.method public systemIsDebuggable()Z
    .registers 2

    .line 235
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return v0
.end method

.method public updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "newProviderName"  # Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 187
    if-nez p2, :cond_9

    const-string v1, ""

    goto :goto_a

    :cond_9
    move-object v1, p2

    .line 185
    :goto_a
    const-string/jumbo v2, "webview_provider"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 188
    return-void
.end method
