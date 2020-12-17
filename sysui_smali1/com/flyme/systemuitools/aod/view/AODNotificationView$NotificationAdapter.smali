.class Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AODNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/view/AODNotificationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)V
    .registers 2

    .line 375
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 401
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 375
    check-cast p1, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;->onBindViewHolder(Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationViewHolder;I)V
    .registers 4

    .line 393
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;

    .line 394
    iget-object v0, p1, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationViewHolder;->mNotificationIcon:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    iget-object p2, p2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notificationDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    iget-object p1, p1, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationViewHolder;->mNotificationIcon:Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$700(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)[I

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->setColors([I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationViewHolder;
    .registers 5

    .line 385
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->aod_notification_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 386
    new-instance p2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationViewHolder;

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-direct {p2, p0, p1}, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationViewHolder;-><init>(Lcom/flyme/systemuitools/aod/view/AODNotificationView;Landroid/view/View;)V

    return-object p2
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;",
            ">;>;)V"
        }
    .end annotation

    .line 379
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;->mData:Ljava/util/ArrayList;

    .line 380
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
