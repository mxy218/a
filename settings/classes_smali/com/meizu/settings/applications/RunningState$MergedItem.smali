.class Lcom/meizu/settings/applications/RunningState$MergedItem;
.super Lcom/meizu/settings/applications/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MergedItem"
.end annotation


# instance fields
.field final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNumProcesses:I

.field private mLastNumServices:I

.field final mOtherProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

.field final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/RunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field mUser:Lcom/meizu/settings/applications/RunningState$UserState;


# direct methods
.method constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 609
    invoke-direct {p0, v0, p1}, Lcom/meizu/settings/applications/RunningState$BaseItem;-><init>(ZI)V

    .line 602
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    .line 603
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 604
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 606
    iput p1, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    iput p1, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    return-void
.end method

.method private setDescription(Landroid/content/Context;II)V
    .registers 8

    .line 613
    iget v0, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    if-ne v0, p2, :cond_8

    iget v0, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    if-eq v0, p3, :cond_3b

    .line 614
    :cond_8
    iput p2, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    .line 615
    iput p3, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    const v0, 0x7f121209

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1c

    if-eq p3, v1, :cond_18

    const v0, 0x7f121206

    goto :goto_21

    :cond_18
    const v0, 0x7f121207

    goto :goto_21

    :cond_1c
    if-eq p3, v1, :cond_21

    const v0, 0x7f121208

    .line 624
    :cond_21
    :goto_21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    .line 625
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    .line 624
    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    :cond_3b
    return-void
.end method


# virtual methods
.method public loadIcon(Landroid/content/Context;Lcom/meizu/settings/applications/RunningState;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 705
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mUser:Lcom/meizu/settings/applications/RunningState$UserState;

    if-nez v0, :cond_9

    .line 706
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/applications/RunningState$BaseItem;->loadIcon(Landroid/content/Context;Lcom/meizu/settings/applications/RunningState;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 708
    :cond_9
    iget-object p2, v0, Lcom/meizu/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1d

    .line 709
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    if-nez p1, :cond_18

    .line 711
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mUser:Lcom/meizu/settings/applications/RunningState$UserState;

    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 713
    :cond_18
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1d
    const p0, 0x108048e

    .line 716
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method update(Landroid/content/Context;Z)Z
    .registers 12

    .line 630
    iput-boolean p2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mBackground:Z

    .line 632
    iget-object p2, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mUser:Lcom/meizu/settings/applications/RunningState$UserState;

    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_5b

    .line 638
    iget-object p2, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/meizu/settings/applications/RunningState$MergedItem;

    .line 639
    iget-object p2, p2, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    iget-object p2, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object p2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 640
    iget-object p2, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mUser:Lcom/meizu/settings/applications/RunningState$UserState;

    if-eqz p2, :cond_20

    iget-object p2, p2, Lcom/meizu/settings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    goto :goto_21

    :cond_20
    const/4 p2, 0x0

    :goto_21
    iput-object p2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 641
    iget-object p2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iput-object p2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 644
    iput-wide v2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mActiveSince:J

    move p2, v4

    move v2, p2

    move v3, v2

    .line 645
    :goto_2c
    iget-object v5, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_53

    .line 646
    iget-object v5, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/settings/applications/RunningState$MergedItem;

    .line 647
    iget v6, v5, Lcom/meizu/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    add-int/2addr v2, v6

    .line 648
    iget v6, v5, Lcom/meizu/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    add-int/2addr v3, v6

    .line 649
    iget-wide v5, v5, Lcom/meizu/settings/applications/RunningState$BaseItem;->mActiveSince:J

    cmp-long v7, v5, v0

    if-ltz v7, :cond_50

    iget-wide v7, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mActiveSince:J

    cmp-long v7, v7, v5

    if-gez v7, :cond_50

    .line 650
    iput-wide v5, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mActiveSince:J

    :cond_50
    add-int/lit8 p2, p2, 0x1

    goto :goto_2c

    .line 653
    :cond_53
    iget-boolean p2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-nez p2, :cond_a8

    .line 654
    invoke-direct {p0, p1, v2, v3}, Lcom/meizu/settings/applications/RunningState$MergedItem;->setDescription(Landroid/content/Context;II)V

    goto :goto_a8

    .line 657
    :cond_5b
    iget-object p2, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    iget-object v5, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v5, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 658
    iget-object v5, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 659
    iget-object v5, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iput-object v5, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 661
    iget-boolean v5, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-nez v5, :cond_84

    .line 662
    iget p2, p2, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez p2, :cond_73

    const/4 p2, 0x1

    goto :goto_74

    :cond_73
    move p2, v4

    :goto_74
    iget-object v5, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr p2, v5

    iget-object v5, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 663
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 662
    invoke-direct {p0, p1, p2, v5}, Lcom/meizu/settings/applications/RunningState$MergedItem;->setDescription(Landroid/content/Context;II)V

    .line 666
    :cond_84
    iput-wide v2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mActiveSince:J

    move p1, v4

    .line 667
    :goto_87
    iget-object p2, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_a8

    .line 668
    iget-object p2, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/meizu/settings/applications/RunningState$ServiceItem;

    .line 669
    iget-wide v2, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mActiveSince:J

    cmp-long p2, v2, v0

    if-ltz p2, :cond_a5

    iget-wide v5, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mActiveSince:J

    cmp-long p2, v5, v2

    if-gez p2, :cond_a5

    .line 670
    iput-wide v2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mActiveSince:J

    :cond_a5
    add-int/lit8 p1, p1, 0x1

    goto :goto_87

    :cond_a8
    :goto_a8
    return v4
.end method

.method updateSize(Landroid/content/Context;)Z
    .registers 9

    .line 679
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mUser:Lcom/meizu/settings/applications/RunningState$UserState;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    const-wide/16 v2, 0x0

    .line 680
    iput-wide v2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSize:J

    move v0, v1

    .line 681
    :goto_a
    iget-object v2, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_48

    .line 682
    iget-object v2, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/RunningState$MergedItem;

    .line 683
    invoke-virtual {v2, p1}, Lcom/meizu/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 684
    iget-wide v3, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSize:J

    iget-wide v5, v2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSize:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSize:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 687
    :cond_27
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    iget-wide v2, v0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSize:J

    iput-wide v2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSize:J

    move v0, v1

    .line 688
    :goto_2e
    iget-object v2, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_48

    .line 689
    iget-wide v2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSize:J

    iget-object v4, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    iget-wide v4, v4, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSize:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSize:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 692
    :cond_48
    iget-wide v2, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSize:J

    invoke-static {p1, v2, v3}, Lcom/meizu/settings/utils/MzUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 694
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 695
    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    :cond_58
    return v1
.end method
