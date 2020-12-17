.class Lcom/meizu/settings/display/aod/AODStyleActivity$ViewHolder;
.super Ljava/lang/Object;
.source "AODStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/aod/AODStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public mStyleImage:Landroid/widget/ImageView;

.field public mStyleState:Landroid/widget/CheckBox;

.field public mStyleText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/meizu/settings/display/aod/AODStyleActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/display/aod/AODStyleActivity;Landroid/view/View;I)V
    .registers 4

    .line 109
    iput-object p1, p0, Lcom/meizu/settings/display/aod/AODStyleActivity$ViewHolder;->this$0:Lcom/meizu/settings/display/aod/AODStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a071a

    .line 110
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/display/aod/AODStyleActivity$ViewHolder;->mStyleText:Landroid/widget/TextView;

    const p1, 0x7f0a06cf

    .line 111
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/meizu/settings/display/aod/AODStyleActivity$ViewHolder;->mStyleImage:Landroid/widget/ImageView;

    const p1, 0x7f0a0719

    .line 112
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/meizu/settings/display/aod/AODStyleActivity$ViewHolder;->mStyleState:Landroid/widget/CheckBox;

    .line 113
    iget-object p0, p0, Lcom/meizu/settings/display/aod/AODStyleActivity$ViewHolder;->mStyleImage:Landroid/widget/ImageView;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method
