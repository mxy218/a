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

    .line 274
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mIdentifiedListener:Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;

    .line 276
    iput-object p3, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mOperation:Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    .line 277
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/RemoteListenerHelper;Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;Lcom/android/server/location/RemoteListenerHelper$1;)V
    .registers 5

    .line 269
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;-><init>(Lcom/android/server/location/RemoteListenerHelper;Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mOperation:Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mIdentifiedListener:Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;

    invoke-static {v1}, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->access$500(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;)Landroid/os/IInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mIdentifiedListener:Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;

    .line 283
    invoke-static {v2}, Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;->access$600(Lcom/android/server/location/RemoteListenerHelper$IdentifiedListener;)Lcom/android/server/location/CallerIdentity;

    move-result-object v2

    .line 282
    invoke-interface {v0, v1, v2}, Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;->execute(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 286
    goto :goto_1e

    .line 284
    :catch_12
    move-exception v0

    .line 285
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-static {v1}, Lcom/android/server/location/RemoteListenerHelper;->access$700(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error in monitored listener."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    :goto_1e
    return-void
.end method