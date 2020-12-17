.class Lcom/meizu/server/FindPhoneMonitor$2;
.super Ljava/lang/Object;
.source "FindPhoneMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/FindPhoneMonitor;->enableMonitoredAppAsyn()V
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

    .line 118
    iput-object p1, p0, Lcom/meizu/server/FindPhoneMonitor$2;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$2;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->access$600(Lcom/meizu/server/FindPhoneMonitor;)V

    .line 122
    return-void
.end method
