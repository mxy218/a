.class Lcom/meizu/server/FindPhoneMonitor$8;
.super Ljava/lang/Object;
.source "FindPhoneMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/FindPhoneMonitor;->checkMonitoredAppStateAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/FindPhoneMonitor;


# direct methods
.method constructor <init>(Lcom/meizu/server/FindPhoneMonitor;)V
    .registers 2
    .param p1, "this$0"  # Lcom/meizu/server/FindPhoneMonitor;

    .line 353
    iput-object p1, p0, Lcom/meizu/server/FindPhoneMonitor$8;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 356
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$8;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->access$1500(Lcom/meizu/server/FindPhoneMonitor;)V

    .line 357
    return-void
.end method
