.class public Lcom/android/systemui/statusbar/NotificationHeaderUtil;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;,
        Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;
    }
.end annotation


# static fields
.field private static final mGreyApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

.field private static final sGreyComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

.field private static final sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

.field private static final sIconVisibilityComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

.field private static final sTextViewComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

.field private static final sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;


# instance fields
.field private final mComparators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomPaddingBottom:I

.field private mCustomPaddingLeft:I

.field private mCustomPaddingRight:I

.field private mCustomPaddingTop:I

.field private final mDividers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationHeaderMargin:I

.field private final mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;-><init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sTextViewComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;-><init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconVisibilityComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sGreyComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mGreyApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 9

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 119
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    sget-object v3, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    sget-object v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconVisibilityComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    sget-object v5, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    const v2, 0x1020006

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    sget-object v3, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sIconExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    sget-object v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sGreyComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;

    sget-object v5, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mGreyApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    const v2, 0x102036c

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    new-instance v4, Lcom/android/systemui/statusbar/NotificationHeaderUtil$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$5;-><init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil;)V

    sget-object v5, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    const v2, 0x10203c9

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const v1, 0x10201bb

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->forTextView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mComparators:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const v1, 0x10202b1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->forTextView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    const v0, 0x10202b2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mDividers:Ljava/util/HashSet;

    const p1, 0x10202b4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$300()Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sTextViewComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->sVisibilityApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    return-object v0
.end method

.method private applyFlyme(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .registers 7

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    .line 424
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 428
    :cond_9
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->applyToViewFlyme(ZLandroid/view/View;)V

    .line 429
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->applyToViewFlyme(ZLandroid/view/View;)V

    .line 430
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 431
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isCustomNotification(Landroid/view/View;Landroid/service/notification/StatusBarNotification;Z)Z

    move-result v2

    if-nez v2, :cond_50

    .line 432
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isCustomNotification(Landroid/view/View;Landroid/service/notification/StatusBarNotification;Z)Z

    move-result v2

    if-nez v2, :cond_50

    .line 433
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->isCustomNotification(Landroid/view/View;Landroid/service/notification/StatusBarNotification;Z)Z

    move-result v1

    if-eqz v1, :cond_4f

    goto :goto_50

    :cond_4f
    move v0, v3

    .line 434
    :cond_50
    :goto_50
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->updateCustomNotificationPadding(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZ)V

    return-void
.end method

.method private applyToViewFlyme(ZLandroid/view/View;)V
    .registers 10

    if-eqz p2, :cond_63

    const v0, 0x102036c

    .line 472
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 473
    instance-of v1, v0, Landroid/view/NotificationHeaderView;

    if-eqz v1, :cond_63

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    const/16 v2, 0x8

    goto :goto_16

    :cond_15
    move v2, v1

    .line 474
    :goto_16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x102045e

    .line 476
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_63

    .line 477
    instance-of v0, p2, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_63

    .line 479
    check-cast p2, Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    :goto_2c
    if-ge v1, v0, :cond_63

    .line 481
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 482
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 483
    sget v4, Lcom/android/systemui/R$id;->notification_template_content_top_margin:I

    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_51

    .line 485
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 486
    sget v5, Lcom/android/systemui/R$id;->notification_template_content_top_margin:I

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 488
    :cond_51
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz p1, :cond_5e

    .line 489
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mNotificationHeaderMargin:I

    sub-int/2addr v2, v4

    :cond_5e
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_63
    return-void
.end method

.method private updateCustomNotificationPadding(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZ)V
    .registers 7

    if-eqz p3, :cond_7e

    .line 439
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p2, :cond_4c

    .line 441
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 442
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_21

    .line 443
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object p2

    iget p3, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingLeft:I

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingTop:I

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingRight:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingBottom:I

    invoke-virtual {p2, p3, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 446
    :cond_21
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_36

    .line 447
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object p2

    iget p3, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingLeft:I

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingTop:I

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingRight:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingBottom:I

    invoke-virtual {p2, p3, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 450
    :cond_36
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_7e

    .line 451
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingLeft:I

    iget p3, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingTop:I

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingRight:I

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingBottom:I

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_7e

    .line 455
    :cond_4c
    iget p2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingLeft:I

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingTop:I

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingRight:I

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingBottom:I

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 457
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_64

    .line 458
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p3, p3, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 460
    :cond_64
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_71

    .line 461
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p3, p3, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 463
    :cond_71
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_7e

    .line 464
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p3, p3, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    :cond_7e
    :goto_7e
    return-void
.end method

.method public static updateHeaderIconAndText(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/view/NotificationHeaderView;)V
    .registers 7

    .line 511
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_94

    if-nez p2, :cond_a

    goto/16 :goto_94

    .line 514
    :cond_a
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x1020006

    .line 515
    invoke-virtual {p2, v2}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 516
    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isShowLargeIconOnHeader(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-nez v3, :cond_55

    .line 517
    invoke-virtual {v0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 518
    invoke-virtual {v0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_6a

    .line 520
    :cond_31
    iget-object v0, v0, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    iget v3, v0, Landroid/app/NotificationExt;->notificationIcon:I

    if-eqz v3, :cond_3b

    .line 521
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6a

    .line 522
    :cond_3b
    iget-object v0, v0, Landroid/app/NotificationExt;->notificationBitmapIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_43

    .line 523
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6a

    .line 525
    :cond_43
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 526
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_6a

    .line 527
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6a

    .line 532
    :cond_55
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 533
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_67

    instance-of v3, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v3, :cond_6a

    .line 534
    :cond_67
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6a
    :goto_6a
    const v0, 0x10201bb

    .line 538
    invoke-virtual {p2, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 539
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.meizu.cloud"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 540
    :cond_89
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p1

    invoke-static {p0, v1, p1}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 541
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_94
    :goto_94
    return-void
.end method


# virtual methods
.method public initDimens(Landroid/content/Context;)V
    .registers 4

    .line 497
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mNotificationHeaderMargin:I

    .line 499
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_background_custom_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingLeft:I

    .line 501
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_background_custom_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingTop:I

    .line 503
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_background_custom_padding_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingRight:I

    .line 505
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->notification_background_custom_padding_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mCustomPaddingBottom:I

    return-void
.end method

.method public restoreNotificationHeaderFlyme(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 3

    const/4 v0, 0x1

    .line 419
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->applyFlyme(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    return-void
.end method

.method public updateChildrenHeaderAppearanceFlyme()V
    .registers 5

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x0

    move v2, v1

    .line 412
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 413
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 414
    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->applyFlyme(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    return-void
.end method
