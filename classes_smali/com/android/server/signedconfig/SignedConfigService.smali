.class public Lcom/android/server/signedconfig/SignedConfigService;
.super Ljava/lang/Object;
.source "SignedConfigService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/signedconfig/SignedConfigService$UpdateReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final KEY_GLOBAL_SETTINGS:Ljava/lang/String; = "android.settings.global"

.field private static final KEY_GLOBAL_SETTINGS_SIGNATURE:Ljava/lang/String; = "android.settings.global.signature"

.field private static final TAG:Ljava/lang/String; = "SignedConfig"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPacMan:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/signedconfig/SignedConfigService;->mContext:Landroid/content/Context;

    .line 61
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/signedconfig/SignedConfigService;->mPacMan:Landroid/content/pm/PackageManagerInternal;

    .line 62
    return-void
.end method

.method public static registerUpdateReceiver(Landroid/content/Context;)V
    .registers 4

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 124
    new-instance v1, Lcom/android/server/signedconfig/SignedConfigService$UpdateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/signedconfig/SignedConfigService$UpdateReceiver;-><init>(Lcom/android/server/signedconfig/SignedConfigService$1;)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    return-void
.end method


# virtual methods
.method handlePackageBroadcast(Landroid/content/Intent;)V
    .registers 8

    .line 66
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 67
    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 69
    :goto_c
    if-nez p1, :cond_f

    .line 70
    return-void

    .line 72
    :cond_f
    iget-object v0, p0, Lcom/android/server/signedconfig/SignedConfigService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/android/server/signedconfig/SignedConfigService;->mPacMan:Landroid/content/pm/PackageManagerInternal;

    const/16 v2, 0x80

    const/16 v3, 0x3e8

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 75
    const-string v2, "SignedConfig"

    if-nez v1, :cond_44

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got null PackageInfo for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; user "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 79
    :cond_44
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 80
    if-nez v0, :cond_4b

    .line 82
    return-void

    .line 84
    :cond_4b
    const-string v1, "android.settings.global"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 85
    const-string v3, "android.settings.global.signature"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 86
    new-instance v4, Lcom/android/server/signedconfig/SignedConfigEvent;

    invoke-direct {v4}, Lcom/android/server/signedconfig/SignedConfigEvent;-><init>()V

    .line 88
    const/4 v5, 0x1

    :try_start_61
    iput v5, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->type:I

    .line 89
    iput-object p1, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->fromPackage:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6d
    .catchall {:try_start_61 .. :try_end_6d} :catchall_a7

    .line 94
    :try_start_6d
    new-instance v3, Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6d .. :try_end_7c} :catch_8b
    .catchall {:try_start_6d .. :try_end_7c} :catchall_a7

    .line 100
    nop

    .line 105
    :try_start_7d
    new-instance v1, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;

    iget-object v2, p0, Lcom/android/server/signedconfig/SignedConfigService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v4}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/signedconfig/SignedConfigEvent;)V

    invoke-virtual {v1, v3, v0}, Lcom/android/server/signedconfig/GlobalSettingsConfigApplicator;->applyConfig(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_a7

    .line 108
    invoke-virtual {v4}, Lcom/android/server/signedconfig/SignedConfigEvent;->send()V

    .line 109
    goto :goto_ac

    .line 95
    :catch_8b
    move-exception v0

    .line 96
    :try_start_8c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to base64 decode global settings config from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 p1, 0x2

    iput p1, v4, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I
    :try_end_a3
    .catchall {:try_start_8c .. :try_end_a3} :catchall_a7

    .line 108
    invoke-virtual {v4}, Lcom/android/server/signedconfig/SignedConfigEvent;->send()V

    .line 99
    return-void

    .line 108
    :catchall_a7
    move-exception p1

    invoke-virtual {v4}, Lcom/android/server/signedconfig/SignedConfigEvent;->send()V

    throw p1

    .line 113
    :cond_ac
    :goto_ac
    return-void
.end method
