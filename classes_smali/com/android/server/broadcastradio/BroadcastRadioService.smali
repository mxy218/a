.class public Lcom/android/server/broadcastradio/BroadcastRadioService;
.super Lcom/android/server/SystemService;
.source "BroadcastRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BcRadioSrv"


# instance fields
.field private final mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

.field private final mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

.field private final mLock:Ljava/lang/Object;

.field private final mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

.field private mV1Modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance p1, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/BroadcastRadioService$1;)V

    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    .line 49
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 50
    iput-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mV1Modules:Ljava/util/List;

    .line 55
    new-instance p1, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    invoke-direct {p1}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    .line 56
    iget-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    invoke-virtual {p1}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->loadModules()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mV1Modules:Ljava/util/List;

    .line 57
    iget-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mV1Modules:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/server/broadcastradio/-$$Lambda$h9uu6awtPxlZjabQhUCMBWQXSFM;->INSTANCE:Lcom/android/server/broadcastradio/-$$Lambda$h9uu6awtPxlZjabQhUCMBWQXSFM;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object p1

    .line 58
    new-instance v0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 59
    invoke-virtual {p1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {p1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_43

    :cond_42
    const/4 p1, 0x0

    :goto_43
    invoke-direct {v0, p1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mV1Modules:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/lang/Object;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    return-object p0
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    const-string v1, "broadcastradio"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 65
    return-void
.end method
