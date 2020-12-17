.class Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AODNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/view/AODNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationViewHolder"
.end annotation


# instance fields
.field mNotificationCount:Landroid/widget/TextView;

.field mNotificationIcon:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

.field final synthetic this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;


# direct methods
.method public constructor <init>(Lcom/flyme/systemuitools/aod/view/AODNotificationView;Landroid/view/View;)V
    .registers 4

    .line 409
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationViewHolder;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    .line 410
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 411
    sget p1, Lcom/android/systemui/R$id;->notifiation_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationViewHolder;->mNotificationIcon:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    .line 412
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v0, 0x0

    .line 413
    invoke-virtual {p1, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 414
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 415
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationViewHolder;->mNotificationIcon:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 417
    sget p1, Lcom/android/systemui/R$id;->notifiation_count:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationViewHolder;->mNotificationCount:Landroid/widget/TextView;

    return-void
.end method
