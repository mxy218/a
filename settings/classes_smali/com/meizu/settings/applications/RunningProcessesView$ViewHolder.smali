.class public Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public nextIcon:Landroid/widget/ImageView;

.field public rootView:Landroid/view/View;

.field public size:Landroid/widget/TextView;

.field public uptime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    const v0, 0x7f0a033c

    .line 178
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a04c3

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f0a0205

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v0, 0x7f0a0688

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const v0, 0x7f0a0796

    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const v0, 0x7f0a04dc

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->nextIcon:Landroid/widget/ImageView;

    .line 186
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/meizu/settings/applications/RunningState;Lcom/meizu/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;
    .registers 8

    .line 191
    iget-object p1, p1, Lcom/meizu/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 192
    :try_start_3
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 193
    iget-object v1, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-nez v1, :cond_36

    instance-of v1, p2, Lcom/meizu/settings/applications/RunningState$MergedItem;

    if-eqz v1, :cond_36

    .line 196
    move-object v1, p2

    check-cast v1, Lcom/meizu/settings/applications/RunningState$MergedItem;

    .line 197
    iget-object v1, v1, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    if-eqz v1, :cond_36

    .line 198
    move-object v1, p2

    check-cast v1, Lcom/meizu/settings/applications/RunningState$MergedItem;

    iget-object v1, v1, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    invoke-virtual {v1, v0}, Lcom/meizu/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 199
    move-object v0, p2

    check-cast v0, Lcom/meizu/settings/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v0, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 200
    move-object v0, p2

    check-cast v0, Lcom/meizu/settings/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v0, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 203
    :cond_36
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    new-instance v0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    invoke-direct {v0}, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;-><init>()V

    .line 205
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    iput-object v1, v0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    .line 206
    iput-object p2, v0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/meizu/settings/applications/RunningState$BaseItem;

    .line 207
    iput-object p0, v0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    .line 208
    iget-wide v1, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mActiveSince:J

    iput-wide v1, v0, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    .line 209
    iget-boolean v1, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v1, :cond_65

    .line 210
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12042a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6c

    .line 212
    :cond_65
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6c
    const/4 v1, 0x0

    .line 214
    iput-object v1, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 218
    iget-object p2, p0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 220
    monitor-exit p1

    return-object v0

    :catchall_80
    move-exception p0

    .line 221
    monitor-exit p1
    :try_end_82
    .catchall {:try_start_3 .. :try_end_82} :catchall_80

    throw p0
.end method
