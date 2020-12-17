.class Lcom/meizu/settings/applications/RunningState$ServiceProcessComparator;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceProcessComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/meizu/settings/applications/RunningState$ProcessItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/RunningState;)V
    .registers 2

    .line 721
    iput-object p1, p0, Lcom/meizu/settings/applications/RunningState$ServiceProcessComparator;->this$0:Lcom/meizu/settings/applications/RunningState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/meizu/settings/applications/RunningState$ProcessItem;Lcom/meizu/settings/applications/RunningState$ProcessItem;)I
    .registers 7

    .line 723
    iget v0, p1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v1, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_16

    .line 724
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningState$ServiceProcessComparator;->this$0:Lcom/meizu/settings/applications/RunningState;

    iget p0, p0, Lcom/meizu/settings/applications/RunningState;->mMyUserId:I

    if-ne v0, p0, :cond_f

    return v3

    :cond_f
    if-ne v1, p0, :cond_12

    return v2

    :cond_12
    if-ge v0, v1, :cond_15

    move v2, v3

    :cond_15
    return v2

    .line 728
    :cond_16
    iget-boolean p0, p1, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    iget-boolean v0, p2, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    if-eq p0, v0, :cond_20

    if-eqz p0, :cond_1f

    move v2, v3

    :cond_1f
    return v2

    .line 732
    :cond_20
    iget-boolean p0, p1, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    iget-boolean v0, p2, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    if-eq p0, v0, :cond_2b

    if-eqz p0, :cond_29

    goto :goto_2a

    :cond_29
    move v2, v3

    :goto_2a
    return v2

    .line 736
    :cond_2b
    iget-wide p0, p1, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v0, p2, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    cmp-long p2, p0, v0

    if-eqz p2, :cond_39

    cmp-long p0, p0, v0

    if-lez p0, :cond_38

    move v2, v3

    :cond_38
    return v2

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 721
    check-cast p1, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    check-cast p2, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/applications/RunningState$ServiceProcessComparator;->compare(Lcom/meizu/settings/applications/RunningState$ProcessItem;Lcom/meizu/settings/applications/RunningState$ProcessItem;)I

    move-result p0

    return p0
.end method
