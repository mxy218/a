.class Lcom/android/server/hips/intercept/Interception$1;
.super Ljava/lang/Object;
.source "Interception.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hips/intercept/Interception;->updateInterceptionItem(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 628
    iput-object p1, p0, Lcom/android/server/hips/intercept/Interception$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "service"  # Landroid/os/IBinder;

    .line 631
    move-object v0, p0

    .line 632
    .local v0, "conn":Landroid/content/ServiceConnection;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 633
    .local v1, "message":Landroid/os/Message;
    if-eqz v1, :cond_19

    .line 634
    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Lcom/android/server/hips/intercept/Interception$1$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0}, Lcom/android/server/hips/intercept/Interception$1$1;-><init>(Lcom/android/server/hips/intercept/Interception$1;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 700
    :cond_19
    :try_start_19
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_21} :catch_22

    .line 703
    goto :goto_2b

    .line 701
    :catch_22
    move-exception v2

    .line 702
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Interception"

    const-string/jumbo v4, "updateInterceptionItem, unable to send message!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_2b
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"  # Landroid/content/ComponentName;

    .line 708
    return-void
.end method
