.class public Lcom/android/server/CountryDetectorService;
.super Landroid/location/ICountryDetector$Stub;
.source "CountryDetectorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CountryDetectorService$Receiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CountryDetector"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCountryDetector:Lcom/android/server/location/CountryDetectorBase;

.field private mHandler:Landroid/os/Handler;

.field private mLocationBasedDetectorListener:Landroid/location/CountryListener;

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/CountryDetectorService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 105
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 106
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 110
    invoke-direct {p0}, Landroid/location/ICountryDetector$Stub;-><init>()V

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    .line 112
    iput-object p1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/CountryDetectorService;Landroid/os/IBinder;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V

    return-void
.end method

.method private addListener(Landroid/location/ICountryListener;)V
    .registers 6

    .line 148
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 149
    :try_start_3
    new-instance v1, Lcom/android/server/CountryDetectorService$Receiver;

    invoke-direct {v1, p0, p1}, Lcom/android/server/CountryDetectorService$Receiver;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/ICountryListener;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_39

    .line 151
    :try_start_8
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 152
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object p1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2e

    .line 154
    const-string p1, "CountryDetector"

    const-string v1, "The first listener is added"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p1, p0, Lcom/android/server/CountryDetectorService;->mLocationBasedDetectorListener:Landroid/location/CountryListener;

    invoke-virtual {p0, p1}, Lcom/android/server/CountryDetectorService;->setCountryListener(Landroid/location/CountryListener;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_2e} :catch_2f
    .catchall {:try_start_8 .. :try_end_2e} :catchall_39

    .line 159
    :cond_2e
    goto :goto_37

    .line 157
    :catch_2f
    move-exception p1

    .line 158
    :try_start_30
    const-string v1, "CountryDetector"

    const-string v2, "linkToDeath failed:"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    :goto_37
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_39

    throw p1
.end method

.method private loadCustomCountryDetectorIfAvailable(Ljava/lang/String;)Lcom/android/server/location/CountryDetectorBase;
    .registers 7

    .line 225
    nop

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using custom country detector class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CountryDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :try_start_17
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 230
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    aput-object v2, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/CountryDetectorBase;
    :try_end_39
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_39} :catch_3a
    .catch Ljava/lang/InstantiationException; {:try_start_17 .. :try_end_39} :catch_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_39} :catch_3a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_39} :catch_3a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_39} :catch_3a

    .line 235
    goto :goto_41

    .line 232
    :catch_3a
    move-exception p1

    .line 234
    const-string p1, "Could not instantiate the custom country detector class"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 237
    :goto_41
    return-object p1
.end method

.method private removeListener(Landroid/os/IBinder;)V
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 165
    :try_start_3
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object p1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 167
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/CountryDetectorService;->setCountryListener(Landroid/location/CountryListener;)V

    .line 168
    const-string p1, "CountryDetector"

    const-string v1, "No listener is left"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1b
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method


# virtual methods
.method public addCountryListener(Landroid/location/ICountryListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-eqz v0, :cond_8

    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/CountryDetectorService;->addListener(Landroid/location/ICountryListener;)V

    .line 134
    return-void

    .line 131
    :cond_8
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public detectCountry()Landroid/location/Country;
    .registers 2

    .line 118
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-nez v0, :cond_6

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_6
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0}, Lcom/android/server/location/CountryDetectorBase;->detectCountry()Landroid/location/Country;

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 243
    iget-object p1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    const-string p3, "CountryDetector"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 244
    :cond_b
    return-void
.end method

.method getCountryDetector()Lcom/android/server/location/CountryDetectorBase;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    return-object v0
.end method

.method initialize()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    const v1, 0x104014f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 199
    invoke-direct {p0, v0}, Lcom/android/server/CountryDetectorService;->loadCustomCountryDetectorIfAvailable(Ljava/lang/String;)Lcom/android/server/location/CountryDetectorBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    .line 202
    :cond_15
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    if-nez v0, :cond_29

    .line 203
    const-string v0, "CountryDetector"

    const-string v1, "Using default country detector"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector;

    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    .line 206
    :cond_29
    new-instance v0, Lcom/android/server/-$$Lambda$CountryDetectorService$YZWlE4qqoDuiwnkSrasi91p2-Tk;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$CountryDetectorService$YZWlE4qqoDuiwnkSrasi91p2-Tk;-><init>(Lcom/android/server/CountryDetectorService;)V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mLocationBasedDetectorListener:Landroid/location/CountryListener;

    .line 207
    return-void
.end method

.method isSystemReady()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 220
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    return v0
.end method

.method public synthetic lambda$initialize$1$CountryDetectorService(Landroid/location/Country;)V
    .registers 2

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/server/CountryDetectorService;->notifyReceivers(Landroid/location/Country;)V

    return-void
.end method

.method public synthetic lambda$initialize$2$CountryDetectorService(Landroid/location/Country;)V
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$CountryDetectorService$fFSTHORponDwFf2wlaJLUdUhirQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$CountryDetectorService$fFSTHORponDwFf2wlaJLUdUhirQ;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/Country;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$setCountryListener$3$CountryDetectorService(Landroid/location/CountryListener;)V
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0, p1}, Lcom/android/server/location/CountryDetectorBase;->setCountryListener(Landroid/location/CountryListener;)V

    return-void
.end method

.method public synthetic lambda$systemRunning$0$CountryDetectorService()V
    .registers 2

    .line 190
    invoke-virtual {p0}, Lcom/android/server/CountryDetectorService;->initialize()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    .line 192
    return-void
.end method

.method protected notifyReceivers(Landroid/location/Country;)V
    .registers 7

    .line 174
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/CountryDetectorService$Receiver;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2d

    .line 177
    :try_start_19
    invoke-virtual {v2}, Lcom/android/server/CountryDetectorService$Receiver;->getListener()Landroid/location/ICountryListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/location/ICountryListener;->onCountryDetected(Landroid/location/Country;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_2d

    .line 181
    goto :goto_2a

    .line 178
    :catch_21
    move-exception v2

    .line 180
    :try_start_22
    const-string v3, "CountryDetector"

    const-string/jumbo v4, "notifyReceivers failed:"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    :goto_2a
    goto :goto_d

    .line 183
    :cond_2b
    monitor-exit v0

    .line 184
    return-void

    .line 183
    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public removeCountryListener(Landroid/location/ICountryListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-eqz v0, :cond_c

    .line 144
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V

    .line 145
    return-void

    .line 142
    :cond_c
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method protected setCountryListener(Landroid/location/CountryListener;)V
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$CountryDetectorService$UdoYpHRrhGb-PF6QTwQ4SluOe20;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$CountryDetectorService$UdoYpHRrhGb-PF6QTwQ4SluOe20;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/CountryListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method systemRunning()V
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$CountryDetectorService$ESi5ICoEixGJHWdY67G_J38VrJI;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$CountryDetectorService$ESi5ICoEixGJHWdY67G_J38VrJI;-><init>(Lcom/android/server/CountryDetectorService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method
