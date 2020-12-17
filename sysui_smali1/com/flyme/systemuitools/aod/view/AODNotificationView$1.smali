.class Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;
.super Landroid/os/AsyncTask;
.source "AODNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemuitools/aod/view/AODNotificationView;->updateAdatperData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 277
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;",
            ">;>;"
        }
    .end annotation

    .line 281
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$000(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 283
    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    .line 284
    invoke-static {v0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$000(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 286
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$000(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 287
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v2}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$000(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",time "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->time:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",priorty "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->priority:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",package "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->notifcationPackage:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",id "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->iconId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isSystem"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->isSystemApp:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",hascustomicon "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->hasCustomizedIcon:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AODNotificationView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 292
    :cond_92
    new-instance v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1$1;-><init>(Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 277
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .registers 10
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

    if-eqz p1, :cond_113

    .line 311
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$100(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 312
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    new-instance v1, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;

    invoke-direct {v1, v0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;-><init>(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)V

    invoke-static {v0, v1}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$102(Lcom/flyme/systemuitools/aod/view/AODNotificationView;Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;)Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;

    .line 313
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$100(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 317
    :cond_1d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 319
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$200(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_31

    move v1, v2

    goto :goto_32

    :cond_31
    move v1, v3

    .line 320
    :goto_32
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v4}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$300(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_3f

    goto :goto_40

    :cond_3f
    move v2, v3

    :goto_40
    const/4 v4, 0x4

    if-eqz v1, :cond_44

    const/4 v4, 0x3

    :cond_44
    if-eqz v2, :cond_48

    add-int/lit8 v4, v4, -0x1

    .line 326
    :cond_48
    iget-object v5, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v5}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$400(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    move-result-object v5

    if-nez v5, :cond_89

    .line 327
    iget-object v5, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    sget v7, Lcom/android/systemui/R$id;->notify_icon:I

    .line 328
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    .line 327
    invoke-static {v5, v6}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$402(Lcom/flyme/systemuitools/aod/view/AODNotificationView;Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;)Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    .line 329
    iget-object v5, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    sget v7, Lcom/android/systemui/R$id;->ongoing_icon:I

    .line 330
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    .line 329
    invoke-static {v5, v6}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$502(Lcom/flyme/systemuitools/aod/view/AODNotificationView;Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;)Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    .line 331
    iget-object v5, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    sget v7, Lcom/android/systemui/R$id;->more_icon:I

    .line 332
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    .line 331
    invoke-static {v5, v6}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$602(Lcom/flyme/systemuitools/aod/view/AODNotificationView;Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;)Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    .line 335
    :cond_89
    iget-object v5, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v5}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$400(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    move-result-object v5

    const/16 v6, 0x8

    if-eqz v2, :cond_95

    move v7, v3

    goto :goto_96

    :cond_95
    move v7, v6

    :goto_96
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v2, :cond_aa

    .line 337
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v2}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$400(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    move-result-object v2

    iget-object v5, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v5}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$700(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)[I

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->setColors([I)V

    .line 340
    :cond_aa
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v2}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$500(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    move-result-object v2

    if-eqz v1, :cond_b4

    move v5, v3

    goto :goto_b5

    :cond_b4
    move v5, v6

    :goto_b5
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_c9

    .line 342
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$500(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v2}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$700(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->setColors([I)V

    :cond_c9
    if-le v0, v4, :cond_e5

    .line 347
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$600(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$600(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$700(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;->setColors([I)V

    move v0, v4

    goto :goto_ee

    .line 350
    :cond_e5
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v1}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$600(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Lcom/flyme/systemuitools/aod/view/gradient/GradientImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    :goto_ee
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 354
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v2}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$800(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)I

    move-result v2

    mul-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 355
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$900(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 356
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->this$0:Lcom/flyme/systemuitools/aod/view/AODNotificationView;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/view/AODNotificationView;->access$100(Lcom/flyme/systemuitools/aod/view/AODNotificationView;)Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationAdapter;->updateData(Ljava/util/ArrayList;)V

    :cond_113
    return-void
.end method
