.class Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FlymeNotificationAppList.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationAppAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Row;",
        ">;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;Landroid/content/Context;)V
    .registers 3

    .line 304
    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    const/4 p1, 0x0

    .line 305
    invoke-direct {p0, p2, p1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method private enableLayoutTransitions(Landroid/view/ViewGroup;Z)V
    .registers 4

    const/4 p0, 0x3

    const/4 v0, 0x2

    if-eqz p2, :cond_13

    .line 360
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 361
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    goto :goto_21

    .line 363
    :cond_13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 364
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    :goto_21
    return-void
.end method

.method private getSubtitle(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;)Ljava/lang/String;
    .registers 6

    .line 389
    iget-boolean v0, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->banned:Z

    if-eqz v0, :cond_12

    .line 390
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$000(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f120198

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 393
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    iget-boolean v1, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->floatEnable:Z

    const v2, 0x7f121578

    if-eqz v1, :cond_41

    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_31

    .line 402
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$000(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_31
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$000(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1208a9

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_41
    iget-boolean v1, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->desktopNotificationEnable:Z

    if-eqz v1, :cond_68

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_58

    .line 409
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$000(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_58
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$000(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f120f2d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_68
    iget-boolean v1, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->remindEnable:Z

    if-eqz v1, :cond_8f

    .line 415
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7f

    .line 416
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$000(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_7f
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$000(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f120f6e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_8f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_a2

    .line 423
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$000(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_a2
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$000(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120f2f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 426
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$000(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120f2e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 427
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$000(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/content/Context;

    move-result-object p0

    const v3, 0x7f120f30

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 428
    iget p1, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->userFilter:I

    if-nez p1, :cond_cf

    move-object p0, v1

    goto :goto_d3

    :cond_cf
    const/4 v1, 0x1

    if-ne p1, v1, :cond_d3

    move-object p0, v2

    :cond_d3
    :goto_d3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Row;Z)V
    .registers 6

    .line 369
    instance-of v0, p2, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

    if-nez v0, :cond_13

    const p0, 0x1020016

    .line 371
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 372
    iget-object p1, p2, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Row;->section:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 376
    :cond_13
    check-cast p2, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;

    .line 378
    iget-object v0, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p3}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    .line 379
    iget-object v0, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;->rowDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 380
    iget-object v0, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p3}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->enableLayoutTransitions(Landroid/view/ViewGroup;Z)V

    .line 381
    iget-object p3, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v0, p2, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    iget-object p3, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    invoke-direct {p0, p2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->getSubtitle(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;)Ljava/lang/String;

    move-result-object p0

    .line 384
    iget-object p2, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object p1, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4c

    const/4 v1, 0x0

    :cond_4c
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 325
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Row;

    .line 326
    instance-of p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public getPositionForSection(I)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 445
    :cond_4
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$500(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/widget/AlphabetIndexer;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_17

    :cond_d
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$500(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/widget/AlphabetIndexer;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    :goto_17
    return v0
.end method

.method public getSectionForPosition(I)I
    .registers 4

    .line 451
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$500(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/widget/AlphabetIndexer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 456
    :cond_a
    :try_start_a
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$500(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/widget/AlphabetIndexer;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v1
    :try_end_14
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_2b

    .line 458
    :catch_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Something wrong at indexer, position:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlymeNotificationAppList"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    return v1
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .line 437
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {v0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$500(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/widget/AlphabetIndexer;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    goto :goto_14

    :cond_a
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$500(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/widget/AlphabetIndexer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object p0

    :goto_14
    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 330
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Row;

    if-nez p2, :cond_c

    .line 333
    invoke-virtual {p0, p3, p1}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->newView(Landroid/view/ViewGroup;Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Row;)Landroid/view/View;

    move-result-object p2

    :cond_c
    const/4 p3, 0x0

    .line 337
    invoke-virtual {p0, p2, p1, p3}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Row;Z)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public hasStableIds()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public newView(Landroid/view/ViewGroup;Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$Row;)Landroid/view/View;
    .registers 4

    .line 342
    instance-of p2, p2, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$AppRow;

    const/4 v0, 0x0

    if-nez p2, :cond_13

    .line 343
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$300(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d0271

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 345
    :cond_13
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$NotificationAppAdapter;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    invoke-static {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;->access$300(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d0244

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 346
    new-instance p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;-><init>(Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$1;)V

    .line 347
    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    .line 348
    iget-object p2, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 349
    iget-object p2, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    const p2, 0x1020006

    .line 350
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;->icon:Landroid/widget/ImageView;

    const p2, 0x1020016

    .line 351
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;->title:Landroid/widget/TextView;

    const p2, 0x1020014

    .line 352
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;->subtitle:Landroid/widget/TextView;

    const p2, 0x7f0a05fa

    .line 353
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList$ViewHolder;->rowDivider:Landroid/view/View;

    .line 354
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method
