.class Lcom/android/server/slice/PinnedSliceState$ListenerInfo;
.super Ljava/lang/Object;
.source "PinnedSliceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/PinnedSliceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerInfo"
.end annotation


# instance fields
.field private callingPid:I

.field private callingUid:I

.field private hasPermission:Z

.field private pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/slice/PinnedSliceState;

.field private token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/slice/PinnedSliceState;Landroid/os/IBinder;Ljava/lang/String;ZII)V
    .registers 7

    .line 219
    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->this$0:Lcom/android/server/slice/PinnedSliceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p2, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->token:Landroid/os/IBinder;

    .line 221
    iput-object p3, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->pkg:Ljava/lang/String;

    .line 222
    iput-boolean p4, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->hasPermission:Z

    .line 223
    iput p5, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->callingUid:I

    .line 224
    iput p6, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->callingPid:I

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/slice/PinnedSliceState$ListenerInfo;)Landroid/os/IBinder;
    .registers 1

    .line 210
    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->token:Landroid/os/IBinder;

    return-object p0
.end method
