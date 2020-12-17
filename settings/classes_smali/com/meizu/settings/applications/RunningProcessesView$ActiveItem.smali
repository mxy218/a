.class public Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveItem"
.end annotation


# instance fields
.field mFirstRunTime:J

.field mHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

.field mItem:Lcom/meizu/settings/applications/RunningState$BaseItem;

.field mRootView:Landroid/view/View;

.field mSetBackground:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateIcon(Landroid/content/Context;)V
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    if-eqz v0, :cond_4c

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/meizu/settings/applications/RunningState$BaseItem;

    if-eqz v0, :cond_4c

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v0, :cond_4c

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_4c

    .line 153
    invoke-static {p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object p1

    .line 154
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/meizu/settings/applications/RunningState$BaseItem;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RunningProcessesView:updateicon pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/meizu/settings/applications/RunningState$BaseItem;

    iget-object v1, v1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " d = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    .line 157
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_51

    :cond_4c
    const-string p0, "RunningProcessesView:updateicon faild"

    .line 159
    invoke-static {p0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    :goto_51
    return-void
.end method

.method updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .registers 11

    .line 103
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/meizu/settings/applications/RunningState$BaseItem;

    instance-of v1, v0, Lcom/meizu/settings/applications/RunningState$ServiceItem;

    const/4 v2, 0x1

    const-string v3, ""

    if-eqz v1, :cond_e

    .line 106
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    goto :goto_47

    .line 109
    :cond_e
    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    move-object v0, v3

    .line 110
    :goto_14
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/meizu/settings/applications/RunningState$BaseItem;

    iget-object v1, v1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 111
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/meizu/settings/applications/RunningState$BaseItem;

    iput-object v0, v1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, v1, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_29
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/meizu/settings/applications/RunningState$BaseItem;

    iget-boolean v1, v0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v1, :cond_3d

    .line 117
    iget-boolean v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mSetBackground:Z

    if-nez v0, :cond_46

    .line 118
    iput-boolean v2, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mSetBackground:Z

    .line 119
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_46

    .line 121
    :cond_3d
    instance-of v0, v0, Lcom/meizu/settings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_46

    .line 124
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    goto :goto_47

    :cond_46
    :goto_46
    const/4 v0, 0x0

    :goto_47
    if-eqz v0, :cond_8b

    const/4 v1, 0x0

    .line 129
    iput-boolean v1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mSetBackground:Z

    .line 130
    iget-wide v4, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_66

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide p0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    sub-long/2addr v1, p0

    const-wide/16 p0, 0x3e8

    div-long/2addr v1, p0

    .line 133
    invoke-static {p2, v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8b

    .line 137
    :cond_66
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/meizu/settings/applications/RunningState$BaseItem;

    instance-of p2, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;

    if-eqz p2, :cond_77

    .line 138
    check-cast p0, Lcom/meizu/settings/applications/RunningState$MergedItem;

    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_77

    move v1, v2

    :cond_77
    if-eqz v1, :cond_88

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f12135c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8b

    .line 144
    :cond_88
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8b
    :goto_8b
    return-void
.end method
