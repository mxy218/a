.class final Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;
.super Landroid/os/Handler;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V
    .registers 2

    .line 5469
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$1:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 5470
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5471
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 5475
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5476
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    .line 5477
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$1:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {v1, v0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->access$300(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    .line 5478
    if-eqz p1, :cond_10

    .line 5479
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5481
    :cond_10
    return-void
.end method
