.class abstract Lcom/android/server/display/DisplayAdapter;
.super Ljava/lang/Object;
.source "DisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayAdapter$Listener;
    }
.end annotation


# static fields
.field public static final DISPLAY_DEVICE_EVENT_ADDED:I = 0x1

.field public static final DISPLAY_DEVICE_EVENT_CHANGED:I = 0x2

.field public static final DISPLAY_DEVICE_EVENT_REMOVED:I = 0x3

.field private static final NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/display/DisplayAdapter$Listener;

.field private final mName:Ljava/lang/String;

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V
    .registers 6

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 56
    iput-object p2, p0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p4, p0, Lcom/android/server/display/DisplayAdapter;->mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    .line 59
    iput-object p5, p0, Lcom/android/server/display/DisplayAdapter;->mName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/DisplayAdapter;)Lcom/android/server/display/DisplayAdapter$Listener;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    return-object p0
.end method

.method public static createMode(IIF)Landroid/view/Display$Mode;
    .registers 5

    .line 133
    new-instance v0, Landroid/view/Display$Mode;

    sget-object v1, Lcom/android/server/display/DisplayAdapter;->NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 134
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-direct {v0, v1, p0, p1, p2}, Landroid/view/Display$Mode;-><init>(IIIF)V

    .line 133
    return-object v0
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 2

    .line 105
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object v0
.end method

.method public registerLocked()V
    .registers 1

    .line 99
    return-void
.end method

.method protected final sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DisplayAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayAdapter$1;-><init>(Lcom/android/server/display/DisplayAdapter;Lcom/android/server/display/DisplayDevice;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    return-void
.end method

.method protected final sendTraversalRequestLocked()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DisplayAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayAdapter$2;-><init>(Lcom/android/server/display/DisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method
