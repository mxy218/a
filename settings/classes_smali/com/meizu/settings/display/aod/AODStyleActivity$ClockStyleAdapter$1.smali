.class Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter$1;
.super Ljava/lang/Object;
.source "AODStyleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter$1;->this$1:Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/display/aod/AODStyleActivity$ViewHolder;

    iget-object p1, p1, Lcom/meizu/settings/display/aod/AODStyleActivity$ViewHolder;->mStyleImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 94
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter$1;->this$1:Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;

    iget-object v1, v1, Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;->this$0:Lcom/meizu/settings/display/aod/AODStyleActivity;

    const-class v2, Lcom/meizu/settings/display/aod/AODStyleChooseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "aod_style"

    .line 95
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    iget-object p0, p0, Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter$1;->this$1:Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;

    iget-object p0, p0, Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;->this$0:Lcom/meizu/settings/display/aod/AODStyleActivity;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
