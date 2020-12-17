.class final Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;
.super Ljava/lang/Object;
.source "ZenModeTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ZenModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZenModeDetailAdapter"
.end annotation


# instance fields
.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ZenModeTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/ZenModeTile;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ZenModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/ZenModeTile;Lcom/android/systemui/qs/tiles/ZenModeTile$1;)V
    .registers 3

    .line 127
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/ZenModeTile;)V

    return-void
.end method

.method private updateItems()V
    .registers 14

    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_5

    return-void

    .line 187
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ZenModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ZenModeTile;->access$200(Lcom/android/systemui/qs/tiles/ZenModeTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getSelectedTimerIndex()I

    move-result v1

    .line 190
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ZenModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ZenModeTile;->access$500(Lcom/android/systemui/qs/tiles/ZenModeTile;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateItems:mCurrentTimerIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ZenModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ZenModeTile;->access$600(Lcom/android/systemui/qs/tiles/ZenModeTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "android"

    const-string v5, "plurals"

    const-string v6, "duration_minutes_shortest"

    .line 194
    invoke-virtual {v2, v6, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/16 v9, 0x1e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v2, v6, v9, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v11

    const-string v6, "duration_hours_shortest"

    .line 195
    invoke-virtual {v2, v6, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v2, v8, v7, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    .line 196
    invoke-virtual {v2, v6, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-virtual {v2, v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v10

    .line 197
    invoke-virtual {v2, v6, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v11

    invoke-virtual {v2, v4, v6, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x4

    sget v5, Lcom/android/systemui/R$string;->mz_zenmode_time_always:I

    .line 198
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    move v2, v11

    .line 200
    :goto_9c
    array-length v4, v3

    if-ge v2, v4, :cond_bb

    .line 201
    new-instance v4, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v4}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    .line 202
    aget-object v5, v3, v2

    iput-object v5, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    if-ne v1, v2, :cond_ac

    move v5, v7

    goto :goto_ad

    :cond_ac
    move v5, v11

    .line 204
    :goto_ad
    iput-boolean v5, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    .line 205
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    .line 206
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9c

    .line 208
    :cond_bb
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 156
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    .line 157
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string p2, "ZenMode"

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;->updateItems()V

    const/4 p1, 0x1

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;->setItemsVisible(Z)V

    .line 161
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x95

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .registers 3

    .line 166
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.android.settings"

    const-string v1, "com.meizu.settings.MzSettingsActivity$DoNotDisturbActivity"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ZenModeTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ZenModeTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ZenModeTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/ZenModeTile;->access$400(Lcom/android/systemui/qs/tiles/ZenModeTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .registers 4

    if-eqz p1, :cond_44

    .line 132
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v0, :cond_7

    goto :goto_44

    .line 133
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ZenModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ZenModeTile;->access$200(Lcom/android/systemui/qs/tiles/ZenModeTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZenMode(I)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ZenModeTile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    .line 135
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/ZenModeTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/ZenModeTile;->access$300(Lcom/android/systemui/qs/tiles/ZenModeTile;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetailItemClick: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mCurrentTimerIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    :goto_44
    return-void
.end method

.method public setItemsVisible(Z)V
    .registers 2

    .line 181
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$ZenModeDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez p0, :cond_5

    return-void

    .line 182
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItemsVisible(Z)V

    return-void
.end method

.method public setToggleState(Z)V
    .registers 2

    return-void
.end method
