.class Landroidx/slice/widget/RowView$3;
.super Ljava/lang/Object;
.source "RowView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/RowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/RowView;


# direct methods
.method constructor <init>(Landroidx/slice/widget/RowView;)V
    .registers 2

    .line 1052
    iput-object p1, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 9

    .line 1055
    iget-object p1, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    iget p3, p1, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    add-int/2addr p2, p3

    iput p2, p1, Landroidx/slice/widget/RowView;->mRangeValue:I

    .line 1056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 1057
    iget-object p3, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    iget-wide v0, p3, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0xc8

    if-eqz v2, :cond_2c

    sub-long/2addr p1, v0

    cmp-long p1, p1, v3

    if-lez p1, :cond_2c

    const/4 p1, 0x0

    .line 1058
    iput-boolean p1, p3, Landroidx/slice/widget/RowView;->mRangeUpdaterRunning:Z

    .line 1059
    iget-object p1, p3, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    iget-object p2, p3, Landroidx/slice/widget/RowView;->mRangeUpdater:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1060
    iget-object p0, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->sendSliderValue()V

    goto :goto_3c

    .line 1061
    :cond_2c
    iget-object p0, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    iget-boolean p1, p0, Landroidx/slice/widget/RowView;->mRangeUpdaterRunning:Z

    if-nez p1, :cond_3c

    const/4 p1, 0x1

    .line 1062
    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mRangeUpdaterRunning:Z

    .line 1063
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/slice/widget/RowView;->mRangeUpdater:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3c
    :goto_3c
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 1069
    iget-object p0, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    .line 1074
    iget-object v0, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    .line 1075
    iget-boolean v2, v0, Landroidx/slice/widget/RowView;->mRangeUpdaterRunning:Z

    if-nez v2, :cond_d

    iget-boolean v0, v0, Landroidx/slice/widget/RowView;->mRangeHasPendingUpdate:Z

    if-eqz v0, :cond_2a

    .line 1076
    :cond_d
    iget-object v0, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    iput-boolean v1, v0, Landroidx/slice/widget/RowView;->mRangeUpdaterRunning:Z

    .line 1077
    iput-boolean v1, v0, Landroidx/slice/widget/RowView;->mRangeHasPendingUpdate:Z

    .line 1078
    iget-object v1, v0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Landroidx/slice/widget/RowView;->mRangeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1079
    iget-object v0, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object p0, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    iget v1, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    add-int/2addr p1, v1

    iput p1, v0, Landroidx/slice/widget/RowView;->mRangeValue:I

    .line 1080
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->sendSliderValue()V

    :cond_2a
    return-void
.end method
