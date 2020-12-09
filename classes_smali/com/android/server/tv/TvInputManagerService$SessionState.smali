.class final Lcom/android/server/tv/TvInputManagerService$SessionState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionState"
.end annotation


# instance fields
.field private final callingUid:I

.field private final client:Landroid/media/tv/ITvInputClient;

.field private final componentName:Landroid/content/ComponentName;

.field private hardwareSessionToken:Landroid/os/IBinder;

.field private final inputId:Ljava/lang/String;

.field private final isRecordingSession:Z

.field private logUri:Landroid/net/Uri;

.field private final seq:I

.field private session:Landroid/media/tv/ITvInputSession;

.field private final sessionToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;

.field private final userId:I


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;III)V
    .registers 10

    .line 2242
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2243
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    .line 2244
    iput-object p3, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 2245
    iput-object p4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    .line 2246
    iput-boolean p5, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    .line 2247
    iput-object p6, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 2248
    iput p7, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 2249
    iput p8, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    .line 2250
    iput p9, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    .line 2251
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;IIILcom/android/server/tv/TvInputManagerService$1;)V
    .registers 11

    .line 2226
    invoke-direct/range {p0 .. p9}, Lcom/android/server/tv/TvInputManagerService$SessionState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;III)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .registers 1

    .line 2226
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;
    .registers 2

    .line 2226
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z
    .registers 1

    .line 2226
    iget-boolean p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    .registers 1

    .line 2226
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .registers 1

    .line 2226
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    return p0
.end method

.method static synthetic access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .registers 1

    .line 2226
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    return p0
.end method

.method static synthetic access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;
    .registers 1

    .line 2226
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;
    .registers 1

    .line 2226
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    .line 2226
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .registers 1

    .line 2226
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    return p0
.end method

.method static synthetic access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;
    .registers 1

    .line 2226
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;
    .registers 1

    .line 2226
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;
    .registers 1

    .line 2226
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->logUri:Landroid/net/Uri;

    return-object p0
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 2255
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2256
    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 2257
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1, p0}, Lcom/android/server/tv/TvInputManagerService;->access$6800(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 2258
    monitor-exit v0

    .line 2259
    return-void

    .line 2258
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v1
.end method
