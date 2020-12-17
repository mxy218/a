.class Lcom/meizu/settings/home/FlymeDashboardSummary$7;
.super Landroid/database/ContentObserver;
.source "FlymeDashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/home/FlymeDashboardSummary;->addOnAccountsUpdatedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;


# direct methods
.method constructor <init>(Lcom/meizu/settings/home/FlymeDashboardSummary;Landroid/os/Handler;)V
    .registers 3

    .line 293
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$7;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account change, uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selfChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeDashboardSummary"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 299
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$7;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$800(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    move-result-object p1

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$7;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1100(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lcom/meizu/settings/utils/FlymeAccountHelper;

    move-result-object p1

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$7;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 300
    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1100(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lcom/meizu/settings/utils/FlymeAccountHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->needUpdateFlymeAccount()Z

    move-result p1

    if-eqz p1, :cond_55

    const-string p1, "refreshFlymeAccountState.."

    .line 302
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$7;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$800(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$7;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1000(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->updateFlymeAccountState(Z)V

    :cond_55
    return-void
.end method
