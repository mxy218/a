.class Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2$1;
.super Ljava/lang/Object;
.source "NewAODStyleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;I)V
    .registers 3

    .line 177
    iput-object p1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2$1;->this$1:Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;

    iput p2, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 180
    iget v0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2$1;->val$position:I

    iget-object v1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2$1;->this$1:Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;

    invoke-static {v1}, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->access$300(Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x9

    add-int/2addr v0, v1

    .line 181
    sget-object v1, Lcom/meizu/settings/display/aod/Constants;->mPreviewIcons:[Ljava/lang/Integer;

    array-length v1, v1

    if-ge v0, v1, :cond_59

    iget-object v1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2$1;->this$1:Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;

    iget-object v1, v1, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->this$0:Lcom/meizu/settings/display/aod/NewAODStyleActivity;

    invoke-static {v1}, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->access$100(Lcom/meizu/settings/display/aod/NewAODStyleActivity;)I

    move-result v1

    if-eq v1, v0, :cond_59

    iget-object v1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2$1;->this$1:Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;

    iget-object v1, v1, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->this$0:Lcom/meizu/settings/display/aod/NewAODStyleActivity;

    invoke-static {v1}, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->access$200(Lcom/meizu/settings/display/aod/NewAODStyleActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 182
    iget-object v1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2$1;->this$1:Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;

    iget-object v1, v1, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->this$0:Lcom/meizu/settings/display/aod/NewAODStyleActivity;

    invoke-static {v1}, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->access$400(Lcom/meizu/settings/display/aod/NewAODStyleActivity;)Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Lcom/meizu/settings/display/aod/Constants;->mPreviewIcons:[Ljava/lang/Integer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f080140

    .line 183
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 184
    iget-object v1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2$1;->this$1:Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;

    iget-object v1, v1, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->this$0:Lcom/meizu/settings/display/aod/NewAODStyleActivity;

    invoke-static {v1}, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->access$200(Lcom/meizu/settings/display/aod/NewAODStyleActivity;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08013f

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 185
    iget-object v1, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2$1;->this$1:Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;

    iget-object v1, v1, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->this$0:Lcom/meizu/settings/display/aod/NewAODStyleActivity;

    invoke-static {v1, p1}, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->access$202(Lcom/meizu/settings/display/aod/NewAODStyleActivity;Landroid/view/View;)Landroid/view/View;

    .line 186
    iget-object p0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2$1;->this$1:Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;

    iget-object p0, p0, Lcom/meizu/settings/display/aod/NewAODStyleActivity$ClockStyleAdapter2;->this$0:Lcom/meizu/settings/display/aod/NewAODStyleActivity;

    invoke-static {p0, v0}, Lcom/meizu/settings/display/aod/NewAODStyleActivity;->access$102(Lcom/meizu/settings/display/aod/NewAODStyleActivity;I)I

    :cond_59
    return-void
.end method
