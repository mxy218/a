.class Lcom/flyme/systemui/qs/MzQSTileLayout$6;
.super Ljava/lang/Object;
.source "MzQSTileLayout.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/MzQSTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastAlpha:F

.field final synthetic this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/MzQSTileLayout;)V
    .registers 2

    .line 625
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000  # 1.0f

    .line 626
    iput p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->mLastAlpha:F

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 11

    .line 630
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 631
    iget v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->mLastAlpha:F

    .line 633
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    packed-switch v2, :pswitch_data_1e4

    .line 703
    sget p2, Lcom/android/systemui/R$id;->qs_tile_dragging_tag:I

    invoke-virtual {p1, p2, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 704
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p0, v5}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1202(Lcom/flyme/systemui/qs/MzQSTileLayout;Z)Z

    if-ne v0, p1, :cond_1e2

    .line 706
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 707
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1e2

    :pswitch_2b  #0x6
    if-eq v0, p1, :cond_1e2

    .line 670
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1800(Lcom/flyme/systemui/qs/MzQSTileLayout;)Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->removeMyself()V

    goto/16 :goto_1e2

    :pswitch_38  #0x5
    if-eq v0, p1, :cond_ab

    .line 645
    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$800(Lcom/flyme/systemui/qs/MzQSTileLayout;)Z

    move-result p2

    if-nez p2, :cond_ab

    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p2, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1300(Lcom/flyme/systemui/qs/MzQSTileLayout;Landroid/view/View;)I

    move-result p2

    if-eq p2, v4, :cond_ab

    .line 646
    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p2, v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1300(Lcom/flyme/systemui/qs/MzQSTileLayout;Landroid/view/View;)I

    move-result p2

    .line 647
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {v1, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1300(Lcom/flyme/systemui/qs/MzQSTileLayout;Landroid/view/View;)I

    move-result v1

    .line 649
    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {v2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1500(Lcom/flyme/systemui/qs/MzQSTileLayout;)I

    move-result v2

    if-gt p2, v2, :cond_75

    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {v2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1500(Lcom/flyme/systemui/qs/MzQSTileLayout;)I

    move-result v2

    if-le v1, v2, :cond_75

    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    .line 650
    invoke-static {v2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1500(Lcom/flyme/systemui/qs/MzQSTileLayout;)I

    move-result v2

    iget-object v4, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {v4}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1600(Lcom/flyme/systemui/qs/MzQSTileLayout;)I

    move-result v4

    mul-int/2addr v4, v7

    if-lt v2, v4, :cond_92

    :cond_75
    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    .line 651
    invoke-static {v2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1500(Lcom/flyme/systemui/qs/MzQSTileLayout;)I

    move-result v2

    if-gt v1, v2, :cond_a4

    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {v2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1500(Lcom/flyme/systemui/qs/MzQSTileLayout;)I

    move-result v2

    if-le p2, v2, :cond_a4

    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    .line 652
    invoke-static {v2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1500(Lcom/flyme/systemui/qs/MzQSTileLayout;)I

    move-result v4

    add-int/2addr v4, v7

    invoke-static {v2, v4}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1700(Lcom/flyme/systemui/qs/MzQSTileLayout;I)I

    move-result v2

    if-le v2, v3, :cond_a4

    :cond_92
    const-string p2, "MzQSTileLayout"

    const-string v1, "do swap!"

    .line 654
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1800(Lcom/flyme/systemui/qs/MzQSTileLayout;)Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->swap(Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_1e2

    .line 658
    :cond_a4
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p0, p2, v1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1900(Lcom/flyme/systemui/qs/MzQSTileLayout;II)V

    goto/16 :goto_1e2

    .line 662
    :cond_ab
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1800(Lcom/flyme/systemui/qs/MzQSTileLayout;)Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout$DelayStartSwapTwoViewsPos;->removeMyself()V

    goto/16 :goto_1e2

    .line 691
    :pswitch_b6  #0x4
    sget p2, Lcom/android/systemui/R$id;->qs_tile_dragging_tag:I

    invoke-virtual {p1, p2, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 692
    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p2, v5}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1202(Lcom/flyme/systemui/qs/MzQSTileLayout;Z)Z

    .line 693
    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$800(Lcom/flyme/systemui/qs/MzQSTileLayout;)Z

    move-result p2

    if-nez p2, :cond_d0

    if-ne v0, p1, :cond_d0

    .line 695
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 696
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 699
    :cond_d0
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$2300(Lcom/flyme/systemui/qs/MzQSTileLayout;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1e2

    .line 700
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$2300(Lcom/flyme/systemui/qs/MzQSTileLayout;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->qs_tiles_edit_tips_text:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1e2

    .line 674
    :pswitch_e5  #0x2
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {v1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1500(Lcom/flyme/systemui/qs/MzQSTileLayout;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1700(Lcom/flyme/systemui/qs/MzQSTileLayout;I)I

    move-result v1

    if-lt v1, v7, :cond_157

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    .line 675
    invoke-static {v1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1500(Lcom/flyme/systemui/qs/MzQSTileLayout;)I

    move-result v2

    add-int/2addr v2, v7

    invoke-static {v1, v2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1700(Lcom/flyme/systemui/qs/MzQSTileLayout;I)I

    move-result v1

    if-gt v1, v3, :cond_157

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    .line 676
    invoke-static {v1, v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1300(Lcom/flyme/systemui/qs/MzQSTileLayout;Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {v2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1500(Lcom/flyme/systemui/qs/MzQSTileLayout;)I

    move-result v2

    if-le v1, v2, :cond_157

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    .line 677
    invoke-static {v1, v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1300(Lcom/flyme/systemui/qs/MzQSTileLayout;Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {v3}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1500(Lcom/flyme/systemui/qs/MzQSTileLayout;)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v7

    invoke-static {v1, v2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1700(Lcom/flyme/systemui/qs/MzQSTileLayout;I)I

    move-result v1

    if-ne v1, v7, :cond_157

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    .line 678
    invoke-static {v1, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1300(Lcom/flyme/systemui/qs/MzQSTileLayout;Landroid/view/View;)I

    move-result v1

    if-ne v1, v4, :cond_157

    .line 679
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {v2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$100(Lcom/flyme/systemui/qs/MzQSTileLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {v3}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$2000(Lcom/flyme/systemui/qs/MzQSTileLayout;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_157

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    .line 680
    invoke-static {v1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$800(Lcom/flyme/systemui/qs/MzQSTileLayout;)Z

    move-result v1

    if-nez v1, :cond_157

    .line 681
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p0, v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1300(Lcom/flyme/systemui/qs/MzQSTileLayout;Landroid/view/View;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$2100(Lcom/flyme/systemui/qs/MzQSTileLayout;I)V

    goto/16 :goto_1e2

    .line 682
    :cond_157
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {v1, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1300(Lcom/flyme/systemui/qs/MzQSTileLayout;Landroid/view/View;)I

    move-result p1

    if-ne p1, v4, :cond_1e2

    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p1, v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1300(Lcom/flyme/systemui/qs/MzQSTileLayout;Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {v1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1500(Lcom/flyme/systemui/qs/MzQSTileLayout;)I

    move-result v1

    if-le p1, v1, :cond_1e2

    .line 683
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p1

    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$2200(Lcom/flyme/systemui/qs/MzQSTileLayout;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {v1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$2200(Lcom/flyme/systemui/qs/MzQSTileLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object p2, p2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-double p1, p1

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {v1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$2000(Lcom/flyme/systemui/qs/MzQSTileLayout;)I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L  # 0.5

    mul-double/2addr v1, v3

    cmpl-double p1, p1, v1

    if-lez p1, :cond_1e2

    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    .line 684
    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$800(Lcom/flyme/systemui/qs/MzQSTileLayout;)Z

    move-result p1

    if-nez p1, :cond_1e2

    .line 685
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p1, v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1300(Lcom/flyme/systemui/qs/MzQSTileLayout;Landroid/view/View;)I

    move-result p2

    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$2200(Lcom/flyme/systemui/qs/MzQSTileLayout;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v7

    invoke-static {p1, p2, p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1900(Lcom/flyme/systemui/qs/MzQSTileLayout;II)V

    goto :goto_1e2

    .line 635
    :pswitch_1bb  #0x1
    sget p2, Lcom/android/systemui/R$id;->qs_tile_dragging_tag:I

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 636
    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p2, v7}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1202(Lcom/flyme/systemui/qs/MzQSTileLayout;Z)Z

    if-ne v0, p1, :cond_1d9

    .line 638
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->mLastAlpha:F

    const/4 p1, 0x0

    .line 639
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x4

    .line 640
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 642
    :cond_1d9
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$6;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p0, v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1300(Lcom/flyme/systemui/qs/MzQSTileLayout;Landroid/view/View;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1400(Lcom/flyme/systemui/qs/MzQSTileLayout;I)V

    :cond_1e2
    :goto_1e2
    :pswitch_1e2  #0x3
    return v7

    nop

    :pswitch_data_1e4
    .packed-switch 0x1
        :pswitch_1bb  #00000001
        :pswitch_e5  #00000002
        :pswitch_1e2  #00000003
        :pswitch_b6  #00000004
        :pswitch_38  #00000005
        :pswitch_2b  #00000006
    .end packed-switch
.end method
