.class Lcom/meizu/settings/display/aod/NewAODStyleActivity$ViewHolder;
.super Ljava/lang/Object;
.source "NewAODStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/aod/NewAODStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public mStyleImage:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/meizu/settings/display/aod/NewAODStyleActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/display/aod/NewAODStyleActivity;Landroid/view/View;)V
    .registers 3

    .line 198
    iput-object p1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ViewHolder;->this$0:Lcom/meizu/settings/display/aod/NewAODStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a06d0

    .line 199
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ViewHolder;->mStyleImage:Landroid/widget/ImageView;

    return-void
.end method
