.class Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$3;
.super Ljava/lang/Object;
.source "FlymeDashboardSummaryAdapter.java"

# interfaces
.implements Lcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->updateFlymeAccountDashboard(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;Lcom/android/settingslib/drawer/Tile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

.field final synthetic val$holder:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;

.field final synthetic val$tile:Lcom/android/settingslib/drawer/Tile;


# direct methods
.method constructor <init>(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;Lcom/android/settingslib/drawer/Tile;Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;)V
    .registers 4

    .line 296
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$3;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    iput-object p2, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$3;->val$tile:Lcom/android/settingslib/drawer/Tile;

    iput-object p3, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$3;->val$holder:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserInfoFailed(ILjava/lang/String;)V
    .registers 4

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2d

    .line 311
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$3;->val$tile:Lcom/android/settingslib/drawer/Tile;

    iget-object p2, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$3;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    invoke-static {p2}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->access$200(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/settingslib/drawer/Tile;->mTitle:Ljava/lang/String;

    .line 312
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$3;->val$tile:Lcom/android/settingslib/drawer/Tile;

    iget-object p2, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$3;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    invoke-static {p2}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->access$300(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;)Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0807b7

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p1, Lcom/android/settingslib/drawer/Tile;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 313
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$3;->val$holder:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;

    iget-object p1, p1, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;->summary:Landroid/widget/TextView;

    const p2, 0x7f1205df

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 314
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$3;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2d
    return-void
.end method

.method public getUserInfoSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 4

    .line 303
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$3;->val$tile:Lcom/android/settingslib/drawer/Tile;

    iput-object p1, v0, Lcom/android/settingslib/drawer/Tile;->mTitle:Ljava/lang/String;

    .line 304
    iput-object p2, v0, Lcom/android/settingslib/drawer/Tile;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 305
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$3;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getUserInfoSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
