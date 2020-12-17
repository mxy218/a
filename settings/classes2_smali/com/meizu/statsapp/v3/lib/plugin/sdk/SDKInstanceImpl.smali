.class public Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;
.super Ljava/lang/Object;
.source "SDKInstanceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SDKInstanceImpl"


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private configController:Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;

.field private emitter:Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;

.field private locationFetcher:Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;

.field private pkgKey:Ljava/lang/String;

.field private sessionController:Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;

.field private tracker:Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 9

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_111

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->applicationContext:Landroid/content/Context;

    .line 60
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### pkgKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pkgType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", initConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/meizu/statsapp/v3/InitConfig;

    invoke-direct {v3}, Lcom/meizu/statsapp/v3/InitConfig;-><init>()V

    .line 61
    invoke-virtual {v3}, Lcom/meizu/statsapp/v3/InitConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", sdkVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/meizu/statsapp/v3/SdkVer;->verName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {p1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput-object p3, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->pkgKey:Ljava/lang/String;

    .line 63
    new-instance p1, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;

    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->applicationContext:Landroid/content/Context;

    invoke-direct {p1, v2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->configController:Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;

    .line 64
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### SDKInstanceImpl 1, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance p1, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;

    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->applicationContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->locationFetcher:Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;

    .line 66
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->applicationContext:Landroid/content/Context;

    invoke-direct {p0, p1, p3}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->buildEmitter(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->emitter:Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;

    .line 67
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### SDKInstanceImpl 2, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->applicationContext:Landroid/content/Context;

    sget-object v2, Lcom/meizu/statsapp/v3/SdkVer;->verName:Ljava/lang/String;

    invoke-direct {p0, p1, p3, p2, v2}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->buildSubject(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    move-result-object p1

    .line 69
    sget-object p2, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### SDKInstanceImpl 3, "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->emitter:Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;

    iget-object p3, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->applicationContext:Landroid/content/Context;

    invoke-direct {p0, p2, p1, p3}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->buildTrack(Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->tracker:Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;

    .line 71
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "##### SDKInstanceImpl 4, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->init()V

    .line 73
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "##### SDKInstanceImpl 5, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-boolean p0, Lcom/meizu/statsapp/v3/InitConfig;->useInternationalDomain:Z

    if-eqz p0, :cond_110

    const-string p0, "http://uxip.in.meizu.com/api/v3/event/"

    .line 76
    sput-object p0, Lcom/meizu/statsapp/v3/lib/plugin/constants/UxipConstants;->UPLOAD_URL:Ljava/lang/String;

    const-string p0, "http://uxip-config.in.meizu.com/api/v3/umid"

    .line 77
    sput-object p0, Lcom/meizu/statsapp/v3/lib/plugin/constants/UxipConstants;->GET_UMID_URL:Ljava/lang/String;

    const-string p0, "http://uxip-res.in.meizu.com/resource/v3/config/"

    .line 78
    sput-object p0, Lcom/meizu/statsapp/v3/lib/plugin/constants/UxipConstants;->GET_CONFIG_URL:Ljava/lang/String;

    :cond_110
    return-void

    .line 57
    :cond_111
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The applicationContext is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private buildEmitter(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;
    .registers 8

    .line 149
    sget-boolean v0, Lcom/meizu/statsapp/v3/InitConfig;->offline:Z

    .line 150
    sget-boolean v1, Lcom/meizu/statsapp/v3/InitConfig;->noEncrypt:Z

    .line 151
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->isDebugMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_c

    move v1, v3

    .line 155
    :cond_c
    sget-boolean v2, Lcom/meizu/statsapp/v3/InitConfig;->useInternationalDomain:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_23

    .line 156
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/PermissionUtils;->checkInternetPermission(Landroid/content/Context;)Z

    .line 157
    new-instance p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->applicationContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-nez v1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v3, v4

    .line 158
    :goto_1f
    invoke-virtual {p1, v3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;->setEncrypt(Z)V

    return-object p1

    :cond_23
    if-eqz v0, :cond_3a

    .line 162
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->findDataService()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 163
    new-instance p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->applicationContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-nez v1, :cond_35

    goto :goto_36

    :cond_35
    move v3, v4

    .line 164
    :goto_36
    invoke-virtual {p1, v3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->setEncrypt(Z)V

    return-object p1

    .line 173
    :cond_3a
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/PermissionUtils;->checkInternetPermission(Landroid/content/Context;)Z

    .line 174
    new-instance p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->applicationContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method

.method private buildSubject(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;
    .registers 6

    .line 185
    sget-object p0, Lcom/meizu/statsapp/v3/InitConfig;->replacePackage:Ljava/lang/String;

    .line 186
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 187
    new-instance p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;

    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;-><init>()V

    .line 188
    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->context(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;

    .line 189
    invoke-virtual {p0, p2}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->pkgKey(Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;

    .line 190
    invoke-virtual {p0, p3}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->pkgType(I)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;

    .line 191
    invoke-virtual {p0, p4}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->sdkVersion(Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->build()Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    move-result-object p0

    return-object p0

    .line 194
    :cond_1e
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;

    invoke-direct {v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;-><init>()V

    .line 195
    invoke-virtual {v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->context(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;

    .line 196
    invoke-virtual {v0, p2}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->pkgKey(Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;

    .line 197
    invoke-virtual {v0, p3}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->pkgType(I)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;

    .line 198
    invoke-virtual {v0, p4}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->sdkVersion(Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;

    .line 199
    invoke-virtual {v0, p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->replacePackage(Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;

    .line 200
    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->build()Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    move-result-object p0

    return-object p0
.end method

.method private buildTrack(Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;
    .registers 5

    .line 135
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->isDebugMode()Z

    move-result p0

    .line 136
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;

    invoke-direct {v0, p1, p3}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;Landroid/content/Context;)V

    .line 137
    invoke-virtual {v0, p2}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;->subject(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;

    .line 138
    invoke-virtual {v0, p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;->debug(Z)Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;

    .line 139
    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;->build()Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;

    move-result-object p0

    return-object p0
.end method

.method private findDataService()Z
    .registers 5

    .line 348
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 349
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.dataservice.action.vccOfflineStats"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x40

    .line 351
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 352
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryIntentServices: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_6b

    .line 354
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 355
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 356
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v2, "com.meizu.dataservice"

    .line 357
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 358
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "choose serviceName---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pkgName---"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_6b
    const/4 p0, 0x0

    return p0
.end method

.method private getDailyActived(Landroid/content/Context;)I
    .registers 8

    .line 382
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy/MM/dd"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 383
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 384
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "com.meizu.statsapp.v3.common"

    .line 385
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "DAILY_ACTIVED_LAST"

    const-string v2, ""

    .line 386
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    sget-object v3, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beforeGetDailyActived ------------------ current states: today:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", last:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 389
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->TAG:Ljava/lang/String;

    const-string v2, "a new day"

    invoke-static {v0, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0

    :cond_57
    return v0
.end method

.method private getGlobalActived(Landroid/content/Context;)I
    .registers 4

    const/4 p0, 0x0

    const-string v0, "com.meizu.statsapp.v3.common"

    .line 397
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "GLOBAL_ACTIVED"

    const/4 v1, 0x1

    .line 398
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 400
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1b
    return v1
.end method

.method private init()V
    .registers 5

    .line 83
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->locationFetcher:Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;

    sget-boolean v1, Lcom/meizu/statsapp/v3/InitConfig;->reportLocation:Z

    invoke-virtual {v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;->setEnable(Z)V

    .line 84
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->configController:Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;

    invoke-virtual {v0, p0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/ConfigController;->init(Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;)V

    .line 85
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->emitter:Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->init()V

    .line 86
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->tracker:Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;

    invoke-virtual {v0, p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->init(Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;)V

    .line 88
    sget-boolean v0, Lcom/meizu/statsapp/v3/InitConfig;->noBootUp:Z

    if-nez v0, :cond_4c

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->applicationContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->getDailyActived(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "daily_actived"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->applicationContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->getGlobalActived(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "global_actived"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->tracker:Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->applicationContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "_bootup_"

    invoke-static {p0, v3, v2, v0}, Lcom/meizu/statsapp/v3/lib/plugin/events/EventUtil;->buildActionXEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->track(Lcom/meizu/statsapp/v3/lib/plugin/events/Event;I)V

    :cond_4c
    return-void
.end method

.method private isDebugMode()Z
    .registers 3

    :try_start_0
    const-string v0, "persist.meizu.usagestats.debug"

    const-string v1, ""

    .line 334
    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string v1, "all"

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_20

    if-eqz p0, :cond_20

    :cond_1e
    const/4 p0, 0x1

    return p0

    :catch_20
    :cond_20
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public attach(Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->sessionController:Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;

    return-void
.end method

.method public getEmitter()Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->emitter:Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;

    return-object p0
.end method

.method public getLocationFetcher()Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->locationFetcher:Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;

    return-object p0
.end method

.method public getSessionController()Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->sessionController:Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;

    return-object p0
.end method

.method public getTracker()Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->tracker:Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;

    return-object p0
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent eventName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->tracker:Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;

    if-eqz v0, :cond_3c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_3c

    .line 216
    :cond_31
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->tracker:Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->applicationContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/events/EventUtil;->buildActionXEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->track(Lcom/meizu/statsapp/v3/lib/plugin/events/Event;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public onLog(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 249
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLog logName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->tracker:Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;

    if-eqz v0, :cond_41

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_41

    .line 253
    :cond_29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pkg_name"

    const-string v2, "com.meizu.uxip.log"

    .line 254
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->tracker:Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->applicationContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/events/EventUtil;->buildLogEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/statsapp/v3/lib/plugin/events/LogEvent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {v1, p0, p1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->trackX(Lcom/meizu/statsapp/v3/lib/plugin/events/Event;ILjava/util/Map;)V

    :cond_41
    :goto_41
    return-void
.end method
