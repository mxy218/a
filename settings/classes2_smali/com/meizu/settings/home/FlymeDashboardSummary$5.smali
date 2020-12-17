.class Lcom/meizu/settings/home/FlymeDashboardSummary$5;
.super Ljava/lang/Object;
.source "FlymeDashboardSummary.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/home/FlymeDashboardSummary;->registerPermissionDialogSharedPreferenceChangeListener()V
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

    .line 246
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$5;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5

    const-string p1, "show_permission_dialog"

    .line 249
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_36

    .line 250
    iget-object p2, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$5;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p2}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$700(Lcom/meizu/settings/home/FlymeDashboardSummary;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$602(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)Z

    .line 251
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$5;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$800(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 252
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$5;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$800(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$5;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p2}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$600(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->setNeedShowPermission(Z)V

    .line 253
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$5;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$800(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_36
    return-void
.end method
