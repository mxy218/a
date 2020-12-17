.class Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler$1;
.super Landroid/database/ContentObserver;
.source "OOMExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;


# direct methods
.method constructor <init>(Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 428
    iput-object p1, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler$1;->this$0:Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"  # Z

    .line 431
    iget-object v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler$1;->this$0:Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;

    invoke-static {v0}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->access$000(Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;)V

    .line 432
    return-void
.end method
