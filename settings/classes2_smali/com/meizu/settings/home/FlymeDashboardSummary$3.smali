.class Lcom/meizu/settings/home/FlymeDashboardSummary$3;
.super Ljava/lang/Object;
.source "FlymeDashboardSummary.java"

# interfaces
.implements Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnSystemUpgradeBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/home/FlymeDashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;


# direct methods
.method constructor <init>(Lcom/meizu/settings/home/FlymeDashboardSummary;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$3;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSystemUpgradeBind(Landroid/view/View;)V
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$3;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$202(Lcom/meizu/settings/home/FlymeDashboardSummary;Landroid/view/View;)Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$3;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$500(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->queryUpdate()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$302(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)Z

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnSystemUpgradeBind badgeIcon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mScrollState = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$3;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 184
    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$100(Lcom/meizu/settings/home/FlymeDashboardSummary;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mHasUpdate = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$3;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$300(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlymeDashboardSummary"

    .line 183
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$3;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$100(Lcom/meizu/settings/home/FlymeDashboardSummary;)I

    move-result p1

    if-nez p1, :cond_70

    .line 186
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$3;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$200(Lcom/meizu/settings/home/FlymeDashboardSummary;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6a

    .line 187
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$3;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$200(Lcom/meizu/settings/home/FlymeDashboardSummary;)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$3;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$300(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z

    move-result v1

    if-eqz v1, :cond_65

    move v1, v0

    goto :goto_67

    :cond_65
    const/16 v1, 0x8

    :goto_67
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_6a
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$3;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p0, v0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$002(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)Z

    goto :goto_76

    .line 191
    :cond_70
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$3;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$002(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)Z

    :goto_76
    return-void
.end method
