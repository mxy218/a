.class Lcom/android/server/hips/intercept/InterceptionEventStats$InterceptionHandler;
.super Landroid/os/Handler;
.source "InterceptionEventStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/intercept/InterceptionEventStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterceptionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/intercept/InterceptionEventStats;


# direct methods
.method public constructor <init>(Lcom/android/server/hips/intercept/InterceptionEventStats;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;

    .line 479
    iput-object p1, p0, Lcom/android/server/hips/intercept/InterceptionEventStats$InterceptionHandler;->this$0:Lcom/android/server/hips/intercept/InterceptionEventStats;

    .line 480
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 481
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 485
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_13

    .line 487
    :cond_9
    goto :goto_13

    .line 489
    :cond_a
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionEventStats$InterceptionHandler;->this$0:Lcom/android/server/hips/intercept/InterceptionEventStats;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {v0, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->access$200(Lcom/android/server/hips/intercept/InterceptionEventStats;Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 492
    :goto_13
    return-void
.end method
