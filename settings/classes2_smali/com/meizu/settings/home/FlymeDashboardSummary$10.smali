.class Lcom/meizu/settings/home/FlymeDashboardSummary$10;
.super Ljava/lang/Object;
.source "FlymeDashboardSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/home/FlymeDashboardSummary;->showInstallDigitalHealthAppDialog()V
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

    .line 674
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$10;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 677
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$10;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const-string p1, "com.meizu.sceneinfo"

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->installAppFromMzStore(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
