.class Lcom/meizu/settings/home/FlymeDashboardSummary$6;
.super Ljava/lang/Object;
.source "FlymeDashboardSummary.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


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
.method constructor <init>(Lcom/meizu/settings/home/FlymeDashboardSummary;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$6;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 3

    .line 275
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$6;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 280
    :cond_9
    invoke-static {p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->isFlymeAccountLogined(Landroid/content/Context;)Z

    move-result p1

    .line 281
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$6;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1000(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z

    move-result v0

    if-eq v0, p1, :cond_3a

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$6;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$800(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 282
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$6;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1002(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)Z

    .line 283
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$6;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$800(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$6;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1000(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->updateFlymeAccountState(Z)V

    .line 284
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$6;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$800(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3a
    return-void
.end method
