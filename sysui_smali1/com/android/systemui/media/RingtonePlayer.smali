.class public Lcom/android/systemui/media/RingtonePlayer;
.super Lcom/android/systemui/SystemUI;
.source "RingtonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/RingtonePlayer$Client;
    }
.end annotation


# instance fields
.field private final mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field private mAudioService:Landroid/media/IAudioService;

.field private mCallback:Landroid/media/IRingtonePlayer;

.field private final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/systemui/media/RingtonePlayer$Client;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 59
    new-instance v0, Lcom/android/systemui/media/NotificationPlayer;

    const-string v1, "RingtonePlayer"

    invoke-direct {v0, v1}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 105
    new-instance v0, Lcom/android/systemui/media/RingtonePlayer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/RingtonePlayer$1;-><init>(Lcom/android/systemui/media/RingtonePlayer;)V

    iput-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mCallback:Landroid/media/IRingtonePlayer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/media/RingtonePlayer;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/media/RingtonePlayer;)Lcom/android/systemui/media/NotificationPlayer;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

    return-object p0
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5

    .line 234
    :try_start_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/16 v1, 0x3e7

    const/4 v2, 0x0

    if-ne v0, v1, :cond_16

    .line 235
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 237
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    move-exception p0

    .line 241
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string p1, "Clients:"

    .line 247
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    monitor-enter p1

    .line 249
    :try_start_8
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/media/RingtonePlayer$Client;

    const-string v0, "  mToken="

    .line 250
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 251
    invoke-static {p3}, Lcom/android/systemui/media/RingtonePlayer$Client;->access$300(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mUri="

    .line 252
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    invoke-static {p3}, Lcom/android/systemui/media/RingtonePlayer$Client;->access$200(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/media/Ringtone;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_12

    .line 255
    :cond_3b
    monitor-exit p1

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public start()V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/NotificationPlayer;->setUsesWakeLock(Landroid/content/Context;)V

    const-string v0, "audio"

    .line 67
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mAudioService:Landroid/media/IAudioService;

    .line 69
    :try_start_13
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mAudioService:Landroid/media/IAudioService;

    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mCallback:Landroid/media/IRingtonePlayer;

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_32

    :catch_1b
    move-exception p0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problem registering RingtonePlayer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RingtonePlayer"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    return-void
.end method
