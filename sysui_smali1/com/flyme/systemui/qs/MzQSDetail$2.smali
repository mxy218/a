.class Lcom/flyme/systemui/qs/MzQSDetail$2;
.super Ljava/lang/Object;
.source "MzQSDetail.java"

# interfaces
.implements Lcom/flyme/systemui/qs/MzQSDetail$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/MzQSDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/MzQSDetail;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/MzQSDetail;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail$2;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onScanStateChanged$1$MzQSDetail$2(Z)V
    .registers 3

    .line 153
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSDetail$2;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p0}, Lcom/flyme/systemui/qs/MzQSDetail;->access$100(Lcom/flyme/systemui/qs/MzQSDetail;)Lcom/flyme/systemui/qs/DetailScrollView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 154
    instance-of v0, p0, Lcom/android/systemui/qs/QSDetailItems;

    if-eqz v0, :cond_14

    .line 155
    check-cast p0, Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setLoadingVisible(Z)V

    :cond_14
    return-void
.end method

.method public synthetic lambda$onShowingDetail$0$MzQSDetail$2(Lcom/android/systemui/plugins/qs/DetailAdapter;IIIZ)V
    .registers 13

    .line 144
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail$2;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 145
    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSDetail$2;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/flyme/systemui/qs/MzQSDetail;->access$200(Lcom/flyme/systemui/qs/MzQSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;IIIZ)V

    :cond_12
    return-void
.end method

.method public onScanStateChanged(Z)V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail$2;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    new-instance v1, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$zeVEqjFrNWPJxCmzDkbmYYL5BXs;

    invoke-direct {v1, p0, p1}, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$zeVEqjFrNWPJxCmzDkbmYYL5BXs;-><init>(Lcom/flyme/systemui/qs/MzQSDetail$2;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIIZ)V
    .registers 15

    .line 143
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSDetail$2;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    new-instance v8, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$-0OOEM3jGcNf7TUUodnx_xdD4F4;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/flyme/systemui/qs/-$$Lambda$MzQSDetail$2$-0OOEM3jGcNf7TUUodnx_xdD4F4;-><init>(Lcom/flyme/systemui/qs/MzQSDetail$2;Lcom/android/systemui/plugins/qs/DetailAdapter;IIIZ)V

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShowingTilesEdit(Z)V
    .registers 2

    return-void
.end method

.method public onToggleStateChanged(Z)V
    .registers 2

    return-void
.end method
