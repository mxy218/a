.class Lcom/android/server/connectivity/PacManager$3;
.super Ljava/lang/Object;
.source "PacManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacManager;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PacManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager;)V
    .registers 2

    .line 345
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$3;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 352
    invoke-static {p2}, Lcom/android/net/IProxyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyCallback;

    move-result-object p1

    .line 353
    if-eqz p1, :cond_13

    .line 355
    :try_start_6
    new-instance p2, Lcom/android/server/connectivity/PacManager$3$1;

    invoke-direct {p2, p0}, Lcom/android/server/connectivity/PacManager$3$1;-><init>(Lcom/android/server/connectivity/PacManager$3;)V

    invoke-interface {p1, p2}, Lcom/android/net/IProxyCallback;->getProxyPort(Landroid/os/IBinder;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    .line 374
    goto :goto_13

    .line 372
    :catch_f
    move-exception p1

    .line 373
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 376
    :cond_13
    :goto_13
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 348
    return-void
.end method
