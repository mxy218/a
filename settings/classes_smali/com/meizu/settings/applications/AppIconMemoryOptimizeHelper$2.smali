.class Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "AppIconMemoryOptimizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper$2;->this$0:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mReceiver onReceive intent = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    const-string p2, "com.meizu.theme.change"

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 59
    iget-object p0, p0, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper$2;->this$0:Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->emptyCache()V

    :cond_25
    return-void
.end method
