.class Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/RemoteListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerRunnable"
.end annotation


# instance fields
.field private final mIdentifiedListener:Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TT",
            "Listener;",
            ">.Identified",
            "Listener;"
        }
    .end annotation
.end field

.field private final mOperation:Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "TT",
            "Listener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/location/RemoteListenerHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/location/RemoteListenerHelper;Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TT",
            "Listener;",
            ">.Identified",
            "Listener;",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .line 275
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.HandlerRunnable;"
    .local p2, "identifiedListener":Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.IdentifiedListener;"
    .local p3, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mIdentifiedListener:Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;

    .line 277
    iput-object p3, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mOperation:Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    .line 278
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/RemoteListenerHelper;Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;Lcom/android/server/location/RemoteListenerHelper$1;)V
    .registers 5
    .param p1, "x0"  # Lcom/android/server/location/RemoteListenerHelper;
    .param p2, "x1"  # Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;
    .param p3, "x2"  # Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .param p4, "x3"  # Lcom/android/server/location/RemoteListenerHelper$1;

    .line 270
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.HandlerRunnable;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;-><init>(Lcom/android/server/location/RemoteListenerHelper;Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 283
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.HandlerRunnable;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mOperation:Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mIdentifiedListener:Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;

    invoke-static {v1}, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->access$500(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;)Landroid/os/IInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mIdentifiedListener:Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;

    .line 284
    invoke-static {v2}, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->access$600(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;)Lcom/android/server/location/CallerIdentity;

    move-result-object v2

    .line 283
    invoke-interface {v0, v1, v2}, Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;->execute(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 298
    goto :goto_3a

    .line 285
    :catch_12
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_2f

    .line 290
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-static {v1}, Lcom/android/server/location/RemoteListenerHelper;->access$700(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "remove dead listener"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mIdentifiedListener:Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;

    invoke-static {v2}, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->access$500(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;)Landroid/os/IInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    goto :goto_3a

    .line 295
    :cond_2f
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-static {v1}, Lcom/android/server/location/RemoteListenerHelper;->access$700(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error in monitored listener."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_3a
    return-void
.end method
