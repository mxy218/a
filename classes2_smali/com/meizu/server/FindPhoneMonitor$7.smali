.class Lcom/meizu/server/FindPhoneMonitor$7;
.super Ljava/lang/Object;
.source "FindPhoneMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/FindPhoneMonitor;->checkMonitoredApkAsyn()V
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

    .line 344
    iput-object p1, p0, Lcom/meizu/server/FindPhoneMonitor$7;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 347
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$7;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->access$1400(Lcom/meizu/server/FindPhoneMonitor;)V

    .line 348
    return-void
.end method
